
number_array = [3, 5, 9, 7, 1]
# number_array[2],number_array[3] = number_array[3],number_array[2]
# number_array.unshift number_array.pop
# p number_array

# i = 0
# j = 1

# until j == number_array.length do
until j == 4 do
    if number_array[i] > number_array[j]
        number_array.swap!(i, j)
    end
    i += 1
    j += 1
end

p number_array

#解答*******************************************************

number_array = [3, 5, 9, 7, 1]

# ループ処理で配列の要素同士を比べるため要素の個数を取得
number_array_size = number_array.size

# 比べる数値の要素分をループ処理
number_array_size.times do |i|
  # 比べられる残りの要素分をループ処理
  # 注意点：iの初期値は0のため(i + 1)にして残りの配列の要素の個数を計算している
  (number_array_size - (i + 1)).times do |j|
    # 隣同士の数値を比較して左の数値の方が大きい場合、配列内の数値の位置を入れ替える
    if number_array[j] > number_array[j + 1]
      tmp = number_array[j]
      number_array[j] = number_array[j + 1]
      number_array[j + 1] = tmp
    end
  end
end

p number_array