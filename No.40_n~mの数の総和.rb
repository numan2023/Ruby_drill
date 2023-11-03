# 与えられた数字n,mについて、n~mまでの数の総和を求めるプログラムを実装

# Q. 要件を満たすsum_numberメソッドの実装
# ・第一仮引数をnとし、第二仮引数をmとすること
# ・n~mまでの数をたし合わせていき、その総和を出力すること
# 例）：n=1,m=5の場合、総和は1+2+3+4+5=11

# 出力例
# sum_number(1,3) → 6 ＜計算内容：1+2+3＞
# sum_number(1,10) → 55 ＜計算内容：1+2+3+4…+10＞
# sum_number(5,15) → 110 ＜計算内容5+6+7+8…+15＞

def sum_number(n, m)
  sum = 0
  (n..m).each do |num|
    sum += sum + num
  end
  puts sum
end

sum_number(1, 10)

# --------------
# 解答

def sum_number(n, m)
  total = 0
  while n <= m
    total = total + n
    n = n + 1
  end
  puts total
end

sum_number(5, 15)
