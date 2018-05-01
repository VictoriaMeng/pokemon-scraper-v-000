class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(id:, type:, name:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    search = db.execute("SELECT id FROM pokemon WHERE id = ?", id).flatten

    Pokemon.all.find { |pokemon| pokemon.id = search[0] }

  end

  def self.all
    @@all
  end

end
