# class Article

#   def initialize(author, title, content)
#     @author = author
#     @title = title
#     @content = content
#   end

# end

# 上記のコードに追加し、以下の出力結果を得るようにコーディング
# 著者: 阿部
# タイトル: Rubyの素晴らしさについて
# 本文: Awesome Ruby!

# -----------------

class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def author
    @author
  end

  def title
    @title
  end

  def content
    @content
  end

end

article = Article.new("阿部", "Rubyの素晴らしさについて", "Awesome Ruby!")
puts "著者： #{article.author}"
puts "タイトル： #{article.title}"
puts "本文： #{article.content}"

# -----------

# 解説
# （23行目）Article.newでインスタンスを生成し、変数articleに代入します。その際に、阿部、Rubyの素晴らしさについて、Awesome Ruby!の3つ実引数を指定します。

# （3〜7行目）initializeメソッドを定義して、インスタンス変数を宣言しました。実引数として指定した値を、仮引数のauthor、 title、contentにそれぞれ渡しています。

# そうすることにより、initializeメソッドで宣言されたインスタンス変数に、阿部、Rubyの素晴らしさについて、Awesome Ruby!という3つの値が代入されます。

# （9〜19行目）上記インスタンス変数の値を返すための専用のメソッドをそれぞれ定義しています。

# （24〜26行目）最後に、9〜19行目で定義づけたメソッドを呼び出しています。