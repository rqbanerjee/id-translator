class IdType < ActiveRecord::Base
  validates_presence_of :name, :length

end
