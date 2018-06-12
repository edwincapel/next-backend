p "FIZZZZBUUZZZZZZ"
p "Please enter a number :"
num = gets.chomp.to_i

if num % 3 == 0 && num % 5 == 0 
    p "FizzBuzz"
elsif num % 3 == 0 && num % 5 != 0
    p "Fizz"
elsif num % 5 == 0 && num % 3 != 0
    p "Buzz"
else
    p "Not divisible by 3 or 5 , your number was #{num}"
end