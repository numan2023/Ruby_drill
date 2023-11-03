特定の数字が存在するかどうかを判定するプログラム

以下の要件を満たすarray123メソッドを実装しましょう。

配列内に1,2,3が全て入っている場合は、「True」と出力すること
配列内に1,2,3の全てが入っていない場合は、「False」と出力すること

出力例
array123([1, 1, 2, 3, 1]) → True
array123([1, 2, 4, ]) → False
array123([1, 1, 2, 1, 4, 3]) → True

ヒント
include?メソッドを使用しましょう。

include?メソッド
include?メソッドは指定した値が、配列中に含まれているかを判定するメソッドです。指定した値が含まれている場合はtrueを、含まれていない場合はfalseを返り値として返します。

array = ["foo", "bar"]
puts array.include?("bar")
#=> true
puts array.include?("hoge")
#=> false

-------------------------------------

def array123(nums)
  if nums.include?(1) && nums.include?(2) && nums.include?(3)
    puts "True"
  else
    puts "False"
  end 
end

array123([1, 1, 2, 3, 1])

-------------------------------------