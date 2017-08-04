require 'rails_helper'

describe Box, type: :model do

  # subject(:box) { described_class.new(id: 100, account_id: 10700, delivery_date: 2017-02-08)}

  context 'associations' do
    it 'should have many boxes' do
      should belong_to(:account)
    end
  end

end
