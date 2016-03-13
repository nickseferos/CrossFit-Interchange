class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(FreeTrial)
    @free_trial = FreeTrial
    FreeTrialMailer.free_trial_email(@free_trial).deliver_later
  end
end