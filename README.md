# Eventfill - Event Coordination App

Eventfill is an app to connect event planners, talents (performers, makers, people of interest, vendors, you name it!), and would-be event-goers. Users can make events and/or talent profiles or simply register to attend events.

## Table of contents

- [General info](#general-info)
- [Screenshots](#screenshots)
- [Technologies](#technologies)
- [Setup](#setup)
- [Features](#features)
- [Status](#status)
- [Inspiration](#inspiration)
- [Contact](#contact)

## General info

Created as a final project for the Lighthouse Labs Web Development Bootcamp program, we wanted to create an app using technologies we had had less exposure to, such as React and Ruby on Rails. We had many ideas that unfortunately were not implemented due to time constraints. This app allowed us all to come together and work on areas personally important to us in our growth as developers.

## Screenshots

![Example screenshot](./img/screenshot.png)

## Technologies

### Technologies Used

- React.js
- Ruby on Rails
- PostgreSQL
- SCSS

### Requirements

- Node
- Ruby 2.6.2
- PostgreSQL

## Setup

1. Clone this repo
2. Install rails and dependencies with `bundle`
3. Create a psql database named `rails_project_development`
4. Load DB schema with `rake db:schema:load`
5. Reset and seed DB via `rake db:reset`
6. Run api server with `rails s`
7. In another terminal, update client submodule with `git submodule update --init --recursive`
8. Change to client directory with `cd client`
9. Install client dependencies with `npm install`
10. Run client with `npm start`
11. If it does not open automatically, open `localhost:3000` in your browser

If you wish to update the client after initial setup, run `git submodule update --remote --merge`

## Features

- Browse all events, or filter by location/type
- Browse all talents, or filter by location/type
- Create and update your own events and/or talent profiles
- Messaging system, including automatic messages to attendees and scheduled talents if event is cancelled
- Ability to invite talents to your own events
- Register to attend an event and later cancel registration if desired
- Quick view of your own events, scheduled gigs, and events you are attending
- Accept or reject invitations to appear at events

To-do list:

- Better notification UI
- Enable talent to approach organizers
- Preview on hover
- Instant messaging and live video chat
- Message unread status/count
- Deployment
- Ticketing/payment system

## Status

Project is: _in progress_ - scope implementation limited by available time

## Inspiration

- Are you passionate about your art and looking for a place to share them with people?
- Are you eager to host events to share something you love and excited to have related talents to perform in them?
- Are you a fan of something and want to connect with other people who share the love?

EVENTFILL is here for you!

Being friends with local event organizers, we learn that for small and medium-size events, you might be able to list your event on the various platforms with relative ease. However, it is not so easy to find talents to match their event. The best way to extend the pool is through networking but with COVID, it becomes almost impossible.

With EVENTFILL, we aim to connect event organizers and small talents to cultivate a local community on small and medium scale events. Through enabling talents to list themselves as open for accepting gigs, an event organizer can send invitations and start networking.

The next step of our project will be to implement a bi-directional system that enables talents to approach organizers and promote their skills, including a live chat (video) for a short meeting, and allow the upload of short video clips of previous performance/work demo.

## Contact

Created by

- Angel - Frontend - [@blacitea](https://github.com/blacitea)
- Marisa - Backend API - [@risatronic](https://github.com/risatronic)
- Quinn - Frontend - [@quinnvoker](https://github.com/quinnvoker)

Feel free to contact us!
