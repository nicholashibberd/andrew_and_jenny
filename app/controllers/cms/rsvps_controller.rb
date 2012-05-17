module Cms
  class RsvpsController < Cms::AdminController  
    def replies
      @replies = Rsvp.all
    end
  end
end
