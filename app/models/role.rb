class Role < ActiveRecord::Base
  has_many :auditions

  def auditions
    Audition.where(role_id: self.id)
  end

  def actors
    # find auditions.actor where role_id == self.id and hired == true
    self.auditions.map { |aud| aud.actor }
  end

  def locations
    self.auditions.map { |aud| aud.location }
  end

  def lead
    !!self.auditions.find { |aud| aud.hired } ?
      self.auditions.find { |aud| aud.hired } :
      "no actor has been hired for this role"
  end

  def understudy
    understudy = self.auditions.select { |aud| aud.hired }

    understudy[1] ? understudy[1] : "no actor has been hired for understudy for this role"
  end
end
