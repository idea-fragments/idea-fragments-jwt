# IdeaFragments Jwt
![example workflow](https://github.com/idea-fragments/idea-fragments-jwt/actions/workflows/main.yml/badge.svg)

### Note: In most cases, you won't need this gem.
See https://github.com/jwt/ruby-jwt
___

Helper functions to assist with JWT management. This gem is built around the existing `jwt` and mainly abstracts away the need to always pass a jwt algorithm or secret when using a jwt service. Rather, the services provided with this gem will make use of the secret and algorithm you predefine in an initializer.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "idea-fragments-jwt", "~> 0.1", git: "https://github.com/idea-fragments/idea-fragments-jwt"
```

And then execute:

    $ bundle install

## Usage

The gem will need to be required in your code. Since the gem is loaded from a git repo, you'll need to require bundler/setup before requiring the gem.

```ruby
require "bundler/setup"
require "idea_fragments_jwt"
```

Create a file in `config/initializers` called `idea_fragments_jwt.rb` and add the following:
```ruby
Jwt.algorithm = "<your hashing algorithm>"
Jwt.secret = "<your secret key>"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jwt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/jwt/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Jwt project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/jwt/blob/master/CODE_OF_CONDUCT.md).
