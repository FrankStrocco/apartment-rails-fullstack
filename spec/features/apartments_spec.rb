require 'rails_helper'

RSpec.feature "Apartments", type: :feature do
 context 'I am on the landing page' do
     Steps 'I can create a new apartment listing' do
         Given 'I visit localhost3000' do
             visit '/'
         end
         Then 'I can see Apartments' do
             expect(page).to have_content('Apartments')
         end
     end
 end



 context 'When I am on the new apartment page'do
     Steps 'I can fill out the form' do
         Given 'I am on the new page' do
             visit '/apartments/new'
         end
          When 'fill out form it creates an apartment listing' do
              fill_in 'apartment_address', with: '123'
              fill_in 'apartment_city', with: 'San Diego'
              fill_in 'apartment_state', with: 'CA'
              fill_in 'apartment_zip_code', with: '92117'
              fill_in 'apartment_building_manager', with: 'Bob Slippy'
              fill_in 'apartment_phone', with: '858-472-5050'
              fill_in 'apartment_hours', with: '9-5'
              click_button 'Create Apartment'
          end
          And 'when I submit the apartment info' do
              expect(page).to have_content('123')
             expect(page).to have_content('San Diego')
             expect(page).to have_content('CA')
             expect(page).to have_content('Bob Slippy')
             expect(page).to have_content('858-472-5050')
             expect(page).to have_content('9-5')
          end
     end


end
end
