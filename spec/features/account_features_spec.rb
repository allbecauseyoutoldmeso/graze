require 'rails_helper'

feature 'accounts' do

  scenario 'entering an account id in the text box' do
    Account.create(id: 10700)
    visit '/'
    fill_in 'search', with: '10700'
    click_button 'Find Account'
    expect(current_path).to eq '/accounts/10700'
  end

  scenario 'account page displays the boxes associated with that account' do
    account = Account.create(id: 10700)
    Box.create(id: 100, account_id: 10700, delivery_date: '2017-02-08')
    visit '/accounts/10700'
    expect(page).to have_content 'Box number: 100'
  end

end
