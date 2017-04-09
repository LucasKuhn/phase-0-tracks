#--5.4--#

sports = {
    tennis: {
        champion: 'Roger Federer',
        ball_used: {
            size: 'small',
            amount: 3
        },
        players_per_team: 1,
        current_setup: [
            'Roger Federer'
        ]
    },

    basketball: {
        champion: ' Cleveland Cavaliers',
        ball_used: {
            size: 'big',
            amount: 1
        },
        players_per_team: 5,
        current_setup: [
            'Matt Dellavedova',
            'Channing Frye',
            'Kyrie Irving',
            'LeBron James',
            'Richard Jefferson'
        ]
    },
}

# ---- DRIVER CODE ---- # 
# Just some simple calls to check and use the code 

puts "Who is the current tennis champion?"
p sports[:tennis][:champion]

puts "How many tennis balls they use in a game?"
p sports[:tennis][:ball_used][:amount]

puts "How many players there are in a basketball team?"
p sports[:basketball][:players_per_team]

puts "What is the team of the current basketball champion?"
p sports[:basketball][:current_setup]
puts "I want to change LeBron James for Michael Jordan!"
sports[:basketball][:current_setup][3]= 'Michael Jordan'
p sports[:basketball][:current_setup]

