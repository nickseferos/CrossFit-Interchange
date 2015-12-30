class Page < ActiveRecord::Base
	class ContactForm < MailForm::Base
		attribute :name, :validate => true
		attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
		attribute :tel, :valdate => true
	end

	def headers
		{
			:subject => "Tell me more about the Free Trial",
			:to => "nick.seferos@gmail.com",
			:from => %("#{name}" <#{email}>)
		}
	end
end
