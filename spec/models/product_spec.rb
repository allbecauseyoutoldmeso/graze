require 'rails_helper'

describe Product, type: :model do

  context 'associations' do
    it 'should have and belong to many boxes' do
      should have_and_belong_to_many(:boxes)
    end
  end

end
