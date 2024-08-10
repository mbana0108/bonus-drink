def main
    bonus = 0
    sum_drink = 0
    buy_drink = 0
  
    loop do
      # ユーザーに購入する飲み物の本数を入力してもらう
      print "How many drinks?\n"
      num = gets.to_i
  
      # 合計の購入数を更新
      sum_drink += num
  
      # 空き瓶によるボーナスを計算
      bonus = sum_drink / 3
  
      # 飲める合計の本数を計算
      buy_drink = num + bonus
  
      puts "Total drinks #{buy_drink}\n\n"
  
      # プログラムを続けるかどうかをユーザーに尋ねる
      print "continue? y/n\n"
      state = gets.chomp
  
      # "n"が入力されたらループを終了
      break if state == "n"
    end
  
    # 最終的なトータルの飲み物の本数を表示
    puts "Total drinks #{buy_drink}"
  end
  
  main
  