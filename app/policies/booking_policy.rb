class BookingPolicy < ApplicationPolicy

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end

    #  def resolve
    #    scope.where(user:user)
    #  end
  end

def confirmation?
  true
end


  def new?
    true
  end

  def create?
    true
  end

   def show?
    record.user == user || user.admin
   end

   def rentals?
    true
  end

  def update?
    record.user == user || user.admin
  end

  def destroy?
    record.user == user || user.admin
  end
end
