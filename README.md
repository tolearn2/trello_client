# TrelloClient

Easy to use, non official Trello Client based on [Trello API Docs](https://trello.readme.io/docs/api-introduction).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trello_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trello_client

## Usage

### Get key and token

If this is your first time using Trello API, get key and token from [here](https://trello.com/app-key).

### Client

Create board/list/card clients based on api key and token.

```ruby
client = Trello::Client.new(key: <your-key>, token: <your-token>)
board_client = Trello::Board.new(client)
list_client  = Trello::List.new(client)
card_client  = Trello::Card.new(client)
```

### Board

Get all boards

```ruby
board_client.fetch_all
```

Get a board

```ruby
board_client.fetch(id: <board-id>)
```

Add a board

```ruby
body = { name: "test", ... }
board_client.add(body)
```

Delete a board

```ruby
board_client.delete(id: <board-id>)
```

### List

Get all lists of a board

```ruby
list_client.fetch_all(board_id: <board-id>)
```

Get a list

```ruby
list_client.fetch(id: <list-id>)
```

Add a list

```ruby
body = { name: "test", ... }
list_client.add(board_id: <board-id>, body )
```

### Card

Get all cards of a list

```ruby
card_client.fetch_all(list_id: <list-id>)
```

Get a card

```ruby
card_client.fetch(id: <card-id>)
```

Add a card

```ruby
# options of body(as a hash):
#   - name: name of card
#   - desc: description
#   - ...
body = { name: "test", desc: "description", ... }
card_client.add(list_id: <list-id>, body)
```

Delete a card

```ruby
card_client.delete(id: <card-id>)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tolearn2/trello_client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
