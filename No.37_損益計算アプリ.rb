# No.36に機能追加

# 仕様
# ・プログラミを実行すると、以下の3つの選択肢が表示され、直後にユーザーに対して値の入力を求めること。
# 　　・[1]：商品を登録する
# 　　・[2]：商品の利益一覧を確認する
# 　　・[3]：アプリを終了する
# ・[1]を選択した場合は、商品名、販売価格、仕入れ値を入力させ、保存する
# ・[2]を選択した場合は、保存された全ての商品の商品情報（商品名・販売価格・仕入れ値）と、それぞれの利益・利益率を計算し、商品ごとに一覧表示する。直後に、全ての商品の合計（総売り上げ・総利益・平均利益率）を表示する。ただし、利益率は四捨五入して、小数点２丈まで表示する。
# ・[3]を選択した場合は、アプリを終了する。
# ・アプリを終了するまで、処理を繰り返すこと。

# No.36 前回からの変更点
# ・商品ごとの利益・利益率を表示させる。
# ・商品の合計（総売り上げ・総利益・平均利益率）を表示させる。

#---------------------------------
# ヒント
# ・ハッシュオブジェクト
# ・式展開
# ・配列オブジェクト
# ・引数
# ・each文・条件分岐
# 利益計算
# ・利益（円）：販売価格 - 仕入れ値
# ・利益率（％）：利益 ÷ 販売価格 × 100

#---------------------------------
# to_fメソッド
# to_fメソッドとは、小数点以下を表示させるために使用するメソッドです。to_fメソッドを使用することで、小数の計算を行うことができます。

# 【例】
# # メソッドの使い方
# 3.to_f => 3.0

# # 小数の計算
# 3 / 5 => 0になってしまう
# 3.to_f / 5.to_f => 0.6と表示される

#---------------------------------
# roundメソッド
# roundメソッドとは、小数点以下を四捨五入するときに使用するメソッドです。引数に数値を設定することで、四捨五入する桁数を指定することができます。

# 【例】
# num = 0.5728247

# #小数点1桁目を四捨五入して、小数点以下は表示なし
# num.round => 1 と表示される

# #小数点3桁目を四捨五入して、小数点2桁まで表示する
# num.round(2) => 0.57 と表示される
#---------------------------------

def register_item(registered_item)
  item = {}
  puts "商品名を入力してください："
  item[:name] = gets.chomp
  puts "販売価格を入力してください："
  item[:selling_price] = gets.to_i
  puts "仕入れ値を入力してください："
  item[:cost_price] = gets.to_i
  line = "-------------------------"

  puts "商品名：#{item[:name]}\n#{line}"
  puts "販売価格：#{item[:selling_price]}円\n#{line}"
  puts "仕入れ値：#{item[:cost_price]}円\n#{line}"

  registered_item << item

  return registered_item
end

def calculate_profit(item)
  # 保存された商品の情報を元に、利益と利益率を計算する
  profit = item[:selling_price] - item[:cost_price]
  profit_rate = profit.to_f / item[:selling_price.to_f]

  item[:profit] = profit
  item[:profit_rate] = profit_rate
  return item
end

def check_items(registered_item)
  # 変数の定義
  total_profit = 0
  total_sales = 0

  # 保存された全ての商品情報（商品名・販売価格・仕入れ値）と、それぞれの利益・利益率を計算し、商品ごとに表示する
  line = "------------------------------"
  puts "【商品一覧】\n#{line}"

  registered_item.each do |item|
    item = calculate_profit(item) # 利益計算のために、calculate_profitメソッドの呼び出し
    puts "商品名：#{item[:name]}"
    puts "販売価格：#{item[:selling_price]}円"
    puts "仕入れ値：#{item[:cost_price]}円"
    puts "利益：#{item[:profit]}円"
    puts "利益率：#{(item[:profit_rate] * 100).round(2)}%\n#{line}"

    total_profit += item[:profit]
    total_sales += item[:selling_price]
  end

  # 全ての商品の合計（総売り上げ・総利益・平均利益率）を表示する
  profit_average = total_profit.to_f / total_sales.to_f
  puts "【合計】\n#{line}"
  puts "総売り上げ：#{total_sales}円"
  puts "総利益：#{total_profit}円"
  puts "平均利益率：#{(profit_average * 100).round(2)}%\n#{line}"
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

item_list = []

while true do
  puts "商品数：#{item_list.length}"
  puts "[1]商品を登録する"
  unless item_list.empty?
    puts "[2]商品の利益一覧を確認する"
  end
  puts "[3]アプリを終了する"

  input = gets.to_i

  if input == 1 then
    item_list = registered_item(item_list)
  elsif input == 2 then
    check_items(item_list)
  elsif input == 3 then
    end_program
  else
    exception
  end
end