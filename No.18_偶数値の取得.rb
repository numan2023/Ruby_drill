配列にある値の中から偶数の数をカウントして出力するメソッド

出力例：
count_evens([2, 1, 2, 3, 4]) → 3
count_evens([2, 2, 0]) → 3
count_evens([1, 3, 5]) → 0

ヒント
even?というメソッドを使いましょう。
even?メソッド
Rubyが元々用意している、対象の数値が偶数かどうかを判断するメソッドです。
対象の要素の値が偶数であれば真を返し、そうでない場合は偽を返します。
10.even?
#=> true

5.even?
#=> false

-------------------------------------

def count_evens(nums)
  count = 0
  nums.each do |num|
    if num.even?
      count += 1
    end
  end
  puts count
end

-------------------------------------