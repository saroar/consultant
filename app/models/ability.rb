class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :admin, :consultant
      can :manage, :all
    end
    if user.has_role? :consultant
      can :manage, Consultant
    end
      can :read, :all
    end
  end
end
