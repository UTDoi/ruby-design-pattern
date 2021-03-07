require 'json'

class Database
  private_class_method :new

  def self.get_properties(dbname)
    filename = "#{dbname}.json"
    props = {}
    File.open(filename, 'r') do |file|
      props = JSON.load(file)
    end
    props
  end
end