class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :customer
    can :manage, user
    can :index, :all
    else
      can :index, :all
      can :create, User
    end


  end
end
