class Url < ActiveRecord::Base
  attr_accessible :app_id, :item

  belongs_to :app
end
