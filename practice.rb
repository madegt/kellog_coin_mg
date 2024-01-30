# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

#start from zero
total_from_ben=0
total_from_anthony=0
total_from_brian=0
total_from_evan=0
total_to_ben=0
total_to_anthony=0
total_to_brian=0
total_to_evan=0

# Sum all from_users 
blockchain.each do |conditional_sum|
  total_from_ben += conditional_sum["amount"] if conditional_sum["from_user"] == "ben"
end
blockchain.each do |conditional_sum|
  total_from_brian += conditional_sum["amount"] if conditional_sum["from_user"] == "brian"
end
blockchain.each do |conditional_sum|
  total_from_anthony += conditional_sum["amount"] if conditional_sum["from_user"] == "anthony"
end
blockchain.each do |conditional_sum|
  total_from_evan += conditional_sum["amount"] if conditional_sum["from_user"] == "evan"
end

# Sum all to_users 
blockchain.each do |conditional_sum|
  total_to_ben += conditional_sum["amount"] if conditional_sum["to_user"] == "ben"
end
blockchain.each do |conditional_sum|
  total_to_brian += conditional_sum["amount"] if conditional_sum["to_user"] == "brian"
end
blockchain.each do |conditional_sum|
  total_to_anthony += conditional_sum["amount"] if conditional_sum["to_user"] == "anthony"
end
blockchain.each do |conditional_sum|
  total_to_evan += conditional_sum["amount"] if conditional_sum["to_user"] == "evan"
end

#net amounts = to_users - from_users

total_ben=total_to_ben-total_from_ben
total_brian=total_to_brian-total_from_brian
total_anthony=total_to_anthony-total_from_anthony
total_evan=total_to_evan-total_from_evan

puts "Ben's KelloggCoin balance is #{total_ben}"
puts "Brians's KelloggCoin balance is #{total_brian}"
puts "Evans's KelloggCoin balance is #{total_evan}"
puts "Anthony's KelloggCoin balance is #{total_anthony}"


# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
