class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid      = auth.uid
      user.name     = auth.info.name
      user.save
    end
  end

  def tweet(tweet)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "9Zmsw5RrDjBfVHIlMqF0fRLwl"
      config.consumer_secret     = "IVuZjdCEduiAUGj0olsTLw6ZVO2Urt5NPtlj9KtUo8ZnpdgZfG"
      config.access_token        = "785506842399109121-6uNz4wHK6oT62NCH9p2DbqleMQ6rvel"
      config.access_token_secret = "4IBixl4iRbnhgf5hKv5nsITO1mPWR2Tf9qUDXzoLZMWwv"
    end

    client.update(tweet)
  end
end
