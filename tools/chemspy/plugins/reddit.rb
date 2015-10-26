require 'mechanize'
require 'open-uri'

class RedditPlugin

  def new
    
  end

  def reload

  end

  def refresh
   base_url = "https://api.reddit.com/r/"
   subreddits = ["researchchemicals", "noids", "stims","benzodiazepines"]

   results = {}

   subreddits.each do |subreddit|

     sleep 1

     open("#{base_url}#{subreddit}/new") do |file|
       results = JSON.parse(file.read)
     end

     pp results["data"]["children"].map { |result| 
      if result["data"]["num_comments"] > 0
        open("#{base_url}#{subreddit}/#{result[:id]}") do |comment_file|
          comments = JSON.parse(comment_file.read)
          pp comments
        end
      end
      {text: result[:selftext], comments: comments}
     }

   end

  end

end
