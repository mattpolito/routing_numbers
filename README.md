# RoutingNumbers

[![Gem Version](http://img.shields.io/gem/v/routing_numbers.svg?style=flat)](http://badge.fury.io/rb/routing_numbers)
[![Code Climate](http://img.shields.io/codeclimate/github/mattpolito/routing_numbers.svg?style=flat)](https://codeclimate.com/github/mattpolito/routing_numbers)

Simple wrapper around the the routingnumbers.info API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'routing_numbers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install routing_numbers

## Usage

Getting information for a financial institution from their routing number is as easy as:

```ruby
RoutingNumbers.find("063107513")
```

This call returns a response object that will look like this:

```ruby
<RoutingNumbers::Response:0x007f96b58919f0
  @address="MAC N9301-041",
  @city="MINNEAPOLIS",
  @name="WELLS FARGO BANK",
  @routing_number="063107513",
  @state="MN",
  @telephone="800-745-2426",
  @zip="55479",
  @message="OK">
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/routing_numbers.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## About

[![Hashrocket logo](https://hashrocket.com/hashrocket_logo.svg)](https://hashrocket.com)

routing_numbers is supported by the team at [Hashrocket, a
multidisciplinary design and development consultancy](https://hashrocket.com). If you'd like to [work with us](https://hashrocket.com/contact-us/hire-us) or [join our team](https://hashrocket.com/contact-us/jobs), don't hesitate to get in touch.
