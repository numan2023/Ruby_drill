概要
配列の要素である数値を、小さい順に並べ替えて出力するプログラムを実装

問題
bubble_sortメソッドを実装
・要素が数値である配列を受け取り、数値の小さい順に並べ替えること
・小さい順に並べ替えた結果を出力すること

呼び出し例
number = [1,23,4,6,12,45,79]
出力例
1
4
6
12
23
45
79

ヒント
・for文：
for i in 0..4 # 0から4の数が順に変数iに代入される。0~4の5回分処理を繰り返す。
  puts i
end

0
1
2
3
4

・入れ子
for i in 0..1
  puts i
  for j i 2..4
    puts j
  end
end

0
2
3
4

1
2
3
4

・考え方
小さい順に数値を並べ替えていくアルゴリズム
-> 「隣同士の大きさを比較し、もし先頭側の文字の方が大きい場合は位置を交換する」という処理を先頭から順に繰り返す

----------------------------

def bubble_sort(data)
  # 配列の数を数える処理を記述
  length = data.length

  # for文を2つ使用する
  for i in 0..(length - 1)
    for j in 1..(length - i - 1)
      # 先頭から隣の数同士の大きさを比べる
      if data[j - 1] > data[j]
        # 先頭側の要素の方が大きい場合は、配列の位置を隣同士で交換する
        data[j - 1], data[j] = data[j], data[j - 1]
      end
    end
  end
end

# 呼び出し例
number = [1,23,4,5,12,45,79]
bubble_sort(number)
puts number