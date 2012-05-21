class RsvpsController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end
  
  def create
    rsvp = Rsvp.new(params[:rsvp])
    if rsvp.save
      reply_path = rsvp.attending ? thankyou_path : thankyou_no_path
      redirect_to reply_path
    else
      redirect_to '/pages/rsvp', :notice => 'Sorry, there was a problem saving your information :('
    end
  end
  
  def replies
    raise 'test'
  end
end