class CigarettesController < ApplicationController
  include CigarettesHelper

  def create
    @status = {}

    @cigarette = Cigarette.new(params.require(:cigarette).permit([:date]))

    if @cigarette.save
      @status[:success] = "Cigarette enregistree"
      init_index
    else
      @status[:errors] = @cigarette.errors.messages.map{|k,v| k.to_s.downcase}
    end

    respond_to :js
  end

end
