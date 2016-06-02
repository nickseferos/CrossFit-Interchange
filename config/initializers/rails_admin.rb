RailsAdmin.config do |config|

  ### Popular gems integration
  config.main_app_name = ["CrossFit Interchange"]

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration
  config.included_models = %w[ Workout Blog FreeTrial CfSchedule GcSchedule GroupclassSchedule Staff Admin ]
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    delete
    show_in_app
    edit

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Admin do

  end

  config.model Blog do
    edit do
      field :title
      field :author
      field :date, :date
      field :body, :froala
      field :image, :carrierwave
    end
  end

  config.model CfSchedule do
    label 'CrossFit Schedule'
    edit do
      field :mobile, :froala
      field :desktop, :froala
    end
  end

  config.model GcSchedule do
    label 'Group Class Schedule'
    edit do
      field :desktop, :froala
      field :mobile, :froala
    end
  end

  # config.model GroupclassSchedule do
  #   edit do
  #     field :title
  #     field :start
  #     field :end
  #     field :date
  #     field :description, :froala
  #   end
  # end

  config.model Staff do
    edit do
      field :name
      field :bio, :froala
      field :image, :carrierwave
    end
  end

  config.model Workout do
    edit do
      field :date
      field :info, :froala
      field :strength, :froala
      field :conditioning, :froala
    end
  end

end
