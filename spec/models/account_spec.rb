require 'rails_helper'
require 'test_helpers'

describe Account, type: :model do

  subject(:account) { described_class.new(id: 10700)}

  describe '#id' do
    it 'returns the account id number' do
      expect(account.id).to eq 10700
    end
  end

  context 'associations' do
    it 'should have many boxes' do
      should have_many(:boxes)
    end
  end

  describe '#ratings' do
    it 'returns an array of ratings' do
      set_up_objects
      expect(account.ratings[0].rating).to eq 3
    end
  end

  describe '#product_rating' do
    it 'returns the rating for a specific product' do
      set_up_objects
    end
  end

  describe '#product_rating_info' do
  end

end
