class RomanNumerals
    ROMAN_NUMERALS = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
                    100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
                    10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

  def self.convert(number)
    roman_numeral = ""
    ROMAN_NUMERALS.each do |k, v|
      #for each key, starting at the first one, input the value
      #that many times. e.g. number = 250
      #once the loop reaches 100, it will do 250/100 = 2, adding "C" 2 times.
      #then each time it subtracts 100(the key) off of the 'number'
      #then it will be left with 50, so when it gets to the 50 key,
      #it can only do it 1 time, so will add "L" to the end once.
      (number / k).times {roman_numeral << v; number = number - k}
    end
    roman_numeral
  end
end
