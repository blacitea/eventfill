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
Genre.create!(name: 'Collectable Card Game')
Genre.create!(name: 'Comics')
Genre.create!(name: 'Handcraft')
Genre.create!(name: 'Tabletop Games')
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
User.create!(name: 'Prudence Humpalot', email: 'prudence@cats.com', location_id: 3)
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
User.create!(name: 'Muirs Smith', email: 'smithm@cool.com', location_id: 1)
User.create!(name: 'Dixie Baker', email: 'sally@ymail.com', location_id: 1)

Message.create!(sender_id: 1, recipient_id: 2, content: 'Hey are you going this Sat?')
Message.create!(sender_id: 2, recipient_id: 1, content: 'Yeah sure!')
Message.create!(sender_id: 1, recipient_id: 2, content: 'Nice I will get ticket now!')
Message.create!(sender_id: 2, recipient_id: 1, content: 'Sounds good!')


Message.create!(sender_id: 2, recipient_id: 3, content: 'Hi, are you busy?')
Message.create!(sender_id: 3, recipient_id: 2, content: 'No, what\'s up')
Message.create!(sender_id: 2, recipient_id: 3, content: 'Are you performing tomorrow?')
Message.create!(sender_id: 3, recipient_id: 2, content: 'Yes! You gonna come watch?')

Message.create!(sender_id: 4, recipient_id: 3, content: 'Hey I really like your show last week!')
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








Event.create!(user_id: 1, genre_id: 1, location_id: 1, image_url: 'https://i.pcmag.com/imagery/lineups/06PiprC5eiYhlpaNS6N0sbP-1.1569492872.fit_lim.fit_lim.size_956x99999.jpg', name: 'GameCon Vancouver 2020', start: '2020-10-13 12:00:00', end: '2020-10-13 22:00:00', max_attendees: 200, description: 'Come to this!', accepting_talent: true)
Event.create!(user_id: 1, genre_id: 3, location_id: 1, image_url: 'https://www.thespruce.com/thmb/Pot7VQ8sCBiR4virPcehRZYbGq8=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/-assortment-of-scrapbooking-tools-including-colored-paper--pens--and-scissors-click-below-for-more-of-my-scrapbooking-and-arts-and-crafts-images--936822170-ed08f5a6b9d74a0191f16a6f3dd5a272.jpg', name: 'CraftCon Vancouver 2020', start: '2020-09-20 10:00:00', end: '2020-09-20 19:00:00', max_attendees: 120, description: 'Come to this also!', accepting_talent: false)

TalentProfile.create!(user_id: 1, genre_id: 1, location_id: 1, image_url: 'https://image.shutterstock.com/mosaic_250/2797510/600200732/stock-photo-portrait-of-happy-fashionable-handsome-man-in-jeans-shirt-crossing-hands-and-look-at-camera-600200732.jpg', description: 'Game designer', personal_link: 'me@games.com', open_for_booking: true, name: 'JimothyGames')
TalentProfile.create!(user_id: 1, genre_id: 2, location_id: 1, image_url: 'https://image.shutterstock.com/mosaic_250/2797510/600200732/stock-photo-portrait-of-happy-fashionable-handsome-man-in-jeans-shirt-crossing-hands-and-look-at-camera-600200732.jpg', description: 'Comic artist', personal_link: 'me@comics.com', open_for_booking: true, name: 'JimothyComics')
TalentProfile.create!(user_id: 3, genre_id: 3, location_id: 3, image_url: 'https://static01.nyt.com/images/2019/09/04/business/04chinaclone-01/04chinaclone-01-videoSixteenByNineJumbo1600.jpg', description: 'Crafter', personal_link: 'me@crafts.com', open_for_booking: false, name: 'Prudence Craftwell')

Gig.create!(talent_profile_id: 2, event_id: 1, description: 'Performing, ya!', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 3, event_id: 2, description: 'Drawings galore~', accepted: nil, rejected: true)

Registration.create!(user_id: 2, event_id: 1)
Registration.create!(user_id: 2, event_id: 2)
Registration.create!(user_id: 3, event_id: 1)
Registration.create!(user_id: 4, event_id: 1)
Registration.create!(user_id: 5, event_id: 1)
Registration.create!(user_id: 5, event_id: 2)
