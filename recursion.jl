"""A countdown function."""
function countdown(n)
    if n ≤ 0
        println("Blastoff!!")
    else
        print(n, " ")
        countdown(n - 1)
    end
end