class Product < ActiveRecord::Base

  self.table_name = 'product'

  has_and_belongs_to_many :boxes, :join_table => :box_to_product
  
end
