function to_rna(dna :: AbstractString)
    a = Dict('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
    try
        map(c -> a[c], dna)
    catch e
        isa(e, KeyError) && error("Unknown nucleotide")
        throw(e)
    end
end

