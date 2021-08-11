puts "Clearing old data..."

Quote.delete_all
User.delete_all
Mytodo.delete_all
Mywin.delete_all
Mynote.delete_all

u1 = User.create(name: Faker::Name.name)
u2 = User.create(name: Faker::Name.name)
u3 = User.create(name: Faker::Name.name)
u4 = User.create(name: Faker::Name.name)


10.times do
User.create name: Faker::Name.name
end



10.times do
 Mytodo.create(
    day: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'].sample,
    affirmation: ["I am Rich!", "I am Healthy!", "I am Wealthy!", "I am Free!", "I am Adored!", "I am Loved!"].sample,
    pray: [true, false].sample,
    meditate: [true, false].sample,
    journal: [true, false].sample,
    exercise: [true, false].sample,
    drink_water: [true, false].sample,
    entry1: ['walk dog', 'feed dog', 'play with dog', 'feed cat', 'clean litter box'].sample,
    entry2: ['go to bank', 'go to post office', 'go to market', 'go to visit susan', 'go to work'].sample,
    entry3: ['wash dishes', 'wash clothes', 'vacumn floors', 'sweep floors', 'wash floors'].sample,
    entry4: ['complete labs', 'read modules', 'write code', 'listen to podcasts', 'complete project'].sample,
    entry5: ['create scripts', 'record vlog', 'edit vlog', 'upload vlogs', 'buy camera'].sample,
    entry6: ['complete application', 'study', 'join study group', 'submit application', 'submit loa'].sample,
    tasks_completed: (0..12).to_a.sample,
    user: [u1, u2, u3, u4].sample
    
  
)
end
10.times do
    Mywin.create(
        text: ["I woke up before my alarm today.", "Someone said, I look good, what's my secret?!", "I got home before 6pm!", "I danced, like no one was watching; and someone was.", "I paid my cable bill on time.", "I saved 10 dollars, with a coupon.", 
        "I listened to a coding podcast all the way through!", "I played with all my pets today!"].sample,
        user: [u1, u2, u3, u4].sample
    )
end

10.times do
    Mynote.create(
        thankful: ["I am thankful for a full fridge.", "I am thankful for my laptop", "I am thankful for my family.", 
        "I am thankful that I have a job.", "I am thankful that I feel healthy.", "I am thankful I paid my bills this month."].sample,
        notes: Faker::Lorem.paragraph,
        user: [u1, u2, u3, u4].sample
        
    )
end

10.times do
    Unitodo.create(
        day: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'].sample,
        entry1: Faker::Lorem.sentence,
        entry2: Faker::Lorem.sentence,
        entry3: Faker::Lorem.sentence,
        entry4: Faker::Lorem.sentence,
        entry5: Faker::Lorem.sentence,
        entry6: Faker::Lorem.sentence,
        entry7: Faker::Lorem.sentence,
        entry8: Faker::Lorem.sentence,
        entry9: Faker::Lorem.sentence,
        entry10: Faker::Lorem.sentence,
        user: [u1, u2, u3, u4].sample
        

    )
end

10.times do
    Quote.create(
        quote: Faker::Lorem.sentence, 
        author: Faker::Name.name,
        img_url: Faker::LoremFlickr.image
    )
end



puts "User & Et all seeded"

puts "Seeded"


