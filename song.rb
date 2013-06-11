#!/usr/bin/ruby
# encoding: utf-8

def englishNumber number
  if number < 0
    return '負でない数を入力して下さい'
  end
  if number == 0
    return 'zero'
  end
  numString = ''

  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']


  left = number

  digit_name = [' trillion',' billion',' milion', ' thousand', ' hundred']
  digit_number = [1000000000000 ,1000000000, 1000000, 1000, 100]

  pointer = 0
  while pointer < digit_name.length  # 配列の要素数を取得
      right = left / digit_number[pointer]
      left = left - right * digit_number[pointer]

      if right > 0
         milion = englishNumber right
         numString = numString + milion + digit_name[pointer]
         if left > 0
           numString = numString + ' '
         end
      end
      pointer += 1
  end

# 10の位
  right = left / 10
  left = left -right * 10
  
  if right > 0
    if((right == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      
      left = 0
    else
      numString = numString + tensPlace[right-1]
    end
    
    if left > 0
      numString = numString + '-'
    end
  end

# 1の位

  right = left
  left = 0

  if right > 0
    numString = numString + onesPlace[right-1]
  end

  numString

end

count = 99

unt = 99
while count != -1
  if (count == 1 or count == 0)  
    puts count.to_s + 'Bottle of beer on the wall'
    puts count.to_s + 'Bottle of beer'
    puts 'Take one down and pass it around'
    count -= 1
  else
    puts count.to_s + 'Bottles of beer on the wall'
    puts count.to_s + 'Bottles of beer'
    puts 'Take one down and pass it around'
    count -= 1
  end 
end

