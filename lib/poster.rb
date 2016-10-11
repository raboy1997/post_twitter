class Poster
  class << self
    def start
      create_post(twitter_sign_in)
    end

    private

    def twitter_sign_in
      Twitter::REST::Client.new do |config|
        config.consumer_key        = "9Zmsw5RrDjBfVHIlMqF0fRLwl"
        config.consumer_secret     = "IVuZjdCEduiAUGj0olsTLw6ZVO2Urt5NPtlj9KtUo8ZnpdgZfG"
        config.access_token        = "785506842399109121-6uNz4wHK6oT62NCH9p2DbqleMQ6rvel"
        config.access_token_secret = "4IBixl4iRbnhgf5hKv5nsITO1mPWR2Tf9qUDXzoLZMWwv"
      end
    end

    def create_post(client)
      Post.all.each do |item|
        client.update(item.title + item.post_link)
      end
    end

  end
end