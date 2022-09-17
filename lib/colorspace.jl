# Function for relative luminance
function relative_luminance(color)
    correct = (v) -> v <= 0.04045 ? v/12.92 : ((v+0.055)/1.055)^2.4
    return 0.2126*correct(color.r) + 0.7152*correct(color.g) + 0.0722*correct(color.b)
end

# Function for color contrast
function contrast(c1, c2)
    lighter, darker = c1, c2
    if relative_luminance(c1) <= relative_luminance(c2)
        darker, lighter = c1, c2
    end
    return (relative_luminance(lighter) + 0.05) / (relative_luminance(darker) + 0.05)
end