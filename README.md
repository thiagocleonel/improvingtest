# Improving test

Hi! This is the repo that contains the solution for the improving test made by me.
* I used Sinatra instead Rails, because it fits better for the problem, I guess, but I have skills for both.
* I also did not create any tests because of the simplicity of the problem (although I tried).
* The selected database was PostgreSQL



## Configuration
1. You have to configure the webhook of this repo to make the POST request to the host where my application will be running (In: Settings>Webhooks>Edit). **Please be sure to append "/events" to the end of the URL. e.g.: "localhost:4567/events/"**
2. If the bundler is not installed yet, run `gem install bundler`
3. Clone the project and get into the project folder via terminal
4. Run `bundle install`
5. Run `bundle exec rake db:create db:migrate` to create both database and payloads table.
6. From the root of the project, run `ruby app.rb` and you're ready to go(and test it)!

## Gems used in this solution:
* sinatra
* sinatra-activerecord
* rake
* pg
* thin
* byebug


## Contact
Any questions and/or considerations, please contact me at thiagocleonel@gmail.com
