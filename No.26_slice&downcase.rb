# 問題
# 2つの文字列の末尾の文字を比較して、一致する場合true, 不一致の場合falseを実装（* 末尾の文字を一部抜き出してきて一致判定させるというよりも文字列がどちらかに完全に含まれているかどうかの判定）
# 大文字小文字でも同一の文字として処理

def end_other(a, b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length
  if b_down.slice(-(a_len)..-1) == a_down || a_down.slice(-(b_len)..-1) == b_down
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
end_other('Hiabc', 'abc')