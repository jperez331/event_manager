require 'CSV'
require 'date'

puts 'Time Targeting activated'

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)


contents.each do |row|
  time = row[:regdate]


  puts DateTime.strptime(time, '%m/%d/%Y %H:%M')
end
