module CigarettesHelper
  def init_index
    @new_cigarette = Cigarette.new
    @cigarettes = Cigarette.all
    @cigarettes_by_day = []
    @first_cigarette = Cigarette.order(date: :asc).first
    tmp_date = Date.tomorrow
    begin_date = @first_cigarette.present? ? @first_cigarette.date : Date.parse('2015-09-08')
    puts tmp_date.inspect
    puts begin_date.inspect
    (begin_date..tmp_date).each do |day|
      puts day.to_date.inspect
      @cigarettes_by_day << {
        date: day.to_date,
        cigarettes: Cigarette.where(date: (day.beginning_of_day..day.end_of_day)).to_a
      }
    end
    puts @cigarettes_by_day.inspect
  end
end
