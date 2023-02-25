# frozen_string_literal: true

require "faraday"

require_relative "hackernews_api_client/version"
require_relative "hackernews_api_client/logger"
require_relative "hackernews_api_client/requests/top_stories"
require_relative "hackernews_api_client/responses/top_stories"
require_relative "hackernews_api_client/faraday/connection"
require_relative "hackernews_api_client/faraday/request"
require_relative "hackernews_api_client/end_points/top_stories"
require_relative "hackernews_api_client/end_points"
require_relative "hackernews_api_client/client"

module HackernewsApiClient
  class Error < StandardError; end
  # Your code goes here...
end
