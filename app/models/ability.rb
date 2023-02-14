# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :manage, :all if user.admin?

    #一定の間ゲストアカウントは読み込みのみの状況にする
    if user.guest?
      can :manage, :all
      cannot [:create,:destroy,:update], Article
    end
  end
end
