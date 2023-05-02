array_data = [["らんてくん", 98],["カンノ", 23],["ファラオ", 57],["だいそん", 84],["ひさじゅ", 100]]

p array_data.sort! {|a,b| b[1] <=> a[1]
    # p b[1]
    # p a[1]
    # p b[1] <=> a[1]
}
    
# p array_data.sort {|a,b| a[1] <=> b[1]
#     p a[1]
#     p b[1]
#     p a[1] <=> b[1]}
cnt = 1
array_data.each do |name, score|
    # p cnt
    # p name
    # p score
    puts "#{cnt}位: #{name} #{score}点"
    cnt += 1
end


#----------解答-----------------------------
array_data = [["らんてくん", 98],["カンノ", 23],["ファラオ", 57],["だいそん", 84],["ひさじゅ", 100]]

# sortメソッドを使い点数の降順になるように並べ替え
sort_data = array_data.sort{|a,b| b[1] <=> a[1]}

# eachでループ処理を作成するが、今回はeach_with_indexを使って順位の数値も変数で出力
sort_data.each_with_index do |data, index|
  puts "#{index + 1}位: #{data[0]} #{data[1]}点"
end

#---------------解答②-------------------------

array_data = [["らんてくん", 98],["カンノ", 23],["ファラオ", 57],["だいそん", 84],["ひさじゅ", 100]]

# 点数の降順になるように並べ替えた配列をそのままeachメソッドでループ処理
# with_indexメソッドはindexの初期値を設定できるため解答例1の`#{index + 1}`をしなくてもよくなる
array_data.sort{|a,b| b[1] <=> a[1]}.each.with_index(1) do |data, index|
  puts "#{index}位: #{data[0]} #{data[1]}点"
end
