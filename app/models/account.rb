class Account < ActiveRecord::Base

  self.table_name = 'account'

  def ratings
    [Rating.find_by(account_id: id)]
  end

  has_many :boxes

end
