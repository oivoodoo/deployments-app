config_file = File.join(File.dirname(__FILE__), "../../config/database.yml")
config = YAML.load(File.read(config_file))[ENV['RACK_ENV']]

DataMapper.setup(:default, "mysql://#{config['username']}@#{config['host']}/#{config['database']}")
DataMapper.finalize
DataMapper.auto_migrate!

