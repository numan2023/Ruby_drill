問題.1
正の整数を入力します。その整数が、
10の倍数（10,20,30...）からの差が2以内であるときはTrue
それ以外はFalse
と出力するメソッドを作りましょう。

出力例：
near_ten(12)→True
near_ten(17)→False
near_ten(19)→True

-------------------------------------

def near_ten(num)
  quotient = num % 10 # 商
  if quotient <= 2 || quotient >= 8
    puts "True"
  else
    puts "False"
end

near_ten(12)
near_ten(17)
near_ten(19)

-------------------------------------

「10の倍数からの差」を考えるためには、一の位の値に着目します。すなわち、一の位が「0,1,2,8,9」のどれかであれば「10の倍数からの差が2以内」と判断することができます。

したがって、変数quotientに一の位の値を代入し、quotient <= 2 || quotient >= 8で「0,1,2,8,9」のどれかに当てはまるかどうかを確認しています。