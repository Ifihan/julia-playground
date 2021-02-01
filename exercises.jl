# 3
"""Checks if the sum of two sides of a triangle is greater than one side."""
function istriangle(x, y, z)
    parse(Int64, x); parse(Int64, y); parse(Int64, z)
    if x + y > z || x + z > y || y + z > x 
        println("No")
    else
        println("Yes")
    end
end

function check()
    println("Enter the sides of your triangle a, b, and c:")
    print("a: "); a = readline()
    print("b: "); b = readline()
    print("c: "); c = readline()

    parse(Int64, a)
    parse(Int64, b)
    parse(Int64, c)

    istriangle(a, b, c)
end

check()