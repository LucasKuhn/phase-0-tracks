# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems (Pre-Written Ruby)
require 'sqlite3'
require 'faker' #Gem that lets you create fake data
# To install -> On terminal: <gem install faker>

# Create SQLite3 database
#Bellow is the equivalent to sqlite3 kittens.db on terminal
db = SQLite3::Database.new("kittens.db")
# <.execute(something)> -> Takes the argument as sql and execute a command 
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# --- AFTER CREATING 1 KITTEN ---
# explore ORM (Object Relational Mapping) by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# puts kittens.class
# p kittens
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

