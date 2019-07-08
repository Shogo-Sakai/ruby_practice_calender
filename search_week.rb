# １年１月１日を月曜日とする。
  def get_days(year, month)
  month_days = [31,28,31,30,31,30,31,31,30,31,30,31]
    if month == 2
      if year % 4 ==0
        if year % 100 == 0 && year % 400 != 0 then
          return days = 28
        end
      return days = 29
      end
    return days = 28
    else
  return days = month_days[month - 1]
  end

  return days
end

# def get_year_days(year)
#   if year % 4 ==0
#     if year % 100 == 0 && year % 400 != 0 then
#       return year_days = 365
#     end
#   return year_days = 366
#   else
#     return year_days = 365
#   end
# end

def get_week(year, month, day)
  weeks = ["月","火","水","木","金","土","日"]

  days = 0
  month_index = month - 1
  while month_index > 0  do
    month_days = get_days(year, month_index)
    days = days + month_days
    month_index = month_index - 1
  end

  year_days = 0
  year_index = year -1
  # while year_index > 0 do
    # year_days = get_year_days(year_index)
    # days = days + year_days
    # year_index = year_index - 1
  # end
  while year_index > 0 do
    if get_days(year_index, 2) == 29
      days = days + 366
    else
      days = days + 365
    end
    year_index = year_index - 1
  end
  
  days = days + day

  return weeks[(days-1) % 7]
end

puts "年を入力してください"
year = gets.to_i
puts "月を入力してください"
month = gets.to_i
puts "日を入力してください"
day = gets.to_i

week = get_week(year, month, day)
puts "#{year}年#{month}月#{day}日は#{week}曜日です"
