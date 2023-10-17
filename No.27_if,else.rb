# 入力した正の整数が10の倍数から差が2以内である時、True or Flase

# near_ten(12)→True
# near_ten(17)→False
# near_ten(19)→True

def near_ten(num)
  quotient = num % 10
  if quotient <= 2 || quotient >= 8
    puts "True"
  else
    puts "False"
  end
end

near_ten(12)
near_ten(17)
near_ten(19)