#--- BUSINESS CODE
class Santa
  #This code does the same as the Getter and Setter
  attr_reader :age, :ethnicity
  attr_accessor :gender
  
  def initialize (gender,ethnicity)
    # I Commented out the Initializing to make the output cleaner
    # puts "Initializing Santa instance..."    
    @gender = gender
    @ethnicity = ethnicity
    @age = rand(140)
    @reindeer_ranking = [
    "Rudolph",
    "Dasher",
    "Dancer",
    "Prancer",
    "Vixen",
    "Comet",
    "Cupid",
    "Donner",
    "Blitzen"
    ]
  end
     
  def speak 
    puts "Ho, ho, ho! Haaaappy holidays!" 
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a great #{cookie_type}!"
  end
  
  def celebrate_birthday
    @age += 1 
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

end

#--- DRIVER CODE ----
#--- To Save time scrolling, click the arrow on the left to collapse list
genders = [
  "Agender",
  "Androgyne",
  "Androgynous",
  "Bigender",
  "Cis",
  "Cisgender",
  "Cis Female",
  "Cis Male",
  "Cis Man",
  "Cis Woman",
  "Cisgender Female",
  "Cisgender Male",
  "Cisgender Man",
  "Cisgender Woman",
  "Female to Male",
  "FTM",
  "Gender Fluid",
  "Gender Nonconforming",
  "Gender Questioning",
  "Gender Variant",
  "Genderqueer",
  "Intersex",
  "Male to Female",
  "MTF",
  "Neither",
  "Neutrois",
  "Non-binary",
  "Other",
  "Pangender",
  "Trans",
  "Trans*",
  "Trans Female",
  "Trans* Female",
  "Trans Male",
  "Trans* Male",
  "Trans Man",
  "Trans* Man",
  "Trans Person",
  "Trans* Person",
  "Trans Woman",
  "Trans* Woman",
  "Transfeminine",
  "Transgender",
  "Transgender Female",
  "Transgender Male",
  "Transgender Man",
  "Transgender Person",
  "Transgender Woman",
  "Transmasculine",
  "Transsexual",
  "Transsexual Female",
  "Transsexual Male",
  "Transsexual Man",
  "Transsexual Person",
  "Transsexual Woman",
  "Two-Spirit"
]
ethnicities = [
  "Afghans",
  "Albanians",
  "Algerians",
  "Americans",
  "Andorrans",
  "Angolans",
  "Argentines",
  "Armenians",
  "Aromanians",
  "Arubans",
  "Australians",
  "Austrians",
  "Azerbaijanis",
  "Bahamians",
  "Bahrainis",
  "Bangladeshis",
  "Barbadians",
  "Basotho",
  "Basques",
  "Belarusians",
  "Belgians",
  "Belizeans",
  "Bermudians",
  "Boers",
  "Bosniaks",
  "Brazilians",
  "Bretons",
  "British",
  "British Virgin Islanders",
  "Bruneians",
  "Bulgarians",
  "Macedonian Bulgarians",
  "Burkinabès",
  "Burundians",
  "Cambodians",
  "Cameroonians",
  "Canadians",
  "Catalans",
  "Cape Verdeans",
  "Chadians",
  "Chileans",
  "Chinese",
  "Colombians",
  "Comorians",
  "Congolese",
  "Croatians",
  "Cubans",
  "Cypriots",
  "Turkish Cypriots",
  "Czechs",
  "Danes",
  "Dominicans (Republic)",
  "Dominicans (Commonwealth)",
  "Dutch",
  "East Timorese",
  "Ecuadorians",
  "Egyptians",
  "Emiratis",
  "English",
  "Eritreans",
  "Estonians",
  "Ethiopians",
  "Falkland Islanders",
  "Faroese",
  "Finns",
  "Finnish Swedish",
  "Fijians",
  "Filipinos",
  "French citizens",
  "Georgians",
  "Germans",
  "Baltic Germans",
  "Ghanaians",
  "Gibraltar",
  "Greeks",
  "Greek Macedonians",
  "Grenadians",
  "Guatemalans",
  "Guianese (French)",
  "Guineans",
  "Guinea-Bissau nationals",
  "Guyanese",
  "Haitians",
  "Hondurans",
  "Hong Kong",
  "Hungarians",
  "Icelanders",
  "I-Kiribati",
  "Indians",
  "Indonesians",
  "Iranians",
  "Iraqis",
  "Irish",
  "Israelis",
  "Italians",
  "Ivoirians",
  "Jamaicans",
  "Japanese",
  "Jordanians",
  "Kazakhs",
  "Kenyans",
  "Koreans",
  "Kosovars",
  "Kurds",
  "Kuwaitis",
  "Kyrgyzs",
  "Lao",
  "Latvians",
  "Lebanese",
  "Liberians",
  "Libyans",
  "Liechtensteiners",
  "Lithuanians",
  "Luxembourgers",
  "Macao",
  "Macedonians",
  "Malagasy",
  "Malaysians",
  "Malawians",
  "Maldivians",
  "Malians",
  "Maltese",
  "Manx",
  "Mauritians",
  "Mexicans",
  "Moldovans",
  "Moroccans",
  "Mongolians",
  "Montenegrins",
  "Namibians",
  "Nepalese",
  "New Zealanders",
  "Nicaraguans",
  "Nigeriens",
  "Nigerians",
  "Norwegians",
  "Pakistanis",
  "Palauans",
  "Palestinians",
  "Panamanians",
  "Papua New Guineans",
  "Paraguayans",
  "Peruvians",
  "Poles",
  "Portuguese",
  "Puerto Ricans",
  "Quebecers",
  "Réunionnais",
  "Romanians",
  "Russians",
  "Baltic Russians",
  "Rwandans",
  "Salvadorans",
  "São Tomé and Príncipe",
  "Saudis",
  "Scots",
  "Senegalese",
  "Serbs",
  "Sierra Leoneans",
  "Singaporeans",
  "Sindhian",
  "Slovaks",
  "Slovenes",
  "Somalis",
  "Somalilanders",
  "South Africans",
  "Spaniards",
  "Sri Lankans",
  "St Lucians",
  "Sudanese",
  "Surinamese",
  "Swedes",
  "Swiss",
  "Syriacs",
  "Syrians",
  "Tajik",
  "Taiwanese",
  "Tanzanians",
  "Thais",
  "Tibetans",
  "Tobagonians",
  "Trinidadians",
  "Tunisians",
  "Turks",
  "Tuvaluans",
  "Ugandans",
  "Ukrainians",
  "Uruguayans",
  "Uzbeks",
  "Vanuatuans",
  "Venezuelans",
  "Vietnamese",
  "Welsh",
  "Yemenis",
  "Zambians",
  "Zimbabweans"
]

puts "How many Santas do you want to add?"
amount = gets.chomp.to_i 
number = 1
amount.times do 
  santa = Santa.new(genders.sample,ethnicities.sample)
  puts "-------------------------------"
  puts "Santa #{number} Info"
  puts "Gender: #{santa.gender}" 
  puts "Ethnicity: #{santa.ethnicity}"
  puts "Age: #{santa.age}"
  number += 1
end 

# ---- EXAMPLE TO ADD SANTA: POSSIBLE SOLUTION 1 ---- 
  # santas = []
  # santas << Santa.new("agender", "black")
  # santas << Santa.new("female", "Latino")
  # santas << Santa.new("bigender", "white")
  # santas << Santa.new("male", "Japanese")
  # santas << Santa.new("female", "prefer not to say")
  # santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
  # santas << Santa.new("N/A", "N/A")

# ---- EXAMPLE TO ADD SANTA: POSSIBLE SOLUTION 2 ---- 
  # santas = []
  # example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  # example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
  # example_genders.length.times do |i|
  #   santas << Santa.new(example_genders[i], example_ethnicities[i])
  # end

# ---- OLD DATA ---- # 
  # GETTER METHODS (Make things readable)
    # def age
    #   @age
    # end
    
    # def ethnicity
    #   @ethnicity
    # end
    
    # def gender
    #   @gender
    # end
  # SETTER METHODS (Make things writable)
    # def gender=(new_gender)
    #   @gender = new_gender
    # end