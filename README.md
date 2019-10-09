# Amex2Xero

This tool makes it super simple to convert statement data exported from your
American Express account into Xero's bank statement format, suitable for
importing into Xero for reconciliation.

## Usage

First, install the tool using RubyGems:

```sh
gem install amex2xero
```

Then, run it:

```sh
# By default, the processed file will be saved as `output.csv` in the
# current directory
amex2xero input_filename.csv

# You can optionally specify a different path to save to
amex2xero input_filename.csv my_custom_output_path.csv
```

## TODO

* Refactor into classes, so not everything is in `exe/amex2xero`
* Add specs

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/timrogers/amex2xero. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Amex2xero project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/timrogers/amex2xero/blob/master/CODE_OF_CONDUCT.md).
