問題.1
クラスFruitを以下の仕様で定義してください。

https://i.gyazo.com/9f6f5089d726ae1c64c843f1e1282a24.png

実行結果は以下のようになります。
採れたて新鮮な果実です
リンゴは120円です
オレンジは200円です
イチゴは60円です

--------------------

class Fruit

  def self.fresh
    puts "採れたて新鮮な果実です"
  end

  def initialize(name, price)
    @name = name
    @price = price
  end

  def introduce
    puts "#{@name}は#{@price}円です"
  end
end

apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

Fruit.fresh
apple.introduce
orange.introduce
strawberry.introduce

----------------------


解説
まずは、インスタンスの生成と、インスタンス毎のインスタンス変数（@nameと@price）を定義します。
ポイントは、インスタンス生成時の引数と、initializeメソッドです。
initializeメソッドは、newメソッドの引数を受け取ることができます。
インスタンス毎の名前と価格をnewメソッドから受け取り、インスタンス変数（@nameと@price）に代入しましょう。

class Fruit
 def クラスメソッド
   # ここに処理を記入してください
 end

 def initialize(name, price)
   @name = name
   @price = price
 end

 def インスタンスメソッド
   # 正しくメソッドを定義した上で、ここに処理を記入してください
 end
end

apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

# クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
# インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください
次に、クラスメソッドfreshを定義します。
処理内容通りの文言が出力されるよう、putsメソッドを用いて記述しましょう。

class Fruit
 def self.fresh
   puts "採れたて新鮮な果実です"
 end

 def initialize(name, price)
   @name = name
   @price = price
 end

 def インスタンスメソッド
   # 正しくメソッドを定義した上で、ここに処理を記入してください
 end
end


apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

# クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
# インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください
続いて、インスタンスメソッドを定義します。
各インスタンスに対して処理内容通りの文言が出力されるよう、putsメソッドを用いて記述をしましょう。

class Fruit
 def self.fresh
   puts "採れたて新鮮な果実です"
 end

 def initialize(name, price)
   @name = name
   @price = price
 end

 def introduce
   puts "#{@name}は#{@price}円です"
 end
end


apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

# クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
# インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください
最後に、定義したクラスメソッドとインスタンスメソッドを呼び出します。
クラスメソッドは「クラス名.メソッド名」で、インスタンスメソッドは「インスタンス.メソッド名」で呼び出しましょう。

class Fruit

 def self.fresh
   puts "採れたて新鮮な果実です"
 end

 def initialize(name, price)
   @name = name
   @price = price
 end

 def introduce
   puts "#{@name}は#{@price}円です"
 end
end

apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

Fruit.fresh
apple.introduce
orange.introduce
strawberry.introduce