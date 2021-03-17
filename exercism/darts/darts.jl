function score(x::Real, y::Real)
    dist = √(x^2 + y^2)
    if dist ≤  1.0;    return 10;    end
    if dist ≤  5.0;    return  5;    end
    if dist ≤ 10.0;    return  1;    end
    return 0
end