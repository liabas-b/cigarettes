module CigarettesHelper
  def init_index
    @new_cigarette = Cigarette.new
    @cigarettes = Cigarette.all
    @cigarettes_by_day = []
    @first_cigarette = Cigarette.order(date: :asc).first
    tmp_date = Date.today
    begin_date = @first_cigarette.present? ? @first_cigarette.date.to_date : nil
    if begin_date
      (begin_date..tmp_date).each do |day|
        puts day.to_date.inspect
        @cigarettes_by_day << {
          date: day.to_date,
          cigarettes: Cigarette.where(date: (day.beginning_of_day..day.end_of_day)).to_a
        }
      end
    end
    @cigarettes_by_day.reverse!
  end
end
