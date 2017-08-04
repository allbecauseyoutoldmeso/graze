require 'rails_helper'

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
      account = Account.create(id: 10700)
      product = Product.create(id: 104, name: 'wasapea', category: 'snack', image_url: 'www.wasapea.com')
      rating = Rating.create(rating: 3, product_id: 104, account_id: 10700)
      expect(account.ratings[0].rating).to eq 3
    end
  end

  describe '#product_rating' do
    it 'returns the rating for a specific product' do
      account = Account.create(id: 10700)
      product = Product.create(id: 104, name: 'wasapea', category: 'snack', image_url: 'www.wasapea.com')
      rating = Rating.create(rating: 3, product_id: 104, account_id: 10700)
      expect(account.product_rating(104).rating).to eq 3
    end
  end

end
