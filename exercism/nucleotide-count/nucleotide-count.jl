"""
count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand :: AbstractString)
    dict = Dict(
        'A' => 0,
        'C' => 0,
        'G' => 0,
        'T' => 0,
    )

    for i in strand
        try
            dict[i] += 1
        catch KeyError
            throw(DomainError("$i is an invalid nucleotide.  Must be A, C, G, or T."))
        end
    end
    dict
end
