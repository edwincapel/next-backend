roman_string = ''

ROMAN_NUMERALS = {
    "(X)" => 10000,
    "(V)" => 5000,
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
}

p "Please enter a number to be converted to ROMAN NUMERALS"
num_to_roman = gets.chomp.to_i

ROMAN_NUMERALS.each do |key,value|
    while num_to_roman >= value
        roman_string += key
        num_to_roman -= value
    end
end   

p roman_string