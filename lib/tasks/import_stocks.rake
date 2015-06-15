require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import_stocks => :environment do
    Stock.delete_all
    csv_file_path = 'NASDAQ_symbols.txt'

    CSV.foreach(csv_file_path) do |row|
      Stock.create!({
        :column1 => row[0],      
      })
      puts "Row added!"
    end
  end
end