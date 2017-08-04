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
    it 'returns the rating object for a specific product' do
      set_up_objects
      expect(account.product_rating(104).rating).to eq 3
    end
  end

  describe '#product_rating_info' do
    it 'returns a rating' do
      set_up_objects
      expect(account.product_rating_info(104)).to eq 3
    end
    it 'returns 1 if no rating is set' do
      set_up_objects
      expect(account.product_rating_info(103)).to eq 1
    end

  end

end
