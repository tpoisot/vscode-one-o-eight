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

    theme_json = JSON.parse(render(template, template_data(theme)))
    theme_output =
        joinpath(@__DIR__, "themes", replace(lowercase(theme["shortcode"]), " " => "-") * "-color-theme.json")
    open(theme_output, "w") do json_file
        return JSON.print(json_file, theme_json, 4)
    end

    cardmaker(theme)
end