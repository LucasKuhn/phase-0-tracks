#LET'S MAKE PUPPIES!

#Something about Object Relational Mapping (ORL)

#Require Gems (pre-written-ruby)
require 'sqlite3'
require 'faker'

#Crate SQL Database
db = SQLite3::Database.new("puppies.db")
db.results_as_hash = true

#Do something with Fancy String Delimeters
special_command = <<-FANCY
	CREATE TABLE IF NOT EXISTS puppy (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	age INT
	)
FANCY

#Create table using the command we created
db.execute(special_command)

#Add a puppy to the table
# db.execute("INSERT INTO puppy (name,age) VALUES ('Rex',1)")
# db.execute("INSERT INTO puppy (name,age) VALUES (?,?)", [Faker::Name.name ,rand(3)])

#do it many times!
def create_puppy (db,name,age) 
	db.execute("INSERT INTO puppy (name,age) VALUES (?,?)", [name,age])	
end

5.times do
	create_puppy(db,Faker::Name.name,rand(3))
end


# explore ORM (Object Relational Mapping) by retrieving data
puppies = db.execute("SELECT * FROM puppy")
# puts puppies.class
p puppies
puppies.each do |puppy|
	puts "#{puppy['id']}: The puppy #{puppy['name']} has #{puppy['age']} years!"
end