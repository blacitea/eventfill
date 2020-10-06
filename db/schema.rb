# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_201_006_000_713) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'events', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'genre_id', null: false
    t.integer 'location_id', null: false
    t.string 'image_url', null: false
    t.string 'name', null: false
    t.datetime 'start', null: false
    t.datetime 'end', null: false
    t.integer 'max_attendees', null: false
    t.text 'description', null: false
    t.boolean 'accepting_talent', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.boolean 'cancelled'
    t.index ['genre_id'], name: 'index_events_on_genre_id'
    t.index ['location_id'], name: 'index_events_on_location_id'
    t.index ['user_id'], name: 'index_events_on_user_id'
  end

  create_table 'genres', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'gigs', force: :cascade do |t|
    t.integer 'talent_profile_id', null: false
    t.integer 'event_id', null: false
    t.text 'description'
    t.boolean 'accepted'
    t.boolean 'rejected'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['event_id'], name: 'index_gigs_on_event_id'
    t.index ['talent_profile_id'], name: 'index_gigs_on_talent_profile_id'
  end

  create_table 'locations', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'messages', force: :cascade do |t|
    t.integer 'sender_id', null: false
    t.integer 'recipient_id', null: false
    t.text 'content', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['recipient_id'], name: 'index_messages_on_recipient_id'
    t.index ['sender_id'], name: 'index_messages_on_sender_id'
  end

  create_table 'registrations', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'event_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['event_id'], name: 'index_registrations_on_event_id'
    t.index ['user_id'], name: 'index_registrations_on_user_id'
  end

  create_table 'talent_profiles', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'genre_id', null: false
    t.integer 'location_id', null: false
    t.string 'image_url', null: false
    t.text 'description', null: false
    t.string 'personal_link', null: false
    t.boolean 'open_for_booking', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'name'
    t.index ['genre_id'], name: 'index_talent_profiles_on_genre_id'
    t.index ['location_id'], name: 'index_talent_profiles_on_location_id'
    t.index ['user_id'], name: 'index_talent_profiles_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', null: false
    t.string 'name', null: false
    t.integer 'location_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['location_id'], name: 'index_users_on_location_id'
  end
end
