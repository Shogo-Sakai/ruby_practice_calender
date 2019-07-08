require "date"

date = Date.new(2014, 10, 25)
puts date.wday

weeks = ["日", "月", "火", "水", "木", "金", "土"] # 日曜日が0なので"日"を最初にする
  puts weeks[date.wday]         # => "土"が返ってくる)