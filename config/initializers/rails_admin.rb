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
  config.included_models = %w[ Workout Blog FreeTrial CfSchedule GcSchedule GroupclassSchedule Staff Admin User Groupclass]
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
  
  config.model Groupclass do
    label 'Group Classes'
    navigation_label 'Content'
    weight 1
  end

  config.model Admin do
    label 'Administrator'
    navigation_label 'Admin'
    weight 1
  end

  config.model User do
    label 'User'
    navigation_label 'Admin'
    weight 1
  end

  config.model FreeTrial do
    label 'Free Trial'
    navigation_label 'Admin'
    weight 1
  end

  config.model Blog do
    navigation_label 'Posts'
    weight -1
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
    navigation_label 'Content'
    weight 2
    edit do
      field :mobile, :froala
      field :desktop, :froala
    end
  end

  config.model GcSchedule do
    label 'Group Class Schedule'
    navigation_label 'Content'
    weight 2
    edit do
      field :desktop, :froala
      field :mobile, :froala
    end
  end

  config.model GroupclassSchedule do
    label "Group Class Schedule2"
    visible false
    navigation_label 'Content'
    weight 2
    edit do
      field :title
      field :start
      field :end
      field :date
      field :description, :froala
    end
  end

  config.model Staff do
    navigation_label 'Admin'
    weight 1
    edit do
      field :name
      field :bio, :froala
      field :image, :carrierwave
    end
  end

  config.model Workout do
        navigation_label 'Posts'
        weight -1
    edit do
      field :date
      field :info, :froala
      field :strength, :froala
      field :conditioning, :froala
    end
  end

end
