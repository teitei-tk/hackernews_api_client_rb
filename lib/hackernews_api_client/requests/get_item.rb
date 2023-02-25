module HackernewsApiClient
  module Requests
    class GetItem
      attr_reader :item_id, :options

      def initialize(item_id:, options: {})
        @item_id = item_id
        @options = options if options.empty? ? {} : options
      end

      def path
        "/v0/item/#{@item_id}.json"
      end
    end
  end
end
