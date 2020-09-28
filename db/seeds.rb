# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

User.destroy_all
Genre.destroy_all
Message.destroy_all
Event.destroy_all
TalentProfile.destroy_all
Gig.destroy_all
Registration.destroy_all

User.create!(name: 'Jimothy Muirs', email: 'jimothy@cool.com', location: 'Vancouver')
User.create!(name: 'Nicola Jones', email: 'nicola@cool.com', location: 'Victoria')
User.create!(name: 'Prudence Catwell', email: 'prudence@cats.com', location: 'Montreal')
User.create!(name: 'Thomas Smith', email: 'thomas@cool.com', location: 'Vancouver')
User.create!(name: 'Sally Baker', email: 'sally@cool.com', location: 'Vancouver')

Genre.create!(name: 'Video Games')
Genre.create!(name: 'Comics')
Genre.create!(name: 'Crafts')
 
Message.create!(sender_id: 1, recipient_id: 2, content: 'Hello', sent_at: '2020-09-07 11:07:39', read_by_recipient: true)
Message.create!(sender_id: 2, recipient_id: 1, content: 'Hey!!', sent_at: '2020-09-07 11:11:11', read_by_recipient: true)
Message.create!(sender_id: 1, recipient_id: 2, content: 'Bye!', sent_at: '2020-09-07 11:27:05', read_by_recipient: false)
Message.create!(sender_id: 2, recipient_id: 1, content: 'Hello', sent_at: '2020-09-07 11:42:09')
Message.create!(sender_id: 3, recipient_id: 2, content: 'Sup', sent_at: '2020-09-07 11:07:39', read_by_recipient: true)
Message.create!(sender_id: 3, recipient_id: 1, content: 'Perform?', sent_at: '2020-09-07 11:07:39')
Message.create!(sender_id: 2, recipient_id: 4, content: 'Commission?', sent_at: '2020-09-07 11:07:39')

Event.create!(user_id: 1, genre_id: 1, image_url: 'https://img.com/image1', start_date: '2020-09-13 12:00:00', end_date: '2020-09-13 22:00:00', max_attendees: 200, location: 'Vancouver', description: 'Come to this!', accepting_talent: true)
Event.create!(user_id: 1, genre_id: 3, image_url: 'https://img.com/image2', start_date: '2020-09-20 10:00:00', end_date: '2020-09-20 19:00:00', max_attendees: 120, location: 'Vancouver', description: 'Come to this also!', accepting_talent: false)

TalentProfile.create!(user_id: 1, image_url: 'https://img.com/image3', genre_id: 1, description: 'Game designer', personal_link: 'me@games.com', open_for_booking: true, open_for_commission: false)
TalentProfile.create!(user_id: 1, image_url: 'https://img.com/image4', genre_id: 2, description: 'Comic artist', personal_link: 'me@comics.com', open_for_booking: true, open_for_commission: true)
TalentProfile.create!(user_id: 3, image_url: 'https://img.com/image5', genre_id: 3, description: 'Crafter', personal_link: 'me@crafts.com', open_for_booking: false, open_for_commission: true)

Gig.create!(talent_profile_id: 2, event_id: 1, time: '2020-09-13 14:00:00', description: 'Performing, ya!', accepted: true, rejected: nil)
Gig.create!(talent_profile_id: 3, event_id: 2, time: '2020-09-20 15:00:00', description: 'Drawings galore~', accepted: nil, rejected: true)

Registration.create!(user_id: 2, event_id: 1)
Registration.create!(user_id: 2, event_id: 2)
Registration.create!(user_id: 3, event_id: 1)
Registration.create!(user_id: 4, event_id: 1)
Registration.create!(user_id: 5, event_id: 1)
Registration.create!(user_id: 5, event_id: 2)
