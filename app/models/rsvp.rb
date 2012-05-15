class Rsvp
  include Mongoid::Document
  
  field :name
  field :attending, :type => Boolean
  field :transport_to_church, :type => Boolean
  field :transport_to_reception, :type => Boolean
  field :menu_choices, :type => Hash
  field :dietary_requirements
end