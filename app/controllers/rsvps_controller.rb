class RsvpsController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end
  
  def create
    rsvp = Rsvp.new(params[:rsvp])
    if rsvp.save
      redirect_to thankyou_path
    else
      redirect_to '/pages/rsvp', :notice => 'Sorry, there was a problem saving your information :('
    end
  end
  
  def replies
    raise 'test'
  end
end