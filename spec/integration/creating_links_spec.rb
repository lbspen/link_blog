require 'spec_helper'

feature 'Creating Links' do 
	scenario 'Can create a link' do
		visit '/'
		click_link 'New Link'
		# fill_in 'URL', :with => 'www.google.com'
		# fill_in 'Date Found' :with => '01/01/2009'
		# click_button 'Create Link'
		# page.should have_content('Link has been created')
	end
end