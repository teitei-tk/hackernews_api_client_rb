module HackernewsApiClient
  module Responses
    class GetItem
      attr_reader :raw_response

      def initialize(raw:)
        @raw_response = raw
      end

      def as_json
        JSON.parse(@raw_response.body, symbolize_names: true)
      end
    end
  end
end
