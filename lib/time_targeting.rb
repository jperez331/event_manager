require 'CSV'

puts 'Time Targeting activated'

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)


contents.each do |row|
  time = row[:regdate]


  puts time
end
