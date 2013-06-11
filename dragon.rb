class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10
    @stuffInIntestine = 0  
    puts @name + 'は生まれました。'
  end
  
  def feed
    puts 'あなたは' + @name + 'に食べ物を与えます。'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'あなたは' + @name + 'をトイレに連れて行きます。'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'あなたは' + @name + 'を寝かしつけます。'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + 'はいびきをかいて部屋中煙だらけ。'
      end
      if @asleep
        @asleep = false
        puts @name + 'はゆっくり目を覚ます。'
      end
    end
  end

  def toss
    puts 'あなたは' + @name + 'を空中に投げ上げます。'
    puts '彼はキャハキャハ笑い、あなたの眉毛は焼け焦げた。'
    passageOfTime
  end
  
  def rock
    puts 'あなたは' + @name + 'を優しくゆすります。'
    @asleep = true
    puts '彼は短くうとうと...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...でもやめるとすぐおきちゃう'
    end
  end

  def quit
    puts @name + "を置いて旅立つことにしました"
    exit
  end

  def input_command
    while true
      puts @name + "に何をしますか?"
      puts "b：寝かしつける,、f：えさを与える,、r：優しくゆする"
      puts "t：空中に投げる、w：トイレに連れて行く、q：終了"
      command = gets.chomp.downcase
      case command
      when "b"
        self.putToBed
      when "f"
        self.feed
      when "r"
        self.rock
      when "t"
        self.toss
      when "w"
        self.walk
      when "q"
        self.quit
      else
        puts "やり直してください"
      end
    end
  end
  
  private
  
  def hungry?
    @stuffInIntestine <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly = @stuffInBelly -1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep
        @asleep = false
        puts '彼は突然飛び起きます!!'
      end
      puts @name + 'は餓死にしそう!死に物狂いの彼は"あなた"を食べてしまいました。。'
      exit
    end
    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'おっと' + @name + 'はやっちゃったようです...'
    end
   
    if hungry?
      if @asleep
        @asleep = false
        puts '彼は突然起きます!!'
      end
      puts @name + 'のおなかはゴロゴロ言ってます...'
    end
    
    if poopy?
      if @asleep
        @asleep = false
        puts '彼は突然起きます!'
      end
      puts @name + 'はうんちをしたくて踊っています。'
    end
  end
end

pet = Dragon.new 'Norbert'
pet.input_command 
