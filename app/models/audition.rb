class Audition < ActiveRecord::Base
  belongs_to :roles

  def role
    role = Role.find(self.role_id)
  end

  def call_back
    self.hired = true
  end
end
