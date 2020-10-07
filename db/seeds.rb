# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

Genre.destroy_all
Location.destroy_all
User.destroy_all
Message.destroy_all
Event.destroy_all
TalentProfile.destroy_all
Gig.destroy_all
Registration.destroy_all

Genre.create!(name: 'Anime and Manga')
Genre.create!(name: 'Table Top Games')
Genre.create!(name: 'Comics')
Genre.create!(name: 'Handmade Crafts')
Genre.create!(name: 'Video Games')

Location.create!(name: 'Vancouver')
Location.create!(name: 'Victoria')
Location.create!(name: 'Montreal')
Location.create!(name: 'Toronto')
Location.create!(name: 'Calgary')

user = User.new(name: 'System', email: 'support@eventfill.com', location_id: 1)
user.id = 0
user.save!

## keep above this line please! (can add to genres and locations but locations must exist before users)
## best to keep all remaining sections in current order and just change data, to prevent errors

User.create!(name: 'Jimothy Muirs', email: 'jimothy@cool.com', location_id: 1)
User.create!(name: 'Nicola Jones', email: 'nicola@cool.com', location_id: 2)
User.create!(name: 'Prudence Richards', email: 'prudence@cats.com', location_id: 3)
User.create!(name: 'Tiffany Smith', email: 'thomas@cool.com', location_id: 1)
User.create!(name: 'Sally Baker', email: 'sabaker@cool.com', location_id: 1)
User.create!(name: 'Lois Lane', email: 'llane@cool.com', location_id: 1)
User.create!(name: 'Clark Kent', email: 'nicjea@cool.com', location_id: 2)
User.create!(name: 'Dixie Catwell', email: 'prdfeence@cats.com', location_id: 3)
User.create!(name: 'Thomas Smith', email: 'thofes@cool.com', location_id: 1)
User.create!(name: 'Sally Kent', email: 'sally@gmail.com', location_id: 1)
User.create!(name: 'Tiffany Muirs', email: 'jimomur@cool.com', location_id: 1)
User.create!(name: 'Nicola Case', email: 'nicola@ymail.com', location_id: 2)
User.create!(name: 'Liza Tree', email: 'prudence@ymail.com', location_id: 3)
User.create!(name: 'Thomas Kent', email: 'thomas@ymail.com', location_id: 1)
User.create!(name: 'Penelope Flex', email: 'flex@yo.com', location_id: 1)
User.create!(name: 'Jimothy Case', email: 'jimothy@yo.com', location_id: 1)
User.create!(name: 'Nicola Muirs', email: 'nicola@yaho.com', location_id: 2)
User.create!(name: 'Sylvia Kent', email: 'skent@yaho.com', location_id: 3)
User.create!(name: 'Matthew Smith', email: 'smithm@cool.com', location_id: 1)
User.create!(name: 'Dixie Baker', email: 'sally@ymail.com', location_id: 1)

Message.create!(sender_id: 1, recipient_id: 2, content: 'Hey are you going this Sat?')
Message.create!(sender_id: 2, recipient_id: 1, content: 'Yeah sure!')
Message.create!(sender_id: 1, recipient_id: 2, content: 'Nice I will get a ticket now!')
Message.create!(sender_id: 2, recipient_id: 1, content: 'Sounds good!')

Message.create!(sender_id: 2, recipient_id: 3, content: 'Hi, are you busy?')
Message.create!(sender_id: 3, recipient_id: 2, content: 'No, what\'s up')
Message.create!(sender_id: 2, recipient_id: 3, content: 'Are you performing tomorrow?')
Message.create!(sender_id: 3, recipient_id: 2, content: 'Yes! You gonna come watch?')

Message.create!(sender_id: 4, recipient_id: 3, content: 'Hey I really liked your show last week!')
Message.create!(sender_id: 4, recipient_id: 3, content: 'When are you performing next?')
Message.create!(sender_id: 3, recipient_id: 4, content: 'Hello and thank you.')
Message.create!(sender_id: 3, recipient_id: 4, content: 'I will be doing another gig next Friday in Vancouver.')

Message.create!(sender_id: 5, recipient_id: 1, content: 'Yo would you like to perform?')
Message.create!(sender_id: 5, recipient_id: 1, content: 'I have a show coming Dec, you should come!')
Message.create!(sender_id: 1, recipient_id: 5, content: 'Sure, send me an invitation and I will check it out.')

Message.create!(sender_id: 4, recipient_id: 2, content: 'Hey how are you? I noticed you have this event next month.')
Message.create!(sender_id: 2, recipient_id: 4, content: 'Hi! Yeah it\'s for magic.')
Message.create!(sender_id: 2, recipient_id: 4, content: 'You wanna join?')
Message.create!(sender_id: 4, recipient_id: 2, content: 'Yes actually, I want to perform in your event!')
Message.create!(sender_id: 2, recipient_id: 4, content: 'Nice! I will send you an invitation now.')
Message.create!(sender_id: 2, recipient_id: 4, content: 'Thank you for reaching out!')

Message.create!(sender_id: 4, recipient_id: 3, content: 'Did you enjoy the show?')
Message.create!(sender_id: 4, recipient_id: 5, content: 'Did you enjoy the show?')

Message.create!(sender_id: 4, recipient_id: 5, content: 'I think it was excellent!')
Message.create!(sender_id: 5, recipient_id: 4, content: 'Yes it was awesome!')
Message.create!(sender_id: 5, recipient_id: 4, content: 'Thank you for letting me know about it!')
Message.create!(sender_id: 5, recipient_id: 4, content: 'I really had fun.')

Event.create!(user_id: 1, genre_id: 1, location_id: 2, image_url: '/images/event_1.jpg', name: 'Anime Revolution 2020', start: '2020-07-31 12:00:00', end: '2020-08-03 22:00:00', max_attendees: 200, description: 'Join us for another year of Anime, Anime, and more Anime! Anirevo Summer is officially booked for July 31st to August 2nd 2020 at the Vancouver Convention Centre (West Building)! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis congue magna ut pulvinar. Integer porttitor risus eu diam aliquam maximus. Sed vestibulum purus semper, eleifend elit eget, bibendum nisi. Sed commodo dolor vitae justo tempus hendrerit. Vivamus mollis, magna eget tempor laoreet, neque risus pulvinar erat, vel porttitor metus dolor non lacus. Duis elementum lacus nec bibendum dictum. Suspendisse augue ante, rhoncus quis facilisis nec, varius quis magna. ', accepting_talent: true)

Event.create!(user_id: 6, genre_id: 1, location_id: 1, image_url: '/images/event_2.jpg', name: 'Celebrate Jojo 2020', start: '2020-11-20 10:00:00', end: '2020-11-21 19:00:00', max_attendees: 50, description: 'JoJo\'s Bizarre Adventure is a Japanese manga series written and illustrated by Hirohiko Araki. Come and experience the madness of Jojo\'s adventure world.
Mauris porttitor consectetur faucibus. Etiam faucibus, massa non consequat commodo, turpis lectus vehicula ante, vitae congue ipsum enim ut metus. Mauris a nisi ac quam porttitor congue. Suspendisse risus tortor, suscipit quis nisl et, dapibus porttitor purus. Quisque id volutpat justo, non tempor magna. Nulla euismod eget orci at vehicula. ', accepting_talent: false)

Event.create!(user_id: 3, genre_id: 1, location_id: 5, image_url: '/images/event_3.jpeg', name: 'Demon Slayer', start: '2021-01-01 10:00:00', end: '2021-01-02 19:00:00', max_attendees: 50, description: 'Cosplayers welcome! Join us at this event to share our love and watch the 1st episode of season 3 together! Etiam a rutrum dolor.
Maecenas tincidunt magna ornare pretium interdum. Vivamus eu dui nec mauris consequat rutrum. Etiam arcu purus, posuere non nunc et, accumsan tincidunt neque. Pellentesque vitae consequat eros. Nulla non justo urna. Nam nibh ipsum, dignissim sit amet nunc eu, pharetra eleifend diam.', accepting_talent: false)

Event.create!(user_id: 9, genre_id: 1, location_id: 2, image_url: '/images/event_4.jpg', name: 'Volleyball Love!', start: '2020-10-21 10:00:00', end: '2020-10-23 19:00:00', max_attendees: 20, description: 'Celebrating the new season, we are going to have some volleyball matches and watch the show after our games!
Mauris porttitor consectetur faucibus. Etiam faucibus, massa non consequat commodo, turpis lectus vehicula ante, vitae congue ipsum enim ut metus. Mauris a nisi ac quam porttitor congue. Suspendisse risus tortor, suscipit quis nisl et, dapibus porttitor purus. Quisque id volutpat justo, non tempor magna. Nulla euismod eget orci at vehicula. ', accepting_talent: false)

Event.create!(user_id: 4, genre_id: 2, location_id: 1, image_url: '/images/event_5.jpg', name: 'Friday Magic!', start: '2020-10-09 10:00:00', end: '2020-10-10 19:00:00', max_attendees: 40, description: 'Come join us to draft a deck and battle each other!
We do this every Friday! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis congue magna ut pulvinar. Integer porttitor risus eu diam aliquam maximus. Sed vestibulum purus semper, eleifend elit eget, bibendum nisi. Sed commodo dolor vitae justo tempus hendrerit. Vivamus mollis, magna eget tempor laoreet, neque risus pulvinar erat, vel porttitor metus dolor non lacus. Duis elementum lacus nec bibendum dictum. Suspendisse augue ante, rhoncus quis facilisis nec, varius quis magna. ', accepting_talent: false)

Event.create!(user_id: 4, genre_id: 2, location_id: 1, image_url: '/images/event_6.jpg', name: 'Friday Magic!', start: '2020-10-16 10:00:00', end: '2020-10-17 19:00:00', max_attendees: 40, description: 'Come join us to draft a deck and battle each other! We do this every Friday!
   Etiam a rutrum dolor. Maecenas tincidunt magna ornare pretium interdum. Vivamus eu dui nec mauris consequat rutrum. Etiam arcu purus, posuere non nunc et, accumsan tincidunt neque. Pellentesque vitae consequat eros. Nulla non justo urna. Nam nibh ipsum, dignissim sit amet nunc eu, pharetra eleifend diam.', accepting_talent: false)

Event.create!(user_id: 11, genre_id: 2, location_id: 3, image_url: '/images/event_7.jpg', name: 'EDH Championship', start: '2020-11-10 10:00:00', end: '2020-11-11 19:00:00', max_attendees: 50, description: 'Bring your favourite commander deck and we shall see who\'s the best!
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis congue magna ut pulvinar. Integer porttitor risus eu diam aliquam maximus. Sed vestibulum purus semper, eleifend elit eget, bibendum nisi. Sed commodo dolor vitae justo tempus hendrerit. Vivamus mollis, magna eget tempor laoreet, neque risus pulvinar erat, vel porttitor metus dolor non lacus. Duis elementum lacus nec bibendum dictum. Suspendisse augue ante, rhoncus quis facilisis nec, varius quis magna. ', accepting_talent: false)

Event.create!(user_id: 13, genre_id: 2, location_id: 2, image_url: '/images/event_8.jpeg', name: 'Stardard 101!', start: '2020-12-02 10:00:00', end: '2020-12-03 19:00:00', max_attendees: 50, description: 'Want to learn about Magic The Gathering? Join us for some basic and get a starter deck to play with!
 Mauris porttitor consectetur faucibus. Etiam faucibus, massa non consequat commodo, turpis lectus vehicula ante, vitae congue ipsum enim ut metus. Mauris a nisi ac quam porttitor congue. Suspendisse risus tortor, suscipit quis nisl et, dapibus porttitor purus. Quisque id volutpat justo, non tempor magna. Nulla euismod eget orci at vehicula. ', accepting_talent: false)

Event.create!(user_id: 8, genre_id: 3, location_id: 5, image_url: '/images/event_9.jpg', name: 'Marvel Universe!', start: '2020-12-04 10:00:00', end: '2020-12-05 19:00:00', max_attendees: 100, description: 'Hulk? Deadpool? Ghost? Groot? Daredevil? You name it, we have it! Come check it out! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis congue magna ut pulvinar. Integer porttitor risus eu diam aliquam maximus. Sed vestibulum purus semper, eleifend elit eget, bibendum nisi. Sed commodo dolor vitae justo tempus hendrerit. Vivamus mollis, magna eget tempor laoreet, neque risus pulvinar erat, vel porttitor metus dolor non lacus. Duis elementum lacus nec bibendum dictum. Suspendisse augue ante, rhoncus quis facilisis nec, varius quis magna. ', accepting_talent: false)

Event.create!(user_id: 4, genre_id: 3, location_id: 3, image_url: '/images/event_10.png', name: 'Amazing! Spiderman!', start: '2020-12-12 10:00:00', end: '2020-12-13 19:00:00', max_attendees: 100, description: 'Spiderman, Spiderman!
Does whatever a spider he can.
Spins a web any size,
Catches thieves, just like flies.
Look out! Here comes the Spiderman!', accepting_talent: false)

Event.create!(user_id: 5, genre_id: 3, location_id: 4, image_url: '/images/event_11.jpg', name: 'Justice!', start: '2020-12-22 10:00:00', end: '2020-12-23 19:00:00', max_attendees: 200, description: 'For decades, the Justice League has saved humanity from the worst threats it has ever faced, from alien warlords to ancient demons and powerful sorcerers, to the God of Evil himself, Darkseid. And every time, they have overcome the odds and saved the human race. Etiam a rutrum dolor. Maecenas tincidunt magna ornare pretium interdum. Vivamus eu dui nec mauris consequat rutrum. Etiam arcu purus, posuere non nunc et, accumsan tincidunt neque. Pellentesque vitae consequat eros. Nulla non justo urna. Nam nibh ipsum, dignissim sit amet nunc eu, pharetra eleifend diam.', accepting_talent: false)

Event.create!(user_id: 3, genre_id: 3, location_id: 4, image_url: '/images/event_12.jpg', name: 'Hydra Party!', start: '2020-12-07 10:00:00', end: '2020-12-09 19:00:00', max_attendees: 20, description: 'Hydra is a loyal, imaginative and good-natured hydra who is prone to imagining fantasy lives, including being an author, a college student known as "Joe Cool", an attorney and a British World War I flying ace. He is perhaps best known in this last persona, wearing an aviator\'s helmet and goggles and a scarf while carrying a swagger stick (like a stereotypical British Army officer of World War I and II).', accepting_talent: false)

Event.create!(user_id: 4, genre_id: 4, location_id: 1, image_url: '/images/event_13.png', name: 'Cute Kittens!', start: '2020-10-11 10:00:00', end: '2020-10-12 19:00:00', max_attendees: 10, description: 'My first handcrafting event! Come see my art and learn how to make yours. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis congue magna ut pulvinar. Integer porttitor risus eu diam aliquam maximus. Sed vestibulum purus semper, eleifend elit eget, bibendum nisi. Sed commodo dolor vitae justo tempus hendrerit. Vivamus mollis, magna eget tempor laoreet, neque risus pulvinar erat, vel porttitor metus dolor non lacus. Duis elementum lacus nec bibendum dictum. Suspendisse augue ante, rhoncus quis facilisis nec, varius quis magna. ', accepting_talent: false)

Event.create!(user_id: 1, genre_id: 4, location_id: 2, image_url: '/images/event_14.jpeg', name: 'Knitting fun!', start: '2020-11-07 10:00:00', end: '2020-11-09 19:00:00', max_attendees: 20, description: 'I am going to hold a small knitting class, if you know the basics and want to get better, bring your yarn and needle! Mauris porttitor consectetur faucibus. Etiam faucibus, massa non consequat commodo, turpis lectus vehicula ante, vitae congue ipsum enim ut metus. Mauris a nisi ac quam porttitor congue. Suspendisse risus tortor, suscipit quis nisl et, dapibus porttitor purus. Quisque id volutpat justo, non tempor magna. Nulla euismod eget orci at vehicula. Sed vitae posuere urna. Morbi vehicula blandit rhoncus. Sed vel pellentesque diam, sed malesuada orci. Aenean faucibus ornare or', accepting_talent: false)

Event.create!(user_id: 1, genre_id: 4, location_id: 3, image_url: '/images/event_15.jpeg', name: 'Perfect Fit', start: '2020-11-29 10:00:00', end: '2020-11-30 19:00:00', max_attendees: 5, description: 'Spend your weekend with us and we will make sure you walk away with a pair of perfect fits. Mauris porttitor consectetur faucibus. Etiam faucibus, massa non consequat commodo, turpis lectus vehicula ante, vitae congue ipsum enim ut metus. Mauris a nisi ac quam porttitor congue. Suspendisse risus tortor, suscipit quis nisl et, dapibus porttitor purus. Quisque id volutpat justo, non tempor magna. Nulla euismod eget orci at vehicula. Sed vitae posuere urna. Morbi vehicula blandit rhoncus. Sed vel pellentesque diam, sed malesuada orci. Aenean faucibus ornare or', accepting_talent: false)

Event.create!(user_id: 12, genre_id: 5, location_id: 1, image_url: '/images/event_16.jpg', name: 'Ranked Battles!', start: '2020-10-15 10:00:00', end: '2020-10-17 19:00:00', max_attendees: 20, description: 'Pokémon Sword and Pokémon Shield Ranked Battles October Season Is Here
Battle your fellow Trainers to move up the leaderboard and earn helpful in-game rewards. Mauris porttitor consectetur faucibus. Etiam faucibus, massa non consequat commodo, turpis lectus vehicula ante, vitae congue ipsum enim ut metus. Mauris a nisi ac quam porttitor congue. Suspendisse risus tortor, suscipit quis nisl et, dapibus porttitor purus. Quisque id volutpat justo, non tempor magna. Nulla euismod eget orci at vehicula. Sed vitae posuere urna. Morbi vehicula blandit rhoncus. Sed vel pellentesque diam, sed malesuada orci. Aenean faucibus ornare or', accepting_talent: false)

Event.create!(user_id: 12, genre_id: 5, location_id: 1, image_url: '/images/event_17.jpg', name: 'Squad Strike Teams 3 vs 3!', start: '2020-10-26 10:00:00', end: '2020-10-27 19:00:00', max_attendees: 50, description: 'Gather your team and compete in this 3 vs 3 championship! Mauris porttitor consectetur faucibus. Etiam faucibus, massa non consequat commodo, turpis lectus vehicula ante, vitae congue ipsum enim ut metus. Mauris a nisi ac quam porttitor congue. Suspendisse risus tortor, suscipit quis nisl et, dapibus porttitor purus. Quisque id volutpat justo, non tempor magna. Nulla euismod eget orci at vehicula. Sed vitae posuere urna. Morbi vehicula blandit rhoncus. Sed vel pellentesque diam, sed malesuada orci. Aenean faucibus ornare or', accepting_talent: false)

Event.create!(user_id: 3, genre_id: 5, location_id: 4, image_url: '/images/event_18.jpg', name: 'ASL Season 10 Final!', start: '2020-12-05 10:00:00', end: '2020-12-06 19:00:00', max_attendees: 200, description: 'The AfreecaTV Starleague Season 10 (아프리카TV 스타리그 시즌10) is coming to an end! Come watch the final and cheer for your favourite race! Etiam a rutrum dolor. Maecenas tincidunt magna ornare pretium interdum. Vivamus eu dui nec mauris consequat rutrum. Etiam arcu purus, posuere non nunc et, accumsan tincidunt neque. Pellentesque vitae consequat eros. Nulla non justo urna. Nam nibh ipsum, dignissim sit amet nunc eu, pharetra eleifend diam.', accepting_talent: false)

Event.create!(user_id: 4, genre_id: 5, location_id: 1, image_url: '/images/event_19.jpg', name: 'Van TI', start: '2020-11-25 10:00:00', end: '2020-11-27 19:00:00', max_attendees: 100, description: 'Are you disappointed that TI was cancelled? Us too! Come play and we will have our own Van TI instead!
Mauris porttitor consectetur faucibus. Etiam faucibus, massa non consequat commodo, turpis lectus vehicula ante, vitae congue ipsum enim ut metus. Mauris a nisi ac quam porttitor congue. Suspendisse risus tortor, suscipit quis nisl et, dapibus porttitor purus. Quisque id volutpat justo, non tempor magna. Nulla euismod eget orci at vehicula. Sed vitae posuere urna. Morbi vehicula blandit rhoncus. Sed vel pellentesque diam, sed malesuada orci. Aenean faucibus ornare or', accepting_talent: false)

Event.create!(user_id: 5, genre_id: 3, location_id: 1, image_url: '/images/event_20.jpg', name: 'Marvel Vancouver', start: '2020-10-30 10:00:00', end: '2020-10-31 19:00:00', max_attendees: 50, description: 'Bring your beloved comic books and be ready to exchange for someone else\'s favourites! We aim to promote comic culture in Vancouver! Love and Share!
Mauris porttitor consectetur faucibus. Etiam faucibus, massa non consequat commodo, turpis lectus vehicula ante, vitae congue ipsum enim ut metus. Mauris a nisi ac quam porttitor congue. Suspendisse risus tortor, suscipit quis nisl et, dapibus porttitor purus. Quisque id volutpat justo, non tempor magna. Nulla euismod eget orci at vehicula. ', accepting_talent: false)

TalentProfile.create!(user_id: 1, genre_id: 1, location_id: 1, image_url: '/images/talent_1.jpeg', description: 'Speed runner! I am open for charity events, contact me!  Aenean viverra est in blandit gravida. Integer bibendum vestibulum ante, quis scelerisque magna vulputate quis. Nulla purus nulla, feugiat ac ante quis, rhoncus sagittis nunc. Nam condimentum velit non sapien hendrerit, vestibulum semper augue facilisis. ', personal_link: 'https://www.twitch.tv/mizkif', open_for_booking: true, name: 'Jimothy Speed')

TalentProfile.create!(user_id: 2, genre_id: 2, location_id: 2, image_url: '/images/talent_2.jpeg', description: 'Need an MC for your event? I can keep the crowd going~ Integer tincidunt leo non augue vulputate tempor. Nam a pretium ipsum. Duis vehicula sodales tortor a suscipit. Maecenas nisi lacus, porttitor et gravida venenatis, viverra at nulla. Phasellus a sapien purus. Vivamus suscipit mollis lacus, ut venenatis risus porta et. Nam ut metus vitae lectus lacinia gravida eu ut nunc.', personal_link: 'https://www.twitch.tv/sykkuno', open_for_booking: true, name: 'Kyuuno')

TalentProfile.create!(user_id: 2, genre_id: 1, location_id: 1, image_url: '/images/talent_3.jpeg', description: 'Want some performance game demos? I am your player! Maecenas et faucibus ante, non ornare odio. Nullam vitae risus dolor. Sed congue diam interdum est porta, in ullamcorper enim scelerisque. Aenean bibendum semper augue a vestibulum. Pellentesque accumsan eros eros, eget ornare neque scelerisque eu. Donec ut pulvinar felis. ', personal_link: 'https://www.twitch.tv/esl_csgo', open_for_booking: true, name: 'CSGO')

TalentProfile.create!(user_id: 3, genre_id: 3, location_id: 1, image_url: '/images/talent_4.jpeg', description: 'Game designer! I like to talk about video games and developers.  Nam sed placerat ligula, at mattis tortor. Integer rutrum tellus ornare finibus ullamcorper. Pellentesque convallis quam non tellus ultrices pulvinar. In gravida vehicula neque, sed condimentum sapien tempus in. Integer aliquet lobortis arcu ut pulvinar. Curabitur at ipsum tristique augue hendrerit faucibus eu eu leo.', personal_link: 'https://twitter.com/elbaz_eran', open_for_booking: true, name: 'Code Games')

TalentProfile.create!(user_id: 4, genre_id: 4, location_id: 1, image_url: '/images/talent_5.jpeg', description: 'You want me for your event, you know it. Fusce laoreet et eros sed accumsan. Integer finibus sit amet ex sed iaculis. Suspendisse malesuada, diam eget imperdiet consequat, est elit varius nisl, consequat imperdiet magna massa in lorem. Nulla congue enim et orci pellentesque, sit amet sagittis purus faucibus. ', personal_link: 'https://www.youtube.com/channel/UC4YaOt1yT-ZeyB0OmxHgolA', open_for_booking: true, name: 'AiChan')

TalentProfile.create!(user_id: 5, genre_id: 2, location_id: 2, image_url: '/images/talent_6.jpeg', description: 'I make monster music that will rock your events! Pellentesque pulvinar odio quis nisi tempor, ac tristique quam ullamcorper. Ut posuere leo in massa ornare, ut elementum magna cursus. Donec in magna eu neque posuere accumsan. Sed sit amet ante sit amet sapien mattis euismod. Suspendisse ut augue accumsan, vulputate eros vitae, hendrerit tortor.', personal_link: 'https://soundcloud.com/monstercat', open_for_booking: true, name: 'MonsCat')

TalentProfile.create!(user_id: 5, genre_id: 1, location_id: 2, image_url: '/images/talent_7.jpeg', description: 'Hololive-EN artist. Sharrrrrrrrrk! Duis scelerisque felis non nunc tristique efficitur. Donec congue a purus eget gravida. Etiam commodo arcu eget nisl porttitor gravida. Phasellus ut vulputate ex. Donec iaculis libero est, eu vehicula dui interdum vitae. Duis in quam in nisi dictum molestie et a leo. Aenean venenatis purus tellus, ac ', personal_link: 'https://www.youtube.com/channel/UCoSrY_IQQVpmIRZ9Xf-y93g', open_for_booking: true, name: 'Gawr Gura')

TalentProfile.create!(user_id: 1, genre_id: 2, location_id: 3, image_url: '/images/talent_8.jpeg', description: 'Want some music for your event? I am your best pick! feugiat ac ante quis, rhoncus sagittis nunc. Nam condimentum velit non sapien hendrerit, vestibulum semper augue facilisis. Donec nec metus eget erat cursus feugiat. Aenean feugiat odio sit amet lacus convallis, mollis gravida nibh iaculis. Suspendisse vestibulum laoreet magna, id interdum dolor volutpat non. Integer lectus tortor, ultricies sed eros ac, placerat commodo erat.', personal_link: 'https://soundcloud.com/travisscott-2', open_for_booking: true, name: 'Travis S')

TalentProfile.create!(user_id: 2, genre_id: 3, location_id: 1, image_url: '/images/talent_9.jpeg', description: 'I am crazy about anime and manga, are you not? Cosplay talent. I am also a magic user LOL. You get the joke! I play blue and Taferi, so please feel free to invite me to your magic event! I will make sure people learn some tricks!', personal_link: 'https://twitter.com/TastyTasteless', open_for_booking: true, name: 'T@astLeSS')

TalentProfile.create!(user_id: 3, genre_id: 2, location_id: 5, image_url: '/images/talent_10.jpeg', description: 'I draw small robots and they make people happy! Sed congue diam interdum est porta, in ullamcorper enim scelerisque. Aenean bibendum semper augue a vestibulum. Pellentesque accumsan eros eros, eget ornare neque scelerisque eu. Donec ut pulvinar felis. Phasellus erat ex, congue ac ullamcorper in, vehicula quis orci. ', personal_link: 'https://twitter.com/smolrobots', open_for_booking: true, name: 'Small RObots')

Gig.create!(talent_profile_id: 2, event_id: 1, description: 'Would you care to join us?', accepted: nil, rejected: nil)
Gig.create!(talent_profile_id: 3, event_id: 1, description: 'I want to invite you to our event!', accepted: nil, rejected: nil)
Gig.create!(talent_profile_id: 4, event_id: 1, description: '', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 5, event_id: 1, description: 'I enjoyed your show and I want you in ours!', accepted: true, rejected: nil)

Gig.create!(talent_profile_id: 1, event_id: 2, description: 'Would you care to join us?', accepted: nil, rejected: nil)
Gig.create!(talent_profile_id: 3, event_id: 2, description: '', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 5, event_id: 2, description: 'Will you perform?', accepted: nil, rejected: nil)
Gig.create!(talent_profile_id: 7, event_id: 2, description: 'Are you free next month?', accepted: nil, rejected: nil)

Gig.create!(talent_profile_id: 1, event_id: 3, description: 'Would you care to join us?', accepted: nil, rejected: nil)
Gig.create!(talent_profile_id: 2, event_id: 3, description: 'Are you free next month?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 6, event_id: 3, description: 'Will you perform?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 8, event_id: 3, description: '', accepted: true, rejected: nil)

Gig.create!(talent_profile_id: 7, event_id: 4, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 6, event_id: 4, description: 'Are you free next month?', accepted: true, rejected: nil)

Gig.create!(talent_profile_id: 5, event_id: 5, description: 'Will you perform?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 6, event_id: 5, description: '', accepted: true, rejected: nil)

Gig.create!(talent_profile_id: 2, event_id: 1, description: '', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 2, event_id: 6, description: '', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 2, event_id: 8, description: '', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 2, event_id: 13, description: '', accepted: true, rejected: nil)

Gig.create!(talent_profile_id: 1, event_id: 14, description: '', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 1, event_id: 9, description: '', accepted: nil, rejected: nil)
Gig.create!(talent_profile_id: 1, event_id: 8, description: '', accepted: true, rejected: nil)

Gig.create!(talent_profile_id: 10, event_id: 1, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 10, event_id: 2, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 10, event_id: 3, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 10, event_id: 4, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 10, event_id: 5, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 10, event_id: 11, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 10, event_id: 12, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 10, event_id: 13, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 10, event_id: 14, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 10, event_id: 15, description: 'Would you care to join us?', accepted: true, rejected: nil)

Gig.create!(talent_profile_id: 9, event_id: 1, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 9, event_id: 2, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 9, event_id: 3, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 9, event_id: 4, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 9, event_id: 5, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 1, event_id: 11, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 1, event_id: 12, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 1, event_id: 13, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 1, event_id: 14, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 1, event_id: 15, description: 'Would you care to join us?', accepted: true, rejected: nil)

Gig.create!(talent_profile_id: 7, event_id: 3, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 8, event_id: 7, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 7, event_id: 6, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 8, event_id: 18, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 7, event_id: 16, description: 'Would you care to join us?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 8, event_id: 17, description: 'Would you care to join us?', accepted: true, rejected: nil)

Registration.create!(user_id: 12, event_id: 1)
Registration.create!(user_id: 12, event_id: 1)
Registration.create!(user_id: 13, event_id: 1)
Registration.create!(user_id: 14, event_id: 1)
Registration.create!(user_id: 15, event_id: 1)
Registration.create!(user_id: 15, event_id: 2)
Registration.create!(user_id: 12, event_id: 3)
Registration.create!(user_id: 12, event_id: 4)
Registration.create!(user_id: 13, event_id: 5)
Registration.create!(user_id: 14, event_id: 6)
Registration.create!(user_id: 15, event_id: 7)
Registration.create!(user_id: 15, event_id: 8)
Registration.create!(user_id: 8, event_id: 2)
Registration.create!(user_id: 13, event_id: 8)
Registration.create!(user_id: 19, event_id: 9)
Registration.create!(user_id: 10, event_id: 1)
Registration.create!(user_id: 8, event_id: 1)
Registration.create!(user_id: 12, event_id: 2)

Registration.create!(user_id: 17, event_id: 1)
Registration.create!(user_id: 17, event_id: 2)
Registration.create!(user_id: 17, event_id: 3)
Registration.create!(user_id: 17, event_id: 4)
Registration.create!(user_id: 17, event_id: 5)
Registration.create!(user_id: 17, event_id: 6)
Registration.create!(user_id: 17, event_id: 7)
Registration.create!(user_id: 17, event_id: 8)
Registration.create!(user_id: 17, event_id: 9)
Registration.create!(user_id: 17, event_id: 10)
Registration.create!(user_id: 17, event_id: 11)
Registration.create!(user_id: 17, event_id: 12)
Registration.create!(user_id: 17, event_id: 13)
Registration.create!(user_id: 17, event_id: 14)
Registration.create!(user_id: 17, event_id: 15)
Registration.create!(user_id: 17, event_id: 16)
Registration.create!(user_id: 17, event_id: 17)
Registration.create!(user_id: 17, event_id: 18)

Registration.create!(user_id: 19, event_id: 1)
Registration.create!(user_id: 19, event_id: 2)
Registration.create!(user_id: 19, event_id: 3)
Registration.create!(user_id: 19, event_id: 4)
Registration.create!(user_id: 19, event_id: 5)
Registration.create!(user_id: 19, event_id: 6)
Registration.create!(user_id: 19, event_id: 7)
Registration.create!(user_id: 19, event_id: 8)
Registration.create!(user_id: 19, event_id: 9)
Registration.create!(user_id: 19, event_id: 10)
Registration.create!(user_id: 19, event_id: 11)
Registration.create!(user_id: 19, event_id: 12)
Registration.create!(user_id: 19, event_id: 13)
Registration.create!(user_id: 19, event_id: 14)
Registration.create!(user_id: 19, event_id: 15)
Registration.create!(user_id: 19, event_id: 16)
Registration.create!(user_id: 19, event_id: 19)
Registration.create!(user_id: 19, event_id: 18)

Registration.create!(user_id: 20, event_id: 1)
Registration.create!(user_id: 20, event_id: 2)
Registration.create!(user_id: 20, event_id: 3)
Registration.create!(user_id: 20, event_id: 4)
Registration.create!(user_id: 20, event_id: 5)
Registration.create!(user_id: 20, event_id: 6)
Registration.create!(user_id: 20, event_id: 7)
Registration.create!(user_id: 20, event_id: 8)
Registration.create!(user_id: 20, event_id: 9)
Registration.create!(user_id: 20, event_id: 10)
Registration.create!(user_id: 20, event_id: 11)
Registration.create!(user_id: 20, event_id: 12)
Registration.create!(user_id: 20, event_id: 13)
Registration.create!(user_id: 20, event_id: 14)
Registration.create!(user_id: 20, event_id: 15)
Registration.create!(user_id: 20, event_id: 16)
Registration.create!(user_id: 20, event_id: 19)
Registration.create!(user_id: 20, event_id: 18)

Registration.create!(user_id: 11, event_id: 1)
Registration.create!(user_id: 11, event_id: 2)
Registration.create!(user_id: 11, event_id: 3)
Registration.create!(user_id: 11, event_id: 4)
Registration.create!(user_id: 11, event_id: 5)
Registration.create!(user_id: 11, event_id: 6)
Registration.create!(user_id: 11, event_id: 7)
Registration.create!(user_id: 11, event_id: 8)
Registration.create!(user_id: 11, event_id: 9)
Registration.create!(user_id: 11, event_id: 10)

Registration.create!(user_id: 7, event_id: 1)
Registration.create!(user_id: 7, event_id: 2)
Registration.create!(user_id: 7, event_id: 3)
Registration.create!(user_id: 7, event_id: 4)
Registration.create!(user_id: 7, event_id: 5)
Registration.create!(user_id: 7, event_id: 6)
Registration.create!(user_id: 7, event_id: 7)
Registration.create!(user_id: 7, event_id: 8)
Registration.create!(user_id: 7, event_id: 9)
Registration.create!(user_id: 7, event_id: 10)

## Seeds for demo

User.create!(name: 'Blacitea', email: 'blacitea@gmail.com', location_id: 1) # 21
User.create!(name: 'Quinnvoker', email: 'quinnvoker@gmail.com', location_id: 2) # 22
User.create!(name: 'Marisa', email: 'mcr.doig@gmail.com', location_id: 2) # 23

Registration.create!(user_id: 21, event_id: 10)

TalentProfile.create!(user_id: 23, genre_id: 5, location_id: 2, image_url: '/images/talent_marisa.jpg', description: 'Video game commentater/player in Victoria, BC. Preferred genres include RPGs of all kinds, fighting games, turn-based strategy, simulations, and puzzles. Bonus for cat themes!', personal_link: 'https://twitter.com/smolrobots', open_for_booking: true, name: 'Risatronic')

Gig.create!(talent_profile_id: 11, event_id: 16, description: 'Will you perform?', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 11, event_id: 19, description: 'Would you care to join us?', accepted: true, rejected: nil)

Message.create!(sender_id: 0, recipient_id: 23, content: "Marisa: Event 'Best Event Ever!' has been cancelled! :(")
