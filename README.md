# README

## EventBrite

Made for Ruby 2.5.1 Rails 5.2.3

PRESENTATION

The Event Brite project gathers is an app where you can create and share events. This is a V1, you can create an account and create your events. You'll soon be able to participate and pay for an event.

Some alert about what you're doing and created/destroying things might not work.

The app is also online on https://eventbrite01.herokuapp.com/

SET-UP
```
$ git clone https://github.com/Benjam-BB/eventbrite01
```
Go to the folder and run 
```
$ bundle install
```
> **Watch out** : check that none database on your computer has the same name than mine. If this is the case go to config > database.yml and change the names of each database.

Initialize the database, active the migrations and run the seed :
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```
RUNNING

Launch your server :

```
$ shotgun -p 3000
```


Open a browser and go to : http://localhost:3000 

Navigate and eenjoy the events

If you want to contact me, my details are in the contact page.
