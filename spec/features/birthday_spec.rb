
require 'rspec'
require 'spec_helper'
require './lib/app'

describe 'Birthday Message' do

 def app
   Birthday
 end

 # it 'says Happy Birthday!' do
 #   get '/'
 #   expect(last_response.body).to eq('Happy Birthday!')
 # end
 feature "Entering birthday details" do
   scenario "Birthday  Girl is Kate" do
     visit '/'
     fill_in( 'Birthday Girl', with:'Kate')
     click_button( 'Submit!')
     expect(page).to have_content("Birthday Girl is Kate")
   end
 end

end
