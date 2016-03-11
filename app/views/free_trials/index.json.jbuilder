json.array!(@free_trials) do |free_trial|
  json.extract! free_trial, :id, :first_name, :last_name, :email, :phone
  json.url free_trial_url(free_trial, format: :json)
end
