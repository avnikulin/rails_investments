namespace :import_stocks do
desc "Import stocks." 
  task :import_symbols => :environment do
    ActiveRecord::Base.connection.execute('TRUNCATE stocks RESTART IDENTITY')
    Stock.delete_all
    File.open("NASDAQ.txt", "r").each do |line|
      symbol, name = line.strip.split("\t")
      u = Stock.new(:symbol => symbol, :name => name)
      u.save
    end
  end
end