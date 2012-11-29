class App < ActiveRecord::Base
  attr_accessible :about, :email, :name, :position

  validates_presence_of :about, :email, :name, :position

  has_many :urls

end
