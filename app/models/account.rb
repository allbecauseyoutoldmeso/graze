class Account < ActiveRecord::Base

  self.table_name = 'account'

  def ratings
    Rating.all.select { |rating| rating.account_id == id }
  end

  def product_rating(product_id)
    ratings.select { |rating| rating.product_id == product_id }[0]
  end

  def product_rating_info(product_id)
    rated?(product_id) ? product_rating(product_id).rating : 1
  end

  def rated?(product_id)
    product_rating(product_id) != nil
  end

  has_many :boxes

end
