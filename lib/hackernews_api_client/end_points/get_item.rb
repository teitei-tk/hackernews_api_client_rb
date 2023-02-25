module HackernewsApiClient
  module EndPoints
    module GetItem
      def get_item(req:)
        ret = get(req.path)

        HackernewsApiClient::Responses::GetItem.new(raw: ret)
      end
    end
  end
end