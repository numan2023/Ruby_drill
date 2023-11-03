# Q.
# 配列の内部に、複数のユーザーの情報をハッシュとして持つ変数user_dataがある
# user_data = [
#   {user: {profile: {name: 'George'}}},
#   {user: {profile: {name: 'Alice'}}},
#   {user: {profile: {name: 'Taro'}}},
# ]

# user_dataを利用して、すべてのユーザーの名前だけが出力されるようにRubyでコーディング
# 出力例）
# George
# Alice
# Taro

# ---------------


user_data.each do |u|
  puts u[:user][:prifile][:name]
end

# or

user_data.each{ |u| puts u.dig(:user, :profile, :name) }

# -------------

# 解説
# ハッシュから特定の値を取得する場合は、その値に対応するキーを指定します。以下の書き方で取得ができます。

# 1
# ハッシュ[取得したい値のキー]
# また、二重ハッシュから特定の値を取得する場合は、取得したい値のキーまで連続して指定すると取得できます。

# 1
# ハッシュ[取得したい値のキー][取得したい値のキー]