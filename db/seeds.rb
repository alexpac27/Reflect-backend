# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mood.destroy_all
Article.destroy_all
User.destroy_all
Journal.destroy_all
Favorite.destroy_all
Log.destroy_all

happy = Mood.create(name:"Happy")
excited = Mood.create(name:"Excited")
grateful = Mood.create(name: "Grateful")
relaxed = Mood.create(name: "Relaxed")
content = Mood.create(name: "Content")
tired = Mood.create(name: "Tired")
unsure = Mood.create(name: "Unsure")
bored = Mood.create(name: "Bored")
anxious = Mood.create(name: "Anxious")
angry = Mood.create(name: "Angry")
stressed = Mood.create(name: "Stressed")
sad = Mood.create(name: "Sad")

prompt = [
    "How is today better than yesterday?",
    "What are you grateful for today?", 
    "What inspired you today?", 
    "What made you smile or laugh today?", 
    "What's something you're looking forward to in the future?", 
    "Who made a positive impact in your life recently?",
    "What relationships are you thankful for today?",
    "Where did you find beauty today?"
]
article1 = Article.create(title: "How to Meditate", content: "This is the body",image_url:"https://www.verywellmind.com/thmb/6I8juXTpLtcL4Qlt9iHVTeCrfOY=/500x350/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-938890492-becc3fc4757849bea672f148454943f9.jpg", category: "Meditation")
article2 = Article.create(title: "Work/Life Balance", content: "Maintaing sanity at work by...",image_url:"https://www.verywellmind.com/thmb/6I8juXTpLtcL4Qlt9iHVTeCrfOY=/500x350/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-938890492-becc3fc4757849bea672f148454943f9.jpg", category: "Balance")
article3 = Article.create(title: "The Art of Being Present", content: "Being present is often over looked but plays an essential role in our happiness.",image_url:"https://www.verywellmind.com/thmb/6I8juXTpLtcL4Qlt9iHVTeCrfOY=/500x350/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-938890492-becc3fc4757849bea672f148454943f9.jpg", category: "Fitness")
article4 = Article.create(title: "Navigating Challenges at Work", content: "Try not to get too angry. Breathe your way out of a bad situation.",image_url:"https://www.verywellmind.com/thmb/6I8juXTpLtcL4Qlt9iHVTeCrfOY=/500x350/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-938890492-becc3fc4757849bea672f148454943f9.jpg", category: "Meditation")
article5 = Article.create(title: "How to Practice Self Love", content: "Your body is a temple, take care of it.",image_url:"https://www.verywellmind.com/thmb/6I8juXTpLtcL4Qlt9iHVTeCrfOY=/500x350/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-938890492-becc3fc4757849bea672f148454943f9.jpg", category: "Self Care")
article6 = Article.create(title: "Motivation in Unlikely Places", content: "Look at the struggle of a monarch butterfly.",image_url:"https://www.verywellmind.com/thmb/6I8juXTpLtcL4Qlt9iHVTeCrfOY=/500x350/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-938890492-becc3fc4757849bea672f148454943f9.jpg", category: "Mindfulness")

alex = User.create(first_name:"Alex", last_name:"Ortiz",email:"alex@gmail.com",password:"pass123")
emma = User.create(first_name:"Emma", last_name:"Wojtal",email:"emma@gmail.com",password:"pass123")
jeremy = User.create(first_name:"Jeremy", last_name:"Hanson",email:"jeremy@gmail.com",password:"pass123")

#Alex Favorites
Favorite.create(user_id:1,article_id:1)
Favorite.create(user_id:1,article_id:3)
Favorite.create(user_id:1,article_id:5)

#Jeremy Favorites
Favorite.create(user_id:2,article_id:2)
Favorite.create(user_id:2,article_id:4)
Favorite.create(user_id:2,article_id:6)

#Emma Favorites
Favorite.create(user_id:3,article_id:3)
Favorite.create(user_id:3,article_id:2)
Favorite.create(user_id:3,article_id:1)

#Alex Journal Entries
Journal.create(prompt:prompt[rand(prompt.length)], user_id: 1, resp1:"My family", resp2:"Walking home",resp3:"baking cookies")
Journal.create(prompt:prompt[rand(prompt.length)], user_id: 1, resp1:"My friends rock", resp2:"My health",resp3:"Getting a job at SquareSpace")
Journal.create(prompt:prompt[rand(prompt.length)], user_id: 1, resp1:"Walking in the rain", resp2:"Cuddling with my husband",resp3:"Seeing my best friend")

#Alex Mood Logs
Log.create(user_id:1, mood_id:rand(1..12), tag1:"Work")
Log.create(user_id:1, mood_id:rand(1..12), tag1:"Work", tag2: "Family")
Log.create(user_id:1, mood_id:rand(1..12), tag1:"Friends", tag2: "Family")
Log.create(user_id:1, mood_id:rand(1..12), tag1:"Health", tag2: "Relationships", tag3:"Social Life")

