問題
以下の要件を満たすmissing_charメソッドを実装しましょう。

対象となる文字列からn番目の文字を削除すること
削除された文字以外の文字列を出力すること
雛形
def missing_char(str, n)
  # 処理を記述
end

# 呼び出し例（1つ目の引数には対象となる文字列を、2つ目の引数には対象となる文字列から何番目の文字を削除するのかを指定しましょう）
missing_char('kitten', 1)
出力例：
missing_char('kitten', 1) → 'itten'
missing_char('kitten', 2) → 'ktten'
missing_char('kitten', 4) → 'kiten'

ヒント
slice!メソッドを使用しましょう。

 slice!メソッド
slice!メソッドは、配列や文字列から指定した要素を削除し、削除した後の要素を返すメソッドです。末尾にエクスクラメーションマーク(!)のつくメソッドを破壊的メソッドといいます。これはもとの配列や文字列を変化させるメソッドです。

string = "abcdefg"
string.slice!(2)

puts string
#=> "abdefg"
# 2番目の要素のcが取り除かれている

----------------------------------------

def missing_char(str, n)
  str.slice!(n - 1)
  puts str
end

missing_char('kitten', 1)

----------------------------------------

