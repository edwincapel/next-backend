quotes = ["It is better to be feared than loved, if you cannot be both","Being entirely honest with oneself is a good exercise",
"There is only one happiness in this life, to love and be loved", "Life isn't about finding yourself",
"The only true wisdom is in knowing you know nothing"]

random_number = rand(0..quotes.length-1)

p "The quote of the day - \'#{quotes[random_number]}"