require 'csv'
csv_data = CSV.read('db/colorimages.csv', headers: true)
csv_data.each do |data|
  Color.create!(name: data[1], image: data[2], r: data[3], g: data[4], b: data[5])
end
History.create!(r: 0, g: 0, b: 0)