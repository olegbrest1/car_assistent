# frozen_string_literal: true
require 'byebug'
require 'csv'
#CSV.open(('/home/oleg/ruby/car_assistent/lib/assets/csv.csv'), :col_sep => ';' ) do |row|
CSV.foreach(('/home/oleg/ruby/car_assistent/lib/assets/csv.csv'),:col_sep => ';') do |row|
  Car.create!(:brand => row[0], :model => row[1])
  #print [row[0],row[1]]
end

