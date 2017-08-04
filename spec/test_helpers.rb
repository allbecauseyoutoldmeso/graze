def set_up_objects
  account = Account.create(id: 10700)
  product = Product.create(id: 104, name: 'wasapea', category: 'snack', image_url: 'www.wasapea.com')
  rating = Rating.create(rating: 3, product_id: 104, account_id: 10700)
end
