def calculator(bill, percentage)
  tip = bill * (percentage / 100)
  bill_final = tip + bill
  puts "The tip is $#{tip} and your total bill is $#{bill_final}"
end
puts "What is the bill?"
bill = gets.to_f
puts "What percentage do you want to tip?"
percentage = gets.to_f
calculator(bill, percentage)
