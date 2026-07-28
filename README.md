# Link Board application

This is application is an extension of the Sample App from
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](https://www.railstutorial.org/)
by [Michael Hartl](https://www.michaelhartl.com), created to further develop
Ruby on Rails skills.

## About

In terms of functionality, the app is intended to resamble the well-know Polish
site [Wykop.pl](https://wykop.pl/)

Current functionality:
- Users can: sign up, log in,  activate account, change password, 
reset password, create posts with image and tags, delete their own posts,
follow and unfollow other users. User can also see how many post he had wrote
and how many users is he following and how many followers is he having.

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
is available jointly under the MT License and the Beeware License. See
[LICENSE.md](LICENSE.md) for details.

## Geting started

To get started with the app, clone the repo and then install the needed gems:

```
$ gem install bundler
$ bundle config set --local without 'production'
$ bundle install
```

Next, migrate the database:
```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:
```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:
```
$ rails server
```

For more information, see the
[*Ruby on Rails Tutorial* book](https://www.railstutorial.org/book).