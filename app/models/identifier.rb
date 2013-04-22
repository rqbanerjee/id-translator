class Identifier < ActiveRecord::Base
  belongs_to :id_type, :foreign_key => 'type_id'

end
