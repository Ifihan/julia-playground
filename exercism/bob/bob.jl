function bob(stimulus :: AbstractString)
    stim = strip(stimulus, [' ', '\t', '\r', '\n'])
    letters = [c for c in stim if isletter(c)] 
    all_caps = all(x->isuppercase(x), letters)

    if isempty(stim)
        return "Fine. Be that way!"
    elseif (length(letters) > 0) & (stim[end] =='?') & all_caps
        return "Calm down, I know what I'm doing!"
    elseif stim[end] =='?'
        return "Sure."
    elseif (length(letters) > 0) & all_caps
        return "Whoa, chill out!"
    else
        return "Whatever."
    end
end
