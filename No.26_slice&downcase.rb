2つの文字列の末尾の文字を比較して、一致する場合はTrue、一致しない場合はFalseを出力するプログラム

問題
以下の要件を満たすend_otherメソッドを実装しましょう。

メソッドの引数に、任意の2つの文字列を指定する。
引数に指定された2つの文字列のうち、どちらかがもう一方の文字列の末尾にある場合は、Trueを出力する
上記を満たせていない場合は、Falseを出力する
入力された文字が大文字でも小文字でも、同一の文字として処理を行う

出力例
end_other('Hiabc', 'abc') → True
end_other('AbC', 'HiaBc') → True
end_other('abc', 'HaIoBc') → False

ヒント
sliceの範囲指定
範囲を指定して要素を切り取る場合は、以下のように記述して使うことができます。
# 要素を定義
array = "Hiabc"

#配列番号（インデックス番号）の-3から-1の範囲の文字列を切り取る
array.slice(-3..-1)
#=> abc
downcase
downcaseメソッドは、大文字を小文字に変換するメソッドです。
ターミナル
# 大文字を含んだ文字列を定義
irb(main):001:0> name = "Hiabc"
=> "Hiabc"

# downcaseメソッドを使用し、小文字に変換
irb(main):002:0> name.downcase
=> "hiabc"

-------------------------------------

def end_other(a, b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length
  if b_down.slice(-(a_len)..-1) == a_down || a_down.slice(-(b_len)..-1) == b_down # 末尾の文字一致の判定のため、sliceを使用
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
end_other('Hiabc', 'abc')

-------------------------------------

解説
大文字と小文字を区別しないという条件のため、2〜3行目で任意の2つの文字列を小文字に変換しています。

4〜6行目でどちらかの文字列がもう一方の文字列の最後にある場合を区別するための処理を行っています。
slice(-(a_len)..- 1)としているのは、対象の文字列分を切り取るための記述です。

たとえば、以下のようにend_other('Hiabc', 'abc')でメソッドを呼び出し、実行した場合を考えてみましょう。

def end_other(a, b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length
  if b_down.slice(-(a_len)..- 1) == a_down || a_down.slice(-(b_len)..- 1) == b_down
    puts "True"
  else
    puts "False"
  end
end

end_other('Hiabc', 'abc') 
すると、2〜5行目で以下のように処理されます。

a_down = hiabc
b_down = abc
a_len = 5
b_len = 3
続いて6行目で、abcの最後にHiabcが含まれているか、Hiabcの最後にabcという文字列が含まれているかを判別しています。

まずは、条件式の左辺を見て見ましょう。
b_down.slice(-(a_len)..- 1)は、b_down.slice(-5..-1)となります。しかし、b_down = abcとなっているので、インデックス番号-5から-1という条件で切り取ることができません。そのため、この部分はnilとなります。結果、nil == a_downは等しくないと評価されるので、falseになります。

続いて、条件式の右辺を見てみましょう。
a_down.slice(-(b_len)..- 1)はと、a_down.slice(-3..-1)となります。ここで、hiabcという文字列の最後にabcが含まれているかを確認したいので、abcという文字列分を左から数えます。すると、hiabcの最後までを範囲指定していることがわかります。そしてa_down = hiabcとなるので、インデックス番号-3から-1という条件で切り取るとabcが残ります。結果、abc == b_downは等しいと評価されるので、trueとなります。