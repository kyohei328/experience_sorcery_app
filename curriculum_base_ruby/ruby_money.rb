money = 6480

bill_coin = [10000, 5000, 1000, 500, 100, 50, 10, 5, 1]

bill_coin_cnt = []

bill_coin_size = bill_coin.size

bill_coin_size.times do |i|

    remaining_money = money.divmod(bill_coin[i])
    money = remaining_money[1]
    bill_coin_cnt.push remaining_money[0]

end

p [bill_coin, bill_coin_cnt].transpose.to_h



#-------解答---------------------------------------------------
money = 6498
money_types = [10000, 5000, 1000, 500, 100, 50, 10, 5, 1]

# 結果を返すための配列を準備
result = []
# あまりの金額を計算するために利用
total = 0

# お金の単位の数だけループ処理
money_types.each do |type|
  # お金の枚数(個数)の計算
  amount = (money - total) / type
  # あまりの金額を出すために引かれる金額をtotalに設定
  total += type * amount
  # 結果を返すための配列に追加、[お金の単位, 枚数]の形
  result.push([type, amount])
end

# 金額を昇順にするかつ、hashで結果を返すので配列をhashに変換
result = result.reverse.to_h

p result

#---------------------------------------------------------------