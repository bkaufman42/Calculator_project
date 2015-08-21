def calculator(bill, percentage)
  tip = bill * (percentage / 100)
  bill_final = tip + bill
  puts "The tip is $#{tip} and your total bill is $#{bill_final}"
  puts "Would you like to convert this bill to another currency? Please type yes or no."
  decision= gets.upcase.chomp
  if decision == "YES"
    currencies = {
  :EURO => 0.89,
  :YEN => 123.42,
  :FRANC => 0.96,
  :PESO => 16.69,
  :POUND => 0.64
  }
def currency_calculator(bill_final, currencies)
  puts "What currency would you like to convert your USD to?"
  currencies.each_key do |currency|
    puts "#{currency}"
  end
  choice = gets.upcase.chomp

  usd = bill_final

  if choice == "EURO"
    answer = usd * 0.89
  elsif choice == "YEN"
    answer = usd * 123.42
  elsif choice == "FRANC"
    answer = usd * 0.96
  elsif choice == "PESO"
    answer = usd * 16.69
  elsif choice == "POUND"
    answer = usd * 0.64
  else
    puts "NOT VALID INPUT, PLEASE TYPE AGAIN"
    currency_calculator(currencies)
  end
  puts "$#{usd} is equal to #{answer.round(2)} #{choice}s. Thank you for using this application."
end
currency_calculator(bill_final, currencies)
  else
   puts "Thank you for using this application."
  end


end
puts "What is the bill?"
bill = gets.to_f
puts "What percentage do you want to tip?"
percentage = gets.to_f
calculator(bill, percentage)

