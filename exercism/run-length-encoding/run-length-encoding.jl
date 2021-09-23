function encode(in_str :: AbstractString)
    out_str = ""
    consecutive_count = 1
    current_consec_char = in_str[1]

    for i in 2:length(in_str)
        c = in_str[i]

        if current_consec_char == ""
            return ""
        end

        if current_consec_char == c
            consecutive_count += 1
        end

        if current_consec_char != c || i == length(in_str)
          out_str *= string(consecutive_count == 1 ? "" : consecutive_count, current_consec_char)

          if i != length(in_str)
            consecutive_count = 1
            current_consec_char = c
          end

          if current_consec_char != c && i == length(in_str)
            out_str *= c
          end
        end
    end
    return out_str
end

function decode(in_str :: AbstractString)
# coming soon...
end