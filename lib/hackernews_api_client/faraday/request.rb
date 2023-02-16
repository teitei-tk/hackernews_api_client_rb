# frozen_string_literal: true

module HackernewsApiClient
  module Faraday
    module Request
      def get(path, options = {})
        connection.get do |req|
          req.url(path, options)
        end
      end
    end
  end
end
