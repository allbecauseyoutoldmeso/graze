require 'rails_helper'

describe Product, type: :model do

  context 'associations' do
    it 'should have and belong to many boxes' do
      should have_and_belong_to_many(:boxes)
    end
  end

  describe '#ratings' do
    it 'returns an array of ratings' do
      account = Account.create(id: 10700)
      product = Product.create(id: 104, name: 'wasapea', category: 'snack', image_url: 'www.wasapea.com')
      rating = Rating.create(rating: 3, product_id: 104, account_id: 10700)
      expect(product.ratings[0].rating).to eq 3
    end
  end

end
