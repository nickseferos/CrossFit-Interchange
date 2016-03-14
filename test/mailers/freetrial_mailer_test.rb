require 'test_helper'

class FreetrialMailerPreview < ActionMailer::Preview
	def free_trial_preview
		FreeTrialMailer.sample_email(FreeTrial.first_name)
	end
end
