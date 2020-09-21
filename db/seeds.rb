

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
    "Where did you find beauty today?",
    "What are you most proud of today?"
]

alex = User.create(first_name:"Alex", last_name:"Ortiz",email:"alex@gmail.com",password:"pass123")
emma = User.create(first_name:"Emma", last_name:"Wojtal",email:"emma@gmail.com",password:"pass123")
jeremy = User.create(first_name:"Jeremy", last_name:"Hanson",email:"jeremy@gmail.com",password:"pass123")

article1 = Article.create(title: "5 Minutes Before You Fall Asleep - Positive Affirmations", content: "Dr Wayne Dyer walks through the routine of positive affirmations you should be giving yourself daily.",image_url: "https://www.youtube.com/embed/Kvs-_22lwjA", category: "Self Care")
article2 = Article.create(title: "Beginner's Guide to Meditation", content: "Increase positive energy, calmness and productivity throughout the day with a short morning routine.",image_url:"https://www.youtube.com/embed/KQOAVZew5l8", category: "Meditation")
article3 = Article.create(title: "Work-Life Balance", content: "The idea of achieving work-life balance is a beautiful dream; it's also quite impossible, as we should realise without bitterness or frustration.",image_url:"https://www.youtube.com/embed/MPR3o6Hnf2g", category: "Balance")
article4 = Article.create(title: "5-Minute Meditation You Can Do Anywhere", content: "In just 5 minutes you can reset your day in a positive way.",image_url:"https://www.youtube.com/embed/inpok4MKVLM", category: "Meditation")
article5 = Article.create(title: "Mindfulness & Fitness with Paul Gagné", content: "This episode we talk about the intersection between mindfulness and fitness and how important mindfulness is for rest and regeneration.",image_url:"https://www.youtube.com/embed/qFvc2I3wkPE", category: "Fitness")
article6 = Article.create(title: "30 seconds to mindfulness | TEDxNaperville", content: "Ben Tillerman explains why mindfulness is often overlooked in our busy schedules and how to incorporate it for a happier, healthier life.",image_url:"https://www.youtube.com/embed/ad7HqXEc2Sc", category: "Mindfulness")
Article.create(title: "Why Mindfulness is a Super Power", content: "Practicing mindfulness is one of the single most powerful things you can do for your wellbeing.",image_url:"https://www.youtube.com/embed/w6T02g5hnT4" , category: "Mindfulness")
Article.create(title: "30-Minute Restorative Yoga and Meditation", content: "Recovery is the most important part of your week, and with this 30-minute restorative yoga and meditation session, you are giving your body what it needs to grow. ",image_url:"https://www.youtube.com/embed/LI6RwT0ulDk", category: "Fitness")
Article.create(title: "Self Care: What It Really Is", content: "Self care is what's needed for your well-being and should always leave you with more energy and feelings of revitalization.",image_url:"https://www.youtube.com/embed/dBn0ETS6XDk", category: "Self Care")
Article.create(title: "How Do I Find Balance In My Life? | by Jay Shetty", content: "If you want to be happy, tie your life to a goal not a person.",image_url:"https://www.youtube.com/embed/4wiA6zfpP6w", category: "Balance")
Article.create(title: "Meditation For Inner Peace - Yoga With Adriene", content: "Dive into meditation this Spring, go inward to focus on what feels good in mind and body.",image_url:"https://www.youtube.com/embed/d4S4twjeWTs", category: "Balance")

Article.create(title: "Isha Kriya: A Guided Meditation", content: "Experience this powerful spiritual process in the comfort of your own home.",image_url:"https://www.youtube.com/embed/EwQkfoKxRvo", category: "Meditation")

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



