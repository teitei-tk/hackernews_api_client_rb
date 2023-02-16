module HackernewsApiClient
  module EndPoints
    module TopStories
      def top_stories
        get("/v0/topstories.json")
      end
    end
  end
end