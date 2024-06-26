function cardmaker(theme)
    Drawing(800, 360, joinpath(pwd(), "cards", lowercase(theme["shortcode"]) * ".png"))

    fontsize(18)

    fontface("Monaspace Neon")
    background(theme["background"])

    fontsize(24)
    setcolor(theme["foreground"])
    text(
        titlecase(theme["name"]) *
        " #$(hex(theme["foreground"])) / #$(hex(theme["background"]))",
        Point(20, 20);
        halign = :left,
        valign = :top,
    )

    fontsize(20)

    c = [theme[c] for c in "c" .* string.(1:5)]
    s = [theme[c] for c in "s" .* string.(1:5)]
    u = [theme[c] for c in "u" .* string.(1:5)]
    g = [theme[c] for c in "g" .* string.(1:3)]

    for (i, col) in enumerate(c)
        setcolor(col)
        text("#$(hex(col))", Point(20 + (i - 1) * 150, 120); halign = :left, valign = :top)
    end
    for (i, col) in enumerate(s)
        setcolor(col)
        text("#$(hex(col))", Point(20 + (i - 1) * 150, 150); halign = :left, valign = :top)
    end
    for (i, col) in enumerate(g)
        setcolor(col)
        text("#$(hex(col))", Point(20 + (i - 1) * 150, 180); halign = :left, valign = :top)
    end

    fontsize(24)
    setcolor(theme["foreground"])
    text("UI Colors", Point(20, 260); halign = :left, valign = :top)

    for ui_index in axes(u, 1)
        setcolor(u[ui_index])
        rect(Point((800 / 5) * (ui_index - 1), 320), 800 / 5, 40; action = :fill)
    end

    finish()
    return preview()
end