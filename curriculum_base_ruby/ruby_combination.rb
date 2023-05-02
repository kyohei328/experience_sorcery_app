n = 5

a = []
b = []


n.times do |cnt|
    cnt += 1
    a.push cnt
    b.push cnt
end
a.pop

tmp = []

a_size = a.size
b_size = b.size

a_size.times do |i|
    b_size.times do |j|
        if a[i] != b[j]
            # tmp.push a[i]
            # tmp.push b[j]
            # p tmp
            # p base
            tmp.push([a[i],b[j]])
        
            # p base
            # tmp.clear
            # j += 1
        end
        # tmp.clear
    end
end

p a
p b
p tmp

# p base


#-------------解答①---------------------
n = 5

p (1..n).to_a.combination(2).to_a

#------------------------------------

#------------解答②---------------------------
number = 5

# [1,2,3,4]を作成
array1 = (1..number-1).to_a
# [1,2,3,4,5]を作成
array2 = (1..number).to_a

# 結果を返す配列を定義
result_array = []

# 基準値を決める配列[1,2,3,4]の1から4までループ処理
array1.each do |number1|
  # 基準値より大きい数字を取得
  select_number_array = array2.select { |number2| number2 > number1 }
  # 1つずつ組み合わせを作って結果を返す配列に追加
  select_number_array.each do |select_number|
    result_array.push([number1, select_number])
  end
end


p result_array

#--------------------------------------------------------------------