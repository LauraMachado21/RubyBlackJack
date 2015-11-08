dealerCards = []
playerCards = []
sumPlayerCards = 0
sumDealerCards = 0

2.times
  dealerCards.push(1+Random.rand(13))
  playerCards.push(1+Random.rand(13))

dealerCards.each {|a| sumDealerCards+=a}
playerCards.each {|a| sumPlayerCards+=a}

puts "The sum of your cards is: #{sumPlayerCards}\n"
puts "Continue? (h)"

userHit = gets.chomp

while (userHit == 'h')
  card = Random.rand(13)+1
  playerCards.push(card)
  sumPlayerCards+=card

  puts "Your card is: #{card}"
  puts "The sum of your cards is: #{sumPlayerCards}\n"

  if sumPlayerCards>21
    break
  else
    puts "Continue? (h)"
    userHit = gets.chomp
  end

end

while sumDealerCards <17
  card = Random.rand(13)+1
  dealerCards.push(card)
  sumDealerCards+=card
end

puts "The dealers sum is: #{sumDealerCards}"

if sumDealerCards > 21 || (sumPlayerCards<=21 && sumPlayerCards > sumDealerCards)
  puts "You win!"
else
  puts "You lose!"
end
