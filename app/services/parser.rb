require 'rss'
require 'open-uri'
class Parser
  class << self
    def start
      create_news(get_news)
    end

    private

    def get_news
      RSS::Parser.parse(open('https://meduza.io/rss/all').read, false).items[0..99]
    end

    def create_news(news)
      news.each do |item|
        Post.create(title: item.title , body: item.description , post_link: item.link)
        puts "news created"
      end
    end
  end

end