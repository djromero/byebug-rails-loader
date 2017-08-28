# ByebugRailsLoader

Automatically loads byebug when the gem is loaded (for specs/scripts), as well as when Rails loaded (for the rails server). Also automatically *re-loads* byebug when `.byebugrc` changes - intended to be useful along with [vim-byebug-breakpoints](https://github.com/kmewhort/vim-byebug-breakpoints) for setting breakpoints on-the-fly!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'byebug-rails-loader'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install byebug-rails-loader

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kmewhort/byebug-rails-loader.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

