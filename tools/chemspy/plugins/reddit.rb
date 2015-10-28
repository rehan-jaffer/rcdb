require 'mechanize'
require 'open-uri'
require 'digest/md5'

class RedditPlugin

  def new
    
  end

  def hash(title)
    return Digest::MD5.hexdigest(title)
  end

  def reload

  end

  def refresh
   base_url = "https://api.reddit.com/r/"
   subreddits = ["researchchemicals", "noids", "stims","benzodiazepines"]
#   subreddits = ["noids"]

   results = {}

   data = []

   subreddits.each do |subreddit|

     puts subreddit

     sleep 1

     begin
       open("#{base_url}#{subreddit}/new") do |file|
         results = JSON.parse(file.read)
       end
     rescue
       puts "Could not access subreddit"
       sleep 1
       retry
     end

     data << results["data"]["children"].map { |result| 
      hash = hash(result["data"]["title"])
      comments = []
      if result["data"]["num_comments"] > 0

        sleep 1

        begin
          open("#{base_url}#{subreddit}/#{result[:id]}") do |comment_file|
            comments = JSON.parse(comment_file.read)["data"]["children"]
          end
        rescue
          puts "Could not grab comments.."
          sleep 1
          retry
        end

      end
      {text: result["data"]["selftext"], title: result["data"]["title"], comments: comments.map { |comment|
        {title: comment["data"]["title"], text: comment["data"]["selftext"], hash: hash(comment["data"]["title"]), source: "reddit"}
      }, hash: hash, source: "reddit"}
     }

     return data

   end


  end

end
