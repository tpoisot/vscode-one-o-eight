using Colors
using JSON
using Mustache

include("template.jl")

for file in ["default-light", "default-dark"]

    theme = JSON.parsefile("themes/$(file).json")

    # Structure colors
    fg = parse(Colorant, theme["foreground"])
    bg = parse(Colorant, theme["background"])

    # Structure gradient
    gradient = range(bg, weighted_color_mean(0.6, fg, bg), length=7)

    # Main colors
    c1 = parse(Colorant, theme["c1"])
    c2 = parse(Colorant, theme["c2"])
    c3 = parse(Colorant, theme["c3"])
    c4 = parse(Colorant, theme["c4"])
    c5 = parse(Colorant, theme["c5"])

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
        s1 s2 s3 s4 s5
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

    gr = gradient[2:6]
    for i in eachindex(gr)
        td["g$(i)"] = "#$(hex(gr[i]))"
    end

    theme_json = JSON.parse(render(template, td))
    open("../themes/$(file)-color-theme.json", "w") do f
        JSON.print(f, theme_json, 4)
    end
end