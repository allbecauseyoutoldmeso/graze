require 'rails_helper'

describe Rating, type: :model do

  context 'associations' do
    it 'should belong to a product' do
      should belong_to(:product)
    end
    it 'should belong to an account' do
      should belong_to(:account)
    end
  end

end
