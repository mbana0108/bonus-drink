class BonusDrink
  def self.total_count_for(initial_drinks)
    total_drinks = initial_drinks
    empty_bottles = initial_drinks

    while empty_bottles >= 3
      new_drinks = empty_bottles / 3
      total_drinks += new_drinks
      empty_bottles = new_drinks + (empty_bottles % 3)
    end

    total_drinks
  end
end

def main
  # ユーザーに購入する飲み物の本数を入力してもらう
  print "How many drinks? "
  num = gets.to_i

  # 飲める合計の本数を計算
  total_drinks = BonusDrink.total_count_for(num)

  puts "Total drinks you can drink: #{total_drinks}\n\n"
end

main if __FILE__ == $0
