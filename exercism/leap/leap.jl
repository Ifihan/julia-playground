"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""

function is_leap_year(year)
    if year % 4 == 0 && year % 100 != 0
        return true
    elseif year % 4 == 0 && year % 400 == 0
        return true
    else
        return false
    end
end

# function is_leap_year(year)
#     if year % 4 == 0
#         if year % 100 == 0
#             return year % 400 == 0
#         else
#             return true
#         end
#     else
#         return false
#     end
# end