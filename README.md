# InvalidAuthenticityTokenRescue
Rails 5 default protect_from_forgery is to raise an exception. Some browsers trigger this exception by caching pages. This gem rescues the InvalidAuthenticityToken exception, triggers ExceptionNotifier, and redirects to the login page.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'invalid_authenticity_token_rescue'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install invalid_authenticity_token_rescue
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
