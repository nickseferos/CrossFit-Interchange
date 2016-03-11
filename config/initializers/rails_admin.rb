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

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

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
      field :body, :text
      field :image, :carrierwave
    end
  end

  config.model CfSchedule do
    edit do

    end
  end

  config.model GcSchedule do
    edit do

    end
  end

  config.model Staff do
    edit do

    end
  end

  config.model Workout do
    edit do

    end
  end

end
