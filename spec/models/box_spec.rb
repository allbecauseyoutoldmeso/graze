require 'rails_helper'

describe Box, type: :model do

  context 'associations' do
    it 'should belong to an account' do
      should belong_to(:account)
    end
    it 'should have and belong to many products' do
      should have_and_belong_to_many(:products)
    end
  end

end
