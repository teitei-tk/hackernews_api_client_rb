module HackernewsApiClient
  module EndPoints
    module TopStories
      def top_stories(req:)
        ret = get(req.path)

        HackernewsApiClient::Responses::TopStories.new(raw: ret)
      end
    end
  end
end