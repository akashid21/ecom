require 'rails_helper'

RSpec.feature 'User sign in', type: :feature do
  let!(:client) { create(:client) }
  let!(:products) { create(:product) }

  context 'helo' do
    scenario 'das' do 
      sign_in(client, scope: :client)
      visit clients_root_path
      debugger
      click_link 'Products'
      expect(current_path).to eq('/login')
    end
  end
end 