class TopicPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    user.admin?
    user.councelor?
  end

  def destroy?
    user.admin?
  end


  class Scope < Scope
    def resolve
      scope
    end
  end
end
