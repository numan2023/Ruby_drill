対象となる文字列から特定の文字列の数を算出し、その数を出力するプログラム

問題
以下の要件を満たすcount_hiメソッドを実装しましょう。

対象となる文字列の中から、"hi"という特定の文字列の数を取得すること
上記で取得した数を出力すること

出力例：
count_hi('abc hi ho') → 1
count_hi('ABChi hi') → 2
count_hi('hihi') → 2

ヒント
scanメソッドを使用しましょう。

scanメソッド
scanメソッドは、対象の要素から引数で指定した文字列を数え、配列として返すメソッドです。

1
2
"foobarbazfoobarbaz".scan("ba")
=> ["ba", "ba", "ba", "ba"]

-------------------------------------

def count_hi(str)
  puts str.scan("hi").length
end

# 呼び出し例（引数には対象となる文字列を指定します）
count_hi('abc hi ho')

-------------------------------------