bitcoin_price = 27154.86
trend = 'up'

if bitcoin_price >= 10000 && trend === "down"
    p "You want to sell" 
elsif bitcoin_price >= 9000 && trend === "up"
    p "You want to buy"
elsif trend === "" || trend === "unsure"
    p "Do nothing"
end