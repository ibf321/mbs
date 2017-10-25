class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.kind == 'technicianm'
        can :access, :rails_admin
        can :dashboard
        can :manage, Institution, unit_id: user.unit
        can :manage, Donor
        can :manage, Educational

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
        can :manage, Institution
        can :manage, Donor
        can :manage, Educational
        can :manage, User , kind: :technicianm, kind: :unit_manager, kind: :supervision

    elsif user.kind == 'unit_manager'
        can :access, :rails_admin
        can :dashboard
        can :manage, Institution, unit_id: user.unit
        can :manage, Donor, unit_id: user.unit
        can :manage, Educational, unit_id: user.unit

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

      end
    end
   end
end
