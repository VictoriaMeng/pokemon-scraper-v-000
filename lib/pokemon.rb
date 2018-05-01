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

  def find(id)
  end

  def self.all
  end

end
