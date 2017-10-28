RailsAdmin.config do |config|


  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.main_app_name = ["Sistema de Informação e Gestão", " Mesa Brasil Sesc"]
  config.navigation_static_links = {
    'Relatório' => '/'
  }


    config.model User do
      create do
        field  :name
        field  :email
        field  :username
        field  :password
        field  :password_confirmation
        field  :unit_id
      end

      edit do
        field  :name
        field  :email
        field  :username
        field  :password
        field  :password_confirmation
        field  :unit_id
      end

      show do
        field  :name
        field  :email
        field  :username
        field  :unit_id

      end
    end



  config.navigation_static_label = "Relatórios"


  config.actions do
     dashboard                     # mandatory
     index                         # mandatory
     new
     bulk_delete
     show
     edit
     delete
    #  show_in_app
     ## With an audit adapter, you can add:
      #  history_index
      #  history_show
   end
 end
