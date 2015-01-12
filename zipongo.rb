require 'csv'
CSV.foreach("foosball.csv") do |row|
  # use row here...
  puts row.inspect
end