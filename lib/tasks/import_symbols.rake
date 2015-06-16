namespace :import_stocks do
desc "Import stocks." 
  task :import_symbols => :environment do
    Stock.delete_all
    File.open("NASDAQ_symbols.txt", "r").each do |line|
      symbol = line.chomp
      u = Stock.new(:symbol => symbol)
      u.save
    end
  end
end