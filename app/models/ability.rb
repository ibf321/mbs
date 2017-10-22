class Ability
  include CanCan::Ability

  def initialize(user)
    can :index, View
    if user
      if user.kind == 'technicianm'
        can :access, :rails_admin
        can :dashboard
        can :manage, Institution, operating_unid_id: user.unit
        can :manage, Donor
        can :manage, Educational
        can :manage, Page

      elsif user.kind == 'supervision'
        can :access, :rails_admin
        can :dashboard
        can :manage, Institution
        can :manage, Donor
        can :manage, Educational
        can :manage, User, kind: :technicianm

      elsif user.kind == 'program_manager'
        can :access, :rails_admin
        can :dashboard
        can :read, Institution
        can :read, Donor
        can :read, Educational
        can :manage, User , kind: :technicianm, kind: :unit_manager, kind: :supervision
        can :manage, Page
    elsif user.kind == 'unit_manager'
      # can :manage, :all
        can :access, :rails_admin
        can :dashboardcan
        can :read, Institution, user_unit: user.unit
        can :read, Donor, user_unit: user.unit
        can :read, Educational, user_unit: user.unit
        can :manage, Page

      elsif user.kind == 'admin'
        # can :manage, :all
        can :access, :rails_admin
        can :dashboard
        can :manage, Institution
        can :manage, Donor
        can :manage, Educational
        can :manage, Unit
        can :manage, Address
        can :manage, User
        can :manage, Page

      end
    end
   end
end
