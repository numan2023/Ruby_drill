# 対象の文字列の中に特定の値が含まれているかどうかを検知するプログラムを実装

# 問題
# 以下の要件を満たすcheck_nameメソッドを実装しましょう。

# 名前を入力すると「登録が完了しました」という文字列を出力すること
# 名前の中にピリオド(.)がある場合は、「 "!エラー!記号は登録できません"」という文字列を出力すること
# 名前の中に空白（半角のみ）がある場合は、「 "!エラー!空白は登録できません"」という文字列を出力すること
# ※今回空白に関しては、半角スペースのみを考えることとします

# 雛形
# def check_name(str) 
#   # 処理を記述
# end

# puts "登録したい名前を入力してください(例)YamadaTaro"
# str = gets
# check_name(str) 
# 出力例
# YamadaTaro → 登録が完了しました
# Yamada.Taro→!エラー!記号は登録できません
# Yamada Taro → !エラー!空白は登録できません

# ヒント
# include?メソッドを使用しましょう。

# include?メソッド
# include?メソッドは、指定した値が配列や文字列内に含まれているかを判定するメソッドです。指定した値が含まれている場合はtrueを、含まれていない場合はfalseを返り値として返します。

# 【例】
# 1
# 2
# 3
# 4
# 5
# array = ["foo", "bar"]
# puts array.include?("bar")
# # => true
# puts array.include?("hoge")
# # => false

# ---------------------------

def check_name(str)
  if str.includes?(".")
    puts "!エラー!記号は登録できません"
  elsif str.includes?(" ")
    puts "!エラー!空白は登録できません"
  else
    puts "登録が完了しました"
  end
end

puts "登録したい名前を入力してください（例）YamadaTaro"
str = gets
check_name(str)
