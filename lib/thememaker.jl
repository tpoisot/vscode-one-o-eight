function colorize!(theme)
    theme["shortcode"] = replace(theme["name"], "One O Eight " => "")
    for key in ["foreground", "background", "c1", "c2", "c3", "c4", "c5"]
        if haskey(theme, key)
            theme[key] = parse(Colorant, theme[key])
        end
    end
    return theme
end

function structure!(theme)
    gr = range(theme["background"], theme["foreground"]; length = 12)[8:1:10]
    for (i, g) in enumerate(gr)
        theme["g$(i)"] = g
    end
    return theme
end

function ui!(theme)
    idx = isequal("light")(theme["type"]) ? (4:8) : (3:7)
    endcolor = weighted_color_mean(0.6, theme["background"], theme["foreground"])
    ui = range(theme["background"], endcolor; length = 9)[idx]
    for (i, u) in enumerate(ui)
        theme["u$(i)"] = u
    end
    return theme
end

function accents!(theme; w = 0.79)
    if ~haskey(theme, "c2")
        theme["c2"] = weighted_color_mean(0.5, theme["c1"], theme["c3"])
    end
    if ~haskey(theme, "c4")
        theme["c4"] = weighted_color_mean(0.5, theme["c3"], theme["c5"])
    end
    for i in 1:5
        theme["s$(i)"] = weighted_color_mean(w, theme["c$(i)"], theme["background"])
    end
    return theme
end

function template_data(theme)
    theme_dictionary = Dict{String, String}(
        "name" => theme["shortcode"],
        "type" => theme["type"],
    )

    for (k, v) in theme
        if typeof(v) <: Color
            theme_dictionary[k] = "#$(hex(v))"
        end
    end

    return theme_dictionary
end