# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.push("斎藤")
  puts names
end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載
  array = array1.concat(array2)
  puts array
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count(3)

end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  sports.delete(nil)

  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  puts array1.empty?
  puts array2.empty?
end

q5

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = []
  numbers1.each do |n1|
    numbers2.push(n1*10)
  end
  puts numbers2
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  array.each.with_index do |n,i|
    array[i] = n.to_i
  end
  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  upper_case_programming_languages = []
  programming_languages.each.with_index do |programming_language,i|
    upper_case_programming_languages[i] = programming_language.upcase
  end
  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index do |name,i|
    puts "会員No.#{i} #{name}さん"
  end  
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?("うに")
      puts "好物です"
    else
      puts "まぁまぁ好きです"
    end
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  new_sports = []
  sports.each.with_index do |sport, i|
    if sport.class.name == "Array" 
      sport.each do |sport_i|
        new_sports.push(sport_i)
      end
    else
      new_sports.push(sport)
    end
  end
  unique_sports = new_sports.uniq
  unique_sports.each.with_index(1) do |sport,i|
    puts "No#{i} #{sport}"
  end
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  user = data[:user]
  puts user[:name]

end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  user_data.delete(:name)
  user_data[:age] = 32
  user_data[:address] = "沖縄"
  puts user_data
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  keys = []
  data.each_key do |key|
    keys.push(key)
  end
  puts keys
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  if data1[:age].nil?
    puts "NG"
  else
    puts "OK"
  end
  if data2[:age].nil?
    puts "NG"
  else
    puts "OK"
  end

end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}です。"
  end
end

class UserQ17
  # 以下に回答を記載
  def initialize(user)
    @name = user[:name]
    @age = user[:age]
    @gender = user[:gender]
  end

  def info
    puts "名前：#{@name}"
    puts "年齢：#{@age}"
    puts "性別：#{@gender}"
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  def initialize(user)
    @name = user[:name]
    @age = user[:age]
  end

  def introduce
    if @age>20
      puts "こんにちは，#{@name}と申します。宜しくお願いいたします。"
    else
      puts "はいさいまいど〜，#{@name}です！！！"
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい

  def initialize(name)
    @name = name
  end

  def name
    puts @name[:name]
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_reader :name, :age
  def initialize(user)
    @name = user[:name]
    @age = user[:age]
  end
end

class Zoo
  # 以下に回答を記載
  def initialize(zoo)
    @name = zoo[:name]
    @entry_fee = zoo[:entry_fee]
  end

  def info_entry_fee(user)
    if user.age.between?(0, 5)
      puts "#{user.name}さんの入場料金は #{@entry_fee[:infant]} 円です。"
    elsif user.age.between?(6, 12)
      puts "#{user.name}さんの入場料金は #{@entry_fee[:children]} 円です。"
    elsif user.age.between?(13, 64)
      puts "#{user.name}さんの入場料金は #{@entry_fee[:adult]} 円です。"
    elsif user.age.between?(65, 120)
      puts "#{user.name}さんの入場料金は #{@entry_fee[:senior]} 円です。"
    end
  end
end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end