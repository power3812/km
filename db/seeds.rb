require 'csv'
csv_data = CSV.read('db/colorimages.csv', headers: true)
csv_data.each do |data|
  r=data[3].to_i
  g=data[4].to_i
  b=data[5].to_i
  abs=r*r+g*g+b*b
  Color.create!(name: data[1], image: data[2], r: r, g: g, b: b, abs: abs)
end
History.create!(r: 0, g: 0, b: 0, abs: 0)