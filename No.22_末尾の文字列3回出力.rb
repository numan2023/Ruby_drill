対象の文字列の末尾に位置する文字を取得し、それらを任意の回数繰り返して出力するプログラム

問題
以下の要件を満たすextra_endメソッドを実装しましょう。

対象の文字列から末尾にある2文字を取得すること
取得した2文字を3回繰り返して出力すること

出力例：
extra_end('Hello') → 'lololo'
extra_end('ab') → 'ababab'
extra_end('Hi') → 'HiHiHi'

# 配列を作成します
array = [0,1,2,3,4,5,6]

# 配列から引数で指定した要素を取得します
ele1 = array.slice(1)
puts ele1
#=> 1

# 配列番号-4から4つ分の要素をsliceします
ele2 = array.slice(-4,4)
puts ele2
#=> 3, 4, 5, 6

# 配列はもとのままです
puts array 
#=> [0,1,2,3,4,5,6]

-------------------------------------

def extra_end(str)
  right2 = str.slice(-2, 2)
  puts right2 * 3
end

extra_end('Hello')
-------------------------------------

解説
extra_end('Hello')でメソッドを呼び出した場合の解説をします。

まず、1行目のextra_endメソッドの仮引数strには対象の文字列’Hello’が格納されます。
そして、2行目ではstrに対してsliceメソッドを使用し、指定した要素を取り出しています。

sliceメソッドの1つ目の引数では、文字列（Hello）の後ろから2番目の要素を基準点としています。
そして、2つ目の引数により、基準点から2つ分の要素を取り出しています。
今回の場合、「H,e,l,l,o」の後ろから2番目の要素は「l」です。そして、基準点「l」から2つ分の要素である「lo」が取り出されるので、end_str = loとなります。

最後に、2 * 3と記述することによって、「lololo」と出力されます。