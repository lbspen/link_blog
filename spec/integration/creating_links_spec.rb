require 'spec_helper'

feature 'Creating Links' do 
	before do
		visit '/'
		click_link 'New Link'
	end

	scenario 'Can create a link' do
		fill_in 'Url', :with => 'www.google.com'
		fill_in 'Date found', :with => '01/01/2009'
		click_button 'Create Link'
		page.should have_content('Link has been created')

		link = Link.find_by_URL('www.google.com')
		page.current_url.should == link_url(link)
		title = 'www.google.com - Links - LinkBlog'
		find("title").should have_content(title)
	end

	scenario "Can not create a link without a url" do
		click_button 'Create Link'
		page.should have_content("Link has not been created.")
		page.should have_content("Url can't be blank")
	end

end