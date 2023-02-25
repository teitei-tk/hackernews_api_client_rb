module HackernewsApiClient
  module EndPoints
    include HackernewsApiClient::EndPoints::TopStories
    include HackernewsApiClient::EndPoints::GetItem
  end
end
