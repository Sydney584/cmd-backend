u1 = User.create(name: Faker::Name.name)
u2 = User.create(name: Faker::Name.name)
u3 = User.create(name: Faker::Name.name)
u4 = User.create(name: Faker::Name.name)
u5 = User.create(name: Faker::Name.name)
u6 = User.create(name: Faker::Name.name)


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