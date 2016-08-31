# Simple react-rails demo app

A simple app that integrates Rails 5 with the react-rails gem.

Originally created for a talk at the [Ann Arbor Ruby Meetup](http://a2rb.org/).

Slides for that talk are available [here](http://goo.gl/ttFO3x).

## Setup

Make sure you have rails and postgres installed.  Clone repo into a new directory.  Copy the .env.example file to create a .env file with your local postgres credentials.  Then, setup the database and start the server.

```
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ rails s
```

## Other resources

[Live demo on heroku](https://simple-react-rails-app.herokuapp.com/)

[Rails.js on Rails from RailsConf 2015](https://www.youtube.com/watch?v=kTSsZrub5iE)

[Facebook React Docs](https://facebook.github.io/react/index.html)

[react-rails gem](https://github.com/reactjs/react-rails)

[react_on_rails gem](https://github.com/shakacode/react_on_rails)

[sprockets-coffee-react gem](https://github.com/jsdf/sprockets-coffee-react)
