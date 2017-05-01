#LET'S MAKE SOME CHEAT SHEETS!
# --- The Project I envisioned is a program to make your own Cheat Sheets


# ------ BUSINESS CODE ------

#Requite Gems (SQLITE)
require 'sqlite3'

#Create SQL Database
db = SQLite3::Database.new("cheatsheet.db")
db.results_as_hash = true

#Create a command to create SQL table
def create_table (table_name)
	"CREATE TABLE IF NOT EXISTS " + table_name + 
	"(
	id INTEGER PRIMARY KEY,
	title VARCHAR(255),
	code VARCHAR(255)
	)"
end

#Add persistent content to table (in the sql database)
def add_to (table_name,title,code)
	"INSERT INTO " + table_name + 
	"(title,code) VALUES 
	('" + title + "','" + code + "')"
end

# ------ DRIVER CODE ------

#Display Current Tables (Cheat Sheets)
tables = db.execute("SELECT name FROM sqlite_master WHERE type='table'")
puts "Current sheets:"
tables.each do |table|
	puts "#{table['name']}"
end

puts "SELECT A SHEET (or type new name):"
table_name = gets.chomp

puts "SELECT AN OPTION:"
puts "1. See content"
puts "2. Add content"
option = gets.chomp.to_i

if option == 1 
	#Show the content of the tables
	commands = db.execute("SELECT * FROM " + table_name)
	commands.each do |command|
		puts "----"
		puts "#{command['id']}: #{command['title']}"
		puts "#{command['code']}"
		end
end

if option == 2
	#Create the content table (if it doesnt exist)
	db.execute(create_table(table_name))
	puts "What does the code do?"
	title = gets.chomp
	puts "What is the code?"
	code = gets.chomp
	#Add content to table
	db.execute(add_to(table_name,title,code))
end

# ------ TO DO LIST ------

#Make the content be written in an HTML file
#--- Read more about IO Class

#Add some pretty CSS to make things look good

#Add an option to open the local HTML file

#Upload it and create a GitHub Page for it
#--- Look for: GH Project Page
