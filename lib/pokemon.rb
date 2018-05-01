class Pokemon
  attr_accessor :name, :type, :db

  def initialize(id:, type:, name:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, breed, age, database_connection)
    database_connection.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)", name, breed, age)
  end

end
