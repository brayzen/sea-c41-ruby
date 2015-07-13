require 'yaml'

def database
  File.absolute_path("#{File.dirname(__FILE__)}/database.yml")
end

def load
  y = ''
  File.open(database, 'r') do |f|
    puts YAML.load(f)


    #amalgam_object = Object.new(f)
    #puts amalgam_object
    end
    #amalgam_object.delete(nil)
    #p amalgam_object
end

load

