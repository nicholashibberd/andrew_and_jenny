class ApplicationController < ActionController::Base
  protect_from_forgery
  helper Cms::Engine.helpers
end
