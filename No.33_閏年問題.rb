# 西暦の年数及び月を入力し、その月の日数を求めるプログラム
# 閏年を考慮する

# 判断基準
# 1 その西暦が4で割り切れたら閏年
# 2 例外として100で割り切れる西暦の場合閏年ではない
# 3 例外として400で割り切れる場合は閏年である
# -> 西暦2000年は閏年であり、西暦2100年は閏年ではありません。

# 1990年2月 =>"1990年2月は28日間あります"
# 2000年2月 =>"2000年2月は29日間あります"
# 2100年2月 =>"2100年2月は28日間あります"
# 2000年3月=>"2000年3月は31日間あります"

def get_days(year, month)
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if month == 2
    if year % 4 == 0
      if year % 100 == && year & 400 != 0
        days 28
      else
        days = 29
      end
    else
      days = 28
    end
  else
    days = month_days[month - 1]
  end

  return days
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"