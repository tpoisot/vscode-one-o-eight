function cardmaker(theme)
    Drawing(1600, 720, joinpath(pwd(), "cards", replace(lowercase(theme["shortcode"]), " " => "-") * ".png"))

    fontsize(36)

    fontnm = "Monaspace Argon"
    fontface(fontnm)
    background(theme["background"])

    fontsize(48)
    setcolor(theme["foreground"])
    text(
        titlecase(theme["name"]) *
        " #$(hex(theme["foreground"])) / #$(hex(theme["background"]))",
        Point(40, 40);
        halign = :left,
        valign = :top,
    )
    fontsize(40)
    text(
        fontnm,
        Point(40, 100);
        halign = :left,
        valign = :top,
    )

    fontsize(40)

    c = [theme[c] for c in "c" .* string.(1:5)]
    s = [theme[c] for c in "s" .* string.(1:5)]
    u = [theme[c] for c in "u" .* string.(1:5)]
    g = [theme[c] for c in "g" .* string.(1:3)]

    for (i, col) in enumerate(c)
        setcolor(col)
        text("#$(hex(col))", Point(40 + (i - 1) * 300, 240); halign = :left, valign = :top)
    end
    for (i, col) in enumerate(s)
        setcolor(col)
        text("#$(hex(col))", Point(40 + (i - 1) * 300, 300); halign = :left, valign = :top)
    end
    for (i, col) in enumerate(g)
        setcolor(col)
        text("#$(hex(col))", Point(40 + 2(i - 1) * 300, 360); halign = :left, valign = :top)
    end

    fontsize(48)
    setcolor(theme["foreground"])

    for ui_index in axes(u, 1)
        setcolor(u[ui_index])
        rect(Point((1600 / 5) * (ui_index - 1), 550), 1600 / 5, 180; action = :fill)
    end

    finish()
    return preview()
end