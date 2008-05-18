desc 'Load default NGODB-related data'

namespace :ngodb do
  task :load_default_data => :environment do
    begin
      Ngodb::DefaultData::Loader.load
      puts "Default configuration data loaded."
    rescue => error
      puts "Error: " + error
      puts "Default configuration data was *not* loaded."
    end
  end
end
