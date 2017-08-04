class Account < ActiveRecord::Base

  self.table_name = 'account'

  has_many :boxes

end
