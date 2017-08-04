require 'rails_helper'

feature 'accounts' do

  scenario 'entering an account id in the text box' do
    Account.create(id: 10700)
    visit '/'
    fill_in 'search', with: '10700'
    click_button 'Find Account'
    expect(current_path).to eq '/accounts/10700'
  end

end
