## HackernewsClone GraphQL API

This  Application is a graphql backend clone for Hackernews using GraphQL

- Users can post url links
- Votes for different URL
- Create an account
- Login

### Ruby version
  - v2.53

### Setup
- CLone this application
- Create application.yml file and add the following variables
```
JWT_SECRET=
PG_USER=
PG_PASSWORD=
```
- Run `rails db:create` to create database
- Run `rails db:migrate` to run migrations
- Run `bundle install` to run all dependencies
- finally run `rails s` to start the server
- visit `localhost:3000/graphiql` to run queries

### Database creation
```
rails db:create
```
* Database initialization
#### Run migration using

```
rails db:migrate
```
* How to run the test suite\
rspec

## Stack
- Ruby on Rails
- GraphQL

## Limitation
Still in Development

## Contribution
- Clone this Repository and raise a pull request

