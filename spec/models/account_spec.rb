require 'rails_helper'

describe Account, type: :model do

  subject(:account) { described_class.new(id: 10700)}

  describe '#id' do
    it 'returns the account id number' do
      expect(account.id).to eq 10700
    end
  end

end
