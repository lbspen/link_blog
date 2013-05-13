require 'spec_helper'

feature 'Creating Links' do 
	scenario 'Can create a link' do
		visit '/'
		click_link 'New Link'
		fill_in 'Url', :with => 'www.google.com'
		fill_in 'Date found', :with => '01/01/2009'
		click_button 'Create Link'
		page.should have_content('Link has been created')

		link = Link.find_by_URL('www.google.com')
		page.current_url.should == link_url(link)
		title = 'www.google.com - Links - LinkBlog'
		find("title").should have_content(title)
	end
end