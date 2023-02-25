module HackernewsApiClient
  module Requests
    class TopStories
      attr_reader :options

      def initialize(options: {})
        @options = options if options.empty? ? {} : options
      end

      def path
        "/v0/topstories.json"
      end
    end
  end
end
