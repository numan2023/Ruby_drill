# Q.
# if文をunlessメソッドに書き換え

# if a + b > 0
#   puts "計算結果は0より大きいです"
# end

# ヒント
# unless
# unlessとはifとは逆で、条件式がfalseの場合に処理が実行されます。
# unlessの詳細は公式リファレンスを確認しましょう。

# ifを使用した場合
# if 条件式
#   条件式がtrueの時に実行する処理
# else
#   条件式がfalseの時に実行する処理
# end

# unlessを使用した場合
# unless 条件式
#   条件式がfalseの時に実行する処理
# else
#   条件式がtrueの時に実行する処理
# end

# -------------

unless a + b <= 0
  puts "計算結果は0より大きいです"
end

