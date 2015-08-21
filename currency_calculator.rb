currencies = {
  :EURO => 0.89,
  :YEN => 123.42,
  :FRANC => 0.96,
  :PESO => 16.69,
  :POUND => 0.64
  }



def currency_calculator(currencies)
  puts "What currency would you like to convert your USD to?"
  currencies.each_key do |currency|
    puts "#{currency}"
  end
  choice = gets.upcase.chomp
  puts "How much usd would you like to convert?"
  usd = gets.to_f

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
  puts "$#{usd} is equal to #{answer.round(2)} #{choice}s."
end
currency_calculator(currencies)

