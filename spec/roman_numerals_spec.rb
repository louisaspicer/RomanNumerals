require './lib/roman_numerals.rb'

describe RomanNumerals do
  subject(:roman_numerals) {RomanNumerals.new}

  context "return roman numeral when given a number" do
    it "should have an instance of a hash to store letters and numbers" do
      expect(roman_numerals.letters).to be_a(Hash)
    end

    it "should return 'I' when given key 1" do
      expect(roman_numerals.letters[1]).to eq "I"
    end

    it "should return 'V' when given key 5" do
      expect(roman_numerals.letters[5]).to eq "V"
    end

    it "should return 'X' when given key 10" do
      expect(roman_numerals.letters[10]).to eq "X"
    end

    it "should return 'L' when given key 50" do
      expect(roman_numerals.letters[50]).to eq "L"
    end

    it "should return 'C' when given key 100" do
      expect(roman_numerals.letters[100]).to eq "C"
    end

    it "should return 'D' when given key 500" do
      expect(roman_numerals.letters[500]).to eq "D"
    end

    it "should return 'M' when given key 1000" do
      expect(roman_numerals.letters[1000]).to eq "M"
    end
  end

  context "convert number to letter" do

    it "should return III when given 3" do
      expect(roman_numerals.convert(3)).to eq "III"
    end

    it "should return XV when given 15" do
      expect(roman_numerals.convert(15)).to eq "XV"
    end

    it "should return IV when given 4" do
      expect(roman_numerals.convert(4)).to eq "IV"
    end
  end

end

#refactor to convert the number its called on - add to Fixnum?
