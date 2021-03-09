"Your optional docstring here"
function distance(s1::AbstractString, s2::AbstractString)
    if length(s1) != length(s2)
        throw(ArgumentError("strings are of different lengths: $(length(s1)) and $(length(s2))"))
    end
    count(cs -> cs[1] != cs[2], zip(s1, s2))
end
