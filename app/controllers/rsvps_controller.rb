class RsvpsController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end
  
  def create
    rsvp = Rsvp.new(params[:rsvp])
    raise rsvp.inspect
  end
end