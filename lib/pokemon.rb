
class Pokemon
attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)
@name = name
@type = type
@db = db
binding.pry
  end

  def self.save (name, type, db)
db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
     end


  def self.find(name, type, db)
pokemon_new = db.execute("SELECT * FROM pokemon")

  end

end
