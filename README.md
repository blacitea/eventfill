# Requirements

- Node
- Ruby 2.6.2
- PostgreSQL

# Setup

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