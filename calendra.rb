require 'date'
require 'colorize'

def display_calendar
  today = Date.today
  current_month = today.month
  current_year = today.year

  first_day_of_month = Date.new(current_year, current_month, 1)
  last_day_of_month = Date.new(current_year, current_month, -1)
  date_today = Date.new
  puts "Calendar for #{Date::MONTHNAMES[current_month]} #{current_year}"

  puts " Mo Tu We Th Fr Sa Su"
  (first_day_of_month..last_day_of_month).each do |date|
    
  if Date.today == date
      print date.day.to_s.rjust(3).blue
    else 
    print date.day.to_s.rjust(3).yellow
    print ""
    puts if date.sunday?
  end
end
  puts "\n\n"
end

puts display_calendar
today = Time.new
puts today.strftime("%A")

today = Date.today

if today.day.even?
  puts "Today's date: #{today.strftime('%Y-%m-%d')}".green
else
  puts "Today's date: #{today.strftime('%Y-%m-%d')}".red
end

