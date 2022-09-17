using Colors
using JSON
using Mustache
using Luxor

# Load the main Mustache template
include(joinpath(@__DIR__, "libs", "template.jl"))

# Read the raw JSON scheme files
theme_files = readdir(joinpath("libs", "themes"); join=true)

# Create the path to store the compiled files
ispath("themes") || mkpath("themes")
ispath("cards") || mkpath("cards")

# Loop across themes
for theme_file in theme_files

    @info "Rendering $(theme_file)"

    theme = JSON.parsefile(theme_file)

    # Structure colors
    fg = parse(Colorant, theme["foreground"])
    bg = parse(Colorant, theme["background"])

    # Structure gradient
    gr = range(bg, fg, length=15)[10:14]

    # UI gradient
    ui_w = theme["type"] == "light" ? 0.6 : 1.7
    ui_endpoint = convert(HSL, bg)
    ui_endpoint = convert(RGB, HSL(ui_endpoint.h, ui_endpoint.s, ui_w * ui_endpoint.l))
    ui = range(bg, convert(typeof(bg), ui_endpoint), length=6)[2:6]

    # Main colors
    c1 = parse(Colorant, theme["c1"])
    c3 = parse(Colorant, theme["c3"])
    c5 = parse(Colorant, theme["c5"])

    # If themes only specify the odd colors, the even ones are considered to be their midpoints
    c2 = haskey(theme, "c2") ? parse(Colorant, theme["c2"]) : weighted_color_mean(0.5, c1, c3)
    c4 = haskey(theme, "c4") ? parse(Colorant, theme["c4"]) : weighted_color_mean(0.5, c2, c5)

    # Subtle colors
    w = 0.8
    s1 = weighted_color_mean(w, c1, bg)
    s2 = weighted_color_mean(w, c2, bg)
    s3 = weighted_color_mean(w, c3, bg)
    s4 = weighted_color_mean(w, c4, bg)
    s5 = weighted_color_mean(w, c5, bg)

    # Theme
    all_colors = [
        c1 c2 c3 c4 c5
        s1 s2 s3 s4 s5
        gr[1] gr[2] gr[3] gr[4] gr[5]
        ui[1] ui[2] ui[3] ui[4] ui[5]
    ]

    # Theme dictionary
    td = Dict(
        "name" => theme["name"],
        "type" => theme["type"],
        "foreground" => "#$(hex(fg))",
        "background" => "#$(hex(bg))",
        "c1" => "#$(hex(c1))",
        "c2" => "#$(hex(c2))",
        "c3" => "#$(hex(c3))",
        "c4" => "#$(hex(c4))",
        "c5" => "#$(hex(c5))",
        "s1" => "#$(hex(s1))",
        "s2" => "#$(hex(s2))",
        "s3" => "#$(hex(s3))",
        "s4" => "#$(hex(s4))",
        "s5" => "#$(hex(s5))"
    )

    for i in eachindex(gr)
        td["g$(i)"] = "#$(hex(gr[i]))"
        td["u$(i)"] = "#$(hex(ui[i]))"
    end

    theme_json = JSON.parse(render(template, td))
    theme_output = replace(theme_file, r"libs/themes/(\w+).json" => s"themes/\1-color-theme.json")
    open(theme_output, "w") do f
        JSON.print(f, theme_json, 4)
    end

    # Make the demo card

    theme_name = replace(theme_file, r"libs/themes/(\w+).json" => s"\1")
    Drawing(800, 360, replace(theme_file, r"libs/themes/(\w+).json" => s"cards/\1.png"))
    fontsize(18)
    fontface("MonoLisa")
    background(theme["background"])

    fontsize(24)
    setcolor(theme["foreground"])
    text(titlecase(theme_name) * " $(theme["foreground"]) / $(theme["background"])", Point(20, 20), halign=:left, valign=:top)

    fontsize(20)

    c = [c1, c2, c3, c4, c5]
    s = [s1, s2, s3, s4, s5]

    for (i, col) in enumerate(c)
        setcolor(col)
        text("#$(hex(col))", Point(20 + (i - 1) * 150, 120), halign=:left, valign=:top)
    end
    for (i, col) in enumerate(s)
        setcolor(col)
        text("#$(hex(col))", Point(20 + (i - 1) * 150, 150), halign=:left, valign=:top)
    end
    for (i, col) in enumerate(gr)
        setcolor(col)
        text("#$(hex(col))", Point(20 + (i - 1) * 150, 180), halign=:left, valign=:top)
    end

    fontsize(24)
    setcolor(theme["foreground"])
    text("UI Colors", Point(20, 260), halign=:left, valign=:top)

    for ui_index in axes(ui, 1)
        setcolor(ui[ui_index])
        rect(Point((800 / 5) * (ui_index - 1), 320), 800 / 5, 40, action=:fill)
    end

    finish()
    preview()
end
