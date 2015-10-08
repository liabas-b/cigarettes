class Cigarette < ActiveRecord::Base
  before_save :set_date

  def set_date
    self.date = Time.now
  end
end
