class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= Person.new # guest user (not logged in)
    can :read, :all
    can :manage, District do |district|
      user.districts.include?(district)
    end
    can :manage, Person do |person|
      person == user
    end
    
    cannot :destory, Person
    
    # can :manage, :all if user.admin?
    
    can :create, Person if Person.all.count == 0
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
