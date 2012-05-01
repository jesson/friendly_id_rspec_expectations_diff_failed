class Product < ActiveRecord::Base
  attr_accessible :name, :slug

  include FriendlyId
  friendly_id :name, :use => [:slugged, :simple_i18n]
end
