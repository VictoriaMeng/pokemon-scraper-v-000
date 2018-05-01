class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  @@all = []

  def initialize(id:, type:, name:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = 60
    @@all << self
  end

  def self.save(id, name, type, hp, db)
    db.execute("INSERT INTO pokemon (id, name, type, hp) VALUES (?, ?, ?, ?)", id, name, type, hp)
  end

  def self.find(id, db)
    search = db.execute("SELECT id FROM pokemon WHERE id = ?", id).flatten

    Pokemon.all.find { |pokemon| pokemon.id = search[0] }
  end

  def self.all
    @@all
  end

end
