using Colors
using JSON
using Mustache

include("template.jl")

for file in [replace(t, ".json" => "") for t in readdir("themes")]

    theme = JSON.parsefile("themes/$(file).json")

    # Structure colors
    fg = parse(Colorant, theme["foreground"])
    bg = parse(Colorant, theme["background"])

    # Structure gradient
    gr = range(bg, fg, length=7)[2:6]

    # UI gradient
    ui_w = theme["type"] == "light" ? 0.55 : 1.8
    ui_endpoint = convert(HSL, bg)
    ui_endpoint = convert(RGB, HSL(ui_endpoint.h, ui_endpoint.s, ui_w * ui_endpoint.l))
    ui = range(bg, convert(typeof(bg), ui_endpoint), length=6)[2:6]
    #(theme["type"] == "dark") && reverse!(ui)

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
        c1 c2 c3 c4 c5;
        s1 s2 s3 s4 s5;
        gr[1] gr[2] gr[3] gr[4] gr[5];
        ui[1] ui[2] ui[3] ui[4] ui[5];
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
    open("../themes/$(file)-color-theme.json", "w") do f
        JSON.print(f, theme_json, 4)
    end
end