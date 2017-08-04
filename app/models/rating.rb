class Rating < ActiveRecord::Base

  self.table_name = 'rating'

  belongs_to :account
  belongs_to :product

end
