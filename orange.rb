class Orange 
  def initialize
    @tree_height = 1
    @orange_count = 0
    @year = 0
  end
  def height
    puts '樹の高さを調べます'
    puts '木の高さは' + @tree_height.to_s + 'mです'
  end
  
  def oneYearsPasses
    @year += 1
    
    if @year >= 11
      puts '樹は枯れてしましました。'
    exit
    elsif @year <= 10 && @year >= 4
      get_orange
    end
    @tree_height = (@year+1)**2
  end
  def count
    puts '樹になっている見の数を調べます。'
    puts '樹になっている実の数は' + @orange_count.to_s + 'です。'
  end
  def pick
    puts '実をとってみましょう'
    if @orange_count <= 0
      puts '樹に実はなっていません。'
    else
      puts '実がとれました!'
      @orange_count -= 1
    end
  end
  
  private
  
  def get_orange
    fruit = []
    fruit[0] = 1
    fruit[1] = 1
    p_last = @year -4
    p = 0
    while p <= p_last
      fruit[p+2] = fruit[p+1] + fruit[p]
      p += 1
    end
    if @orange_count != 0
      puts 'つけていた実' + @orange_count.to_s + '個が落ちてしまいました。'
    end
    
    @orange_count = fruit[p+1]
      puts '今年は実が' + @orange_count.to_s + '個なりました。'
  end
  
  t = Orange.new
   
  while true
    t.height
    t.count
    t.pick
    t.count
    t.oneYearsPasses
    puts
  end
end

