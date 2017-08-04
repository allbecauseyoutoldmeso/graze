class Box < ActiveRecord::Base
  
  self.table_name = 'box'

  belongs_to :account

end
