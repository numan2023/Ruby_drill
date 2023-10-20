# 配列に任意の値が存在するかどうか、何番目に存在するか、検索するコードを作成
# 添字が0の要素-> 配列の0番目に存在する
# 任意の値が配列内に存在しない場合は、「値は配列内に存在しない」と表示、
# 存在する場合、配列の何番目にあるかを表示

# 検索はバイナリーサーチ（2分割検索）を使用
# バイナリーサーチとは：ソート済みのリストや配列に入ったデータ（同一の値はないものとする）に対する検索を行う時に用いられる手法。
# 中央の値を確認し、検索したい値との大小関係を用いて、検索したい値が中央の値の右にあるか、左にあるかを判断する。
# 繰り返し行い、片側には存在しないことを確かめながら検索していく方法。

# ヒント
# .lengthメソッドを使用して配列の要素数を取得、変数number_of_elementsとする
# binary_searchメソッド内で配列の要素数を半分にしたものを変数centerとする
# while文を使用、当てはまるまで計算を繰り返す。

def binary_search(array, right, target)
  left = 0
  while left <= right
    center = (left + right) / 2
    if array[center] == target
      return center
    elsif array[center] < target
      left = center + 1
    else
      right = center - 1
    end
  end
  return -1
end

array=[1,3,5,6,9,10,13,20,26,31]

puts "検索したい数字を入力してください"
target = get.to_i
number_of_elements = array.length

result = binary_search(array, number_of_elements, target)

if result == -1
  puts "#{target}は配列内に存在しません"
else
  puts "#{target}は配列の#{result}番目に存在します"
end