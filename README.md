# HackernewsApiClient

This API Client made by Ruby is a client that uses the Hacker News API.

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

    $ bundle add UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG

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

## Code of Conduct

Everyone interacting in the HackernewsApiClient project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hackernews_api_client/blob/master/CODE_OF_CONDUCT.md).
