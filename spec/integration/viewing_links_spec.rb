require 'spec_helper'

feature "Viewing links" do
	scenario "Listing all links" do
		link = Factory.create(:link, :URL => 'www.evernote.com')
		visit '/'
		click_link 'www.evernote.com'
		page.current_url.should == link_url(link)
		link = Factory.create(:link, :URL => 'www.reddit.com')
		visit '/'
		click_link 'www.reddit.com'
		page.current_url.should == link_url(link)
		link = Factory.create(:link, :URL => 'www.facebook.com')
		visit '/'
		click_link 'www.facebook.com'
		page.current_url.should == link_url(link)
		visit '/'
		page.body.should match /facebook.*reddit.*evernote/m


	end
end 