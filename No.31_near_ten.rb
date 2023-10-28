# 条件演算子
# 入力した3桁の正の整数の「百、十、一の位の和」について、10の倍数(0,10,20,30)からの差が、
# ・2以内であるときTrue
# ・それ以外は10の倍数との差は〇〇です"と表示されるようにします。

# near_ten(117)→True
# near_ten(123)→10の倍数との差は4です
# near_ten(111)→10の倍数との差は3です
# 0も10の倍数に含むものとします。

def near_ten(num)
  total = (num/100) + (num/10 % 10) + (num % 10)
  remainder = total % 10
  if remainder <= 2 || remainder >= 8
    puts "True"
  elsif remainder <= 5
    puts "10の倍数との差は#{remainder}です"
  else
    puts "10の倍数との差は#{10 - remainder}です"
  end
end