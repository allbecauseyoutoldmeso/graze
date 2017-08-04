class Account < ActiveRecord::Base

  self.table_name = 'account'

  def ratings
    [Rating.find_by(account_id: id)]
  end

  def product_rating(product_id)
    ratings.select { |rating| rating.product_id == product_id }[0]
  end

  has_many :boxes

end
