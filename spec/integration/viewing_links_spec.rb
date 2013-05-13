require 'spec_helper'

feature "Viewing links" do
	scenario "Listing all projects" do
		link = Factory.create(:link, :URL => 'www.evernote.com')
		visit '/'
		click_link 'www.evernote.com'
		page.current_url.should == link_url(link)
	end
end