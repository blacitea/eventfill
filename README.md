# Eventfill - Event Coordination App
Eventfill is an app to connect event planners, talents (performers, makers, people of interest, vendors, you name it!), and would-be event-goers. Users can make events and/or talent profiles or simply register to attend events.

## Table of contents
* [General info](#general-info)
* [Screenshots](#screenshots)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)

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
* Browse all events, or filter by location/type
* Browse all talents, or filter by location/type
* Create and update your own events and/or talent profiles
* Messaging system, including automatic messages to attendees and scheduled talents if event is cancelled
* Ability to invite talents to your own events
* Register to attend an event and later cancel registration if desired
* Quick view of your own events, scheduled gigs, and events you are attending
* Accept or reject invitations to appear at events

To-do list:
* Better notification UI
* Enable talent to approach organizers 
* Preview on hover 
* Instant messaging and live video chat
* Message unread status/count
* Deployment
* Ticketing/payment system

## Status
Project is: _in progress_ - scope implementation limited by available time

## Inspiration
Passionate about your art but have no where to showcase it?
Love hosting events and // Updating //

## Contact
Created by 
- Angel - Frontend - [@blacitea](https://github.com/blacitea)
- Marisa - Backend API - [@risatronic](https://github.com/risatronic)
- Quinn - Frontend - [@quinnvoker](https://github.com/quinnvoker)

Feel free to contact us!
