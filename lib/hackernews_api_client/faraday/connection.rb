# frozen_string_literal: true

module HackernewsApiClient
  module Faraday
    module Connection
      private

      def connection
        @connection ||=
          begin
            options = {
              headers: {
                'Accept' => 'application/json; charset=utf-8',
                'User-Agent' => "HackerNews Ruby Client/#{HackernewsApiClient::VERSION}"
              }
            }

            url = "https://hacker-news.firebaseio.com"
            ::Faraday.new(url, options) do |connection|
              connection.request :url_encoded
              connection.response :json, content_type: /\b*$/
              connection.response :logger, HackernewsApiClient::Logger.default
              connection.adapter ::Faraday.default_adapter
            end
          end
      end
    end
  end
end