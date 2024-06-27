using Colors
using JSON
using Mustache
using Luxor

# Create the path to store the compiled files
ispath("themes") || mkpath("themes")
ispath("cards") || mkpath("cards")

# Load the main Mustache template
include(joinpath(@__DIR__, "lib", "template.jl"))

# Load the color functions
include(joinpath(@__DIR__, "lib", "colorspace.jl"))

# Load the theme making functions
include(joinpath(@__DIR__, "lib", "thememaker.jl"))

# Load the theme making functions
include(joinpath(@__DIR__, "lib", "cardmaker.jl"))

# Read the raw JSON scheme files
theme_files = readdir(joinpath(@__DIR__, "schemes"); join = true)

for theme_file in theme_files
    # Read the theme as a JSON file
    theme = JSON.parsefile(theme_file)

    colorize!(theme)
    structure!(theme)
    ui!(theme)
    accents!(theme)

    # Info messages
    println("#### Checking contrast for theme $(theme["name"])")
    for color_idx in 1:5
        c_contrast = contrast(theme["background"], theme["c$(color_idx)"])
        s_contrast = contrast(theme["background"], theme["s$(color_idx)"])
        if c_contrast < 7.0
            println("\t /!\\ c$(color_idx) fails to meet WCAG2.1 AAA")
        end
        if s_contrast < 4.5
            println("\t /!\\ s$(color_idx) fails to meet WCAG2.1 AA")
        end
    end

    rendered = render(template, template_data(theme))
    theme_json = JSON.parse(rendered)
    theme_output =
        joinpath(@__DIR__, "themes", replace(lowercase(theme["shortcode"]), " " => "-") * "-color-theme.json")
    open(theme_output, "w") do json_file
        return JSON.print(json_file, theme_json, 4)
    end

    cardmaker(theme)
end