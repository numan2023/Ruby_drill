# Q.銀行口座に10万円の預金残高があり、お金を引き出すプログラムを作成
# お金を引き出すwithdrawメソッドを作成
# 手数料110円
# 引き出し金額＋手数料>預金残高の場合、残高不足

def withdraw(balance, amount)
  fee = 110 # 手数料
  # 引き落とし額と残高を表示する、もしくは残高より多く引き落としたら残高不足と表示
  if balance >= (amount + fee)
    balance -= (amount + fee)
    puts "#{amount}円引き落としました。残高は#{balance}円です"
  else
    puts "残高不足です"
  end
end

balance = 100000
puts "いくら引き落としますか？（手数料110円かかります）"
amount = gets.to_i
withdraw(balance, amount)