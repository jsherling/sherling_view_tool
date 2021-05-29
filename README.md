# SherlingViewTool

> Various view-specific methods for applications I use.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sherling_view_tool'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sherling_view_tool

## Usage

```ruby
SherlingViewTool::Renderer.copyright(name, message)
```

- If the name argument is empty, 'Name not provided!' will appear
    - '&copy; #{Time.now.year} | Name not provided!'
- If provided, the message argument prepends an extra space
    - '&copy; #{Time.now.year} | Big Corp All rights reserved'


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push git
commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/jsherling/sherling_view_tool.

