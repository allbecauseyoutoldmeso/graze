class Product < ActiveRecord::Base

  self.table_name = 'product'

  def ratings
    [Rating.find_by(product_id: id)]
  end

  has_and_belongs_to_many :boxes, :join_table => :box_to_product

end
