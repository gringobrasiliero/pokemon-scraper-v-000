
class Pokemon
attr_accessor :id, :name, :type, :db, :hp

  def initialize (id:, name:, type:, db:)
@id = id
@name = name
@type = type
@db = db
@hp = hp
  end

  def self.save (name, type, db)
db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
     end


  def self.find(id, db)
pokemon_new = db.execute("SELECT * FROM pokemon WHERE id=?", id).flatten
Pokemon.new(id: pokemon_new[0], name: pokemon_new[1], type: pokemon_new[2], db: db)

  end

end
