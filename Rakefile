# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[spec rubocop]

task :timeline do
  require "hackernews_api_client"

  client = HackernewsApiClient::Client.new
  req = HackernewsApiClient::Requests::TopStories.new
  res = client.top_stories(req: req)

  ret = res.as_json.map.with_index do |item_id, i|
    item_req = HackernewsApiClient::Requests::GetItem.new(item_id: item_id)
    item_res = client.get_item(req: item_req)
    puts item_res.as_json

    if i > 30
      break
    end
  end
  puts ret
end