<h1>Less Overthinking</h1>

```ruby
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
```

<h1>In the case of overthinking and overcomplicating things</h1>

```ruby
# ask user for input
puts 'Please enter a number '

#assign user input to variable
num = gets.chomp
modulos = "1"
counter = 0
storedNumbers = []
finalNumeral = ""

#hash to store basic numerals to refer to
basicNumerals = {
  "1" => "I",
  "5" => "V",
  "10" => "X",
  "50" => "L",
  "100" => "C",
  "500" => "D",
  "1000" => "M",
  "5000" => "(V)",
  "10000" => "(X)"
}

#catch if number input by user is more than zero
if num.to_i == 0 || num.count("a-zA-Z") != 0
  p "Please restart and enter a number more than 0"
else
  #while loop to go through each tens,hundred,thousands... and mod it
  #to make life easier Modded_Number - prev(moded number)
  #987 - 87 = 900 ...easier to refrence
  while counter < num.length
    modulos += "0"
    if counter == 0
      #store number into an array
      storedNumbers << num.to_i % modulos.to_i
    elsif counter >=1
      storedNumbers << ((num.to_i % modulos.to_i) - (num.to_i % ((modulos.to_i)/10)))
    end
    counter += 1
  end

  #in reverse , evaluate each number and append it to the roman numeral string
  storedNumbers.reverse.each {
    |x|
    if x.to_i >= 9000 && x.to_i < 10000
        finalNumeral +=  basicNumerals["1000"]
        finalNumeral +=  basicNumerals["10000"]
    elsif x.to_i >= 5000 && x.to_i < 9000
      finalNumeral +=  basicNumerals["5000"]
        (1..((x.to_i/1000)-5)).each do |i|
          finalNumeral +=  basicNumerals["1000"]
      end
    elsif x.to_i >= 4000 && x.to_i < 5000
      finalNumeral +=  basicNumerals["1000"]
      finalNumeral +=  basicNumerals["5000"]
    elsif x.to_i >= 1000 && x.to_i < 4000
        (1..(x.to_i/1000)).each do |i|
          finalNumeral +=  basicNumerals["1000"]
        end
    elsif x.to_i >= 900 && x.to_i < 1000
        finalNumeral +=  basicNumerals["100"]
        finalNumeral +=  basicNumerals["1000"]
    elsif x.to_i >= 500 && x.to_i < 900
        finalNumeral +=  basicNumerals["500"]
          (1..((x.to_i/100)-5)).each do |i|
            finalNumeral +=  basicNumerals["100"]
        end
    elsif x.to_i >= 400 && x.to_i < 500
        finalNumeral +=  basicNumerals["100"]
        finalNumeral +=  basicNumerals["500"]
    elsif x.to_i >= 100 && x.to_i < 400
          (1..((x.to_i/100))).each do |i|
            finalNumeral +=  basicNumerals["100"]
          end
    elsif x.to_i >= 90 && x.to_i < 100
        finalNumeral +=  basicNumerals["10"]
        finalNumeral +=  basicNumerals["100"]
    elsif x.to_i >= 50 && x.to_i < 90
        finalNumeral +=  basicNumerals["50"]
          (1..((x.to_i/10)-5)).each do |i|
            finalNumeral +=  basicNumerals["10"]
          end
    elsif x.to_i >= 40 && x.to_i < 50
        finalNumeral +=  basicNumerals["10"]
        finalNumeral +=  basicNumerals["50"]
    elsif x.to_i >= 10 && x.to_i < 40
        (1..((x.to_i/10))).each do |i|
          finalNumeral +=  basicNumerals["10"]
        end
    elsif x.to_i == 9
        finalNumeral +=  basicNumerals["1"]
        finalNumeral +=  basicNumerals["10"]
    elsif x.to_i >= 5 && x.to_i < 9
        finalNumeral +=  basicNumerals["5"]
          (1..((x.to_i)-5)).each do |i|
            finalNumeral +=  basicNumerals["1"]
          end
    elsif x.to_i == 4
        finalNumeral +=  basicNumerals["1"]
        finalNumeral +=  basicNumerals["5"]
    elsif x.to_i >= 1 && x.to_i < 4
        (1..((x.to_i))).each do |i|
          finalNumeral +=  basicNumerals["1"]
        end
    end
  }
  puts "Your number #{num} in Roman days would have been #{finalNumeral}"
end
```