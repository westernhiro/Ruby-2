require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
 
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

if memo_type == 1 then
    puts "ファイル名を入力してください。"
    file_name = gets

    puts"メモの内容を記入してください。Ctrl+Dで保存します。"
    imput_memo = STDIN.read
    memo = imput_memo.chomp
    
    CSV.open("#{file_name}.csv" , 'w') do |csv|
    csv << [memo]
end

elsif memo_type == 2 then
    puts "編集するファイル名を入力してください。"
    file_name = gets

    puts"更新内容を記入してください。Ctrl+Dで保存します。"
    imput_memo = STDIN.read
    memo = imput_memo.chomp

    CSV.open("#{file_name}.csv" , "a") do |csv| 
    csv << [memo]

end

else 
    puts "1か2の数字を入力してください"
end


