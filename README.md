# HackerNews API Client for Ruby

This API Client made by Ruby is a client that uses the Hacker News API.

## Installation

```sh
$ bundle add hackernews_api_client
```

## Usage

see: [https://hackernews.api-docs.io/v0/overview/introduction](https://hackernews.api-docs.io/v0/overview/introduction)

```ruby
require "hackernews_api_client"

client = HackernewsApiClient::Client.new
req = HackernewsApiClient::Requests::TopStories.new
res = client.top_stories(req: req)
puts res.as_json
```

## Development

```sh
$ bundle install
$ bundle exec rbs collection install
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
