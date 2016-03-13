class FreetrialMailer < ApplicationMailer
	default from: "info@crossfitinterchange.com"

	def free_trial_email(freetrial)
		@free_trial = freetrial
		mail( to: @free_trial.email, subject: 'Start Your Free Trial Today!')
	end
end
