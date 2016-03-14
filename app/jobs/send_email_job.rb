class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(freetrial)
    @free_trial = FreeTrial
    FreeTrialMailer.free_trial_email(@free_trial).deliver_later
    FreeTrialMailer.free_trial_engage_email(@free_trial_engage).deliver_later
  end
end