# InvalidAuthenticityTokenRescue
Rails 5 default protect_from_forgery is to raise an exception. Some browsers trigger this exception by caching pages. This gem rescues the InvalidAuthenticityToken exception, triggers ExceptionNotifier, and redirects to the login page. For more details and steps to reprodcue the problem see this issue: https://github.com/rails/rails/issues/21948

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'invalid_authenticity_token_rescue'
```

Add **rescue_from_invalid_authenticity_token** to your ApplicationController:

```ruby
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from_invalid_authenticity_token
  ...
end
```

Add **skip_before_action** to public forms (optional):

```ruby
class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, on: :create
  ...
end
```

Adding **skip_before_action** is optional but will improve user experience. Rails **protect_from_forgery** is intended to prevent a logged in user's credentials from being maliciously used to submit a form as that user. Publicly accessible forms, like a login page, that do not rely on a currently logged in user are not susceptible to forgery attacks.

Adding **skip_before_action** will allow the request to complete and the users session to be setup with the correct token. Subsequent forms submitted by the user will complete successfully. If **skip_before_action** is not added the user will be redirected to the login page and notifed that their session has expired and they need to login again.

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/wwidea/invalid_authenticity_token_rescue.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
