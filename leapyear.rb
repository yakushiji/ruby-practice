puts '開始の年を入力して下さい。'
start = gets.chomp.to_i
puts '終わりの年を入力して下さい。'
stop = gets.chomp.to_i

puts start.to_s + '年から' + stop.to_s + '年までの閏年一覧です。'
year = start

while year <= stop
  if(year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
  puts year
  end
  year += 1
end
