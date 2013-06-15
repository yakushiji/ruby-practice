def full_name
  puts '苗字を入力して下さい'
  last_name = gets.chomp
  puts '名前を入力して下さい'
  first_name = gets.chomp
  first_name + ' ' + last_name
end

def better_number
  puts '好きな数を入力して下さい。'
  num = gets.chomp.to_i
  num + 1
end

puts 'こんにちは' + full_name + 'さん。'
puts 'それよりも' + better_number.to_s + 'の方が運気が向上しますよ。'
