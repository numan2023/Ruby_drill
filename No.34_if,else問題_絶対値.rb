# メソッドに3つの整数a b cを与える
# ・「aとbの差が1」または「「aとcの差が1」であり、かつ「bとcとの数値の差が2以上」の場合はTrue
# ・それ以外はFalse
# と出力するメソッドを作る

# close_far(1, 2, 10) → True
# close_far(1, 2, 3) → False
# close_far(4, 1, 3) → True

# 対象となる数値に対して「abs」メソッドを実行すると絶対値を取得することができます。すなわち正の数の場合はそのままですが負の数の場合は符号を取って正の数にした数値が取得できます。
# 実際の使い方は次のようになります。

# num = 5.abs
# #=> 5

# num = (-5).abs
# #=> 5

def close_far(a, b, c)
  x = (a - b).abs
  y = (a - c).abs
  z = (b- c).abs

  if x == 1 && z >= 2
    puts "True"
  elsif y == 1 && z >= 2s
    puts "False"
  else
    puts "False"
  end
end