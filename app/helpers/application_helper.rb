module ApplicationHelper
	def title(*parts)
		unless parts.empty?
			content_for :title do
				(parts << "LinkBlog").join(" - ")
			end
		end
	end
end
