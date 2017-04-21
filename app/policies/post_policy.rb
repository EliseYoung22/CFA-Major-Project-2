class PostPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    @record.user == @user || user.admin? || user.counselor?

  end

  def destroy?
    @record.user == @user || user.admin? || user.counselor?

  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
