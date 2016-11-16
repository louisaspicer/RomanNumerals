class RomanNumerals

LETTERS = {
   1000 => "M",
   500 => "D",
   100 => "C",
   50 => "L",
   10 => "X",
   9 => "VX",
   5 => "V",
   4 => "IV",
   1 => "I"
 }

attr_reader :letters

def initialize
@letters = LETTERS
end

def convert(number)
  roman_numerals = ""
  @letters.each do |k, v|
    (number / k).times do
      roman_numerals << v
      number -= k
    end
  end
  roman_numerals
end

end
