# Expert Potato
> Human's missing chat app 

Required Environment / Setup
-----------------------

* RVM/rbenv - clearly the easiest way to manage your ruby environment -
* Ruby 2.3.x
* PostgreSQL
* Redis

Get inside the project's root

### Using RVM
If you're using RVM then you might want to run<br>
`rvm use --create --ruby-version 2.3.1@expert-potato`

Change your ruby version according to what you have on your machine, the Gemfile enforces a minimum of 2.3.1
but you could always changes it to what suits you more.

Installation
-----------------------
To start dance, start by copying _config/database.yml.sample into config/database.yml_<br>
`cp config/database.yml.sample config/database.yml`

And update the database configuration settings according to your environment, then bundle

`bundle install`

After bundler finishes installing, migrate the database and run the server.

`rake db:migrate`
`foreman start`

## Tests
you could run the test from the root of the app with `rake`

### Running Demo ?
[Here you go..](https://expert-potato.herokuapp.com)
