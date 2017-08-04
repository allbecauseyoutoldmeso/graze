class Box < ActiveRecord::Base

  self.table_name = 'box'

  belongs_to :account
  has_and_belongs_to_many :products, :join_table => :box_to_product
  
end
