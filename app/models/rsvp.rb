class Rsvp
  include Mongoid::Document
  
  field :name
  field :attending, :type => Boolean
  field :transport, :type => Array, :default => []
  field :starter
  field :main
  field :dessert
  field :dietary_requirements
  
  def as_hash
    reply = {}
    reply['name'] = name
    reply['attending'] = attending ? 'Yes' : 'No'
    reply['transport_to_church'] = transport_to_church ? 'Yes' : 'No'
    reply['transport_to_reception'] = transport_to_reception ? 'Yes' : 'No'
    reply['menu_choice1'] = menu_choices[0]
    reply['menu_choice2'] = menu_choices[1]
    reply['menu_choice3'] = menu_choices[2]
    reply['dietary_requirements'] = dietary_requirements
    reply
  end
  
  def self.all_replies
    all.map {|reply| reply.as_hash}
  end
  
  def attending?
    attending ? 'Yes' : 'No'
  end
end