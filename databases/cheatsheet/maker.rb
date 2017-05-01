#LET'S MAKE SOME CHEAT SHEETS!
# --- The Project I envisioned is a program to make your own Cheat Sheets

#Requite Gems (SQLITE)
require 'sqlite3'

#Create SQL Database
db = SQLite3::Database.new("cheatsheet.db")
db.results_as_hash = true

#Use Fancy Strings Delimeters to create a command
create_table = <<-SQL 
	CREATE TABLE IF NOT EXISTS commands (
	id INTEGER PRIMARY KEY,
	title VARCHAR(255),
	code VARCHAR(255)
	)
SQL
#Create the content table using the super-fancy command
db.execute(create_table)

#Add persistent content to table 
#db.execute("INSERT INTO commands (title,code) VALUES ('To display tables','.tables')")

#Show the content on the table
# --- All The content
commands = db.execute("SELECT * FROM commands")
puts commands.class
p commands
commands.each do |command|
	puts "----"
	puts "#{command['id']}: #{command['title']}"
	puts "#{command['code']}"
end
# --- Only selected content

#Write the content to an HTML file
#--- Read more about IO Class

#Create a GitHub Page for it
#--- Look for: GH Project Page

