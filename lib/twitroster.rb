module TwitRoster
  def twitroster(usernames)
    params = usernames.map { |e| "u=#{e}" }.join("&amp;")
    "<div id=\"twitroster\"><p>Loading...</p></div>\n" + 
    "<script type=\"text/javascript\" src=\"http://twitroster.com/js?#{params}\"></script>"
  end
end

ActionView::Base.send :include, TwitRoster
