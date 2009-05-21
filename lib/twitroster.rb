module TwitRoster
  def twitroster(usernames)
    args = usernames.map { |e| "u=#{e}" }.join("&")
    "<div id=\"twitroster\"><p>Loading...</p></div>\n" + 
    "<script type=\"text/javascript\" src=\"http://twitroster.com/js?#{args}\"></script>"
  end
end

ActionView::Base.send :include, TwitRoster
