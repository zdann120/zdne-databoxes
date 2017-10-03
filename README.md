# ZdneDataboxes

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zdne_databoxes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zdne_databoxes

## Usage

```ruby
# Instantiate a client using the TOKEN_ID for the box you want to access:
client = ZdneDataboxes::Client.new("BOX_TOKEN_ID")

# Retrieve all objects from the box:
client.all

# Add a new object to the box (payload can be any array that you want to store):
client.create(identifier: 'node1', payload: { content: "blablabla" })

# Delete an object from the box:
client.delete('node1')

# Retrieve an array of all identifiers for the box:
client.keys
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zdann120/zdne-databoxes.
