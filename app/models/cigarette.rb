class Cigarette
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: DateTime

  before_save :set_date

  def set_date
    self.date = Time.now
  end
end
