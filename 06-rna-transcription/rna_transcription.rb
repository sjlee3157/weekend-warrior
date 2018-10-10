# Solution for mapping in place

class Complement
  DNA = ['G', 'C', 'T', 'A']
  RNA = ['C', 'G', 'A', 'U']

  def self.of_dna(dna_string)
    complement = dna_string.split("")
    complement.map! do |letter|
        raise ArgumentError unless DNA.include?(letter)
        RNA[DNA.index(letter)]
    end
    return complement.join("")
  end

  def self.of_rna(rna_string)
    complement = rna_string.split("")
    complement.map! do |letter|
        raise ArgumentError unless RNA.include?(letter)
        DNA[RNA.index(letter)]
    end
    return complement.join("")
  end
end

# def self.of_dna(dna_string)
#   complement = dna_string.split("")
#   complement.length.times do |i|
#     raise ArgumentError unless DNA.include?(complement[i])
#     complement[i] = RNA[DNA.index(complement[i])]
#     i += 1
#   end
#   return complement.join("") # Array --> String
# end

# def self.of_rna(rna_string)
#   complement = rna_string.split("")
#   complement.length.times do |i|
#     raise ArgumentError unless RNA.include?(complement[i])
#     complement[i] = DNA[RNA.index(complement[i])]
#     i += 1
#   end
#   return complement.join("") # Array --> String
# end
