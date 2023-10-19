# lone_sumメソッドを実装
# 配列に格納された3つの数値の合計を出力
# 同じ数値が2つ以上含まれている場合、その数値は合計する要素に含めない

def lone_sum(ary)
  # 配列から、重複しない要素のみ取り出す
  uniq_nums = []
  ary.each do |num|
    count = 0
    ary.each do |i|
      if num == i
        count += 1
      end
    end
    if count < 2
      uniq_nums << num
    end
  end

  # uniq_nums配列内の合計
  sum = 0
  uniq_nums.each do |unique_num|
    sum += unique_num
  end
  puts sum
end

# 呼び出し例
lone_ary([1, 2, 3])