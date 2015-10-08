class WelcomeController < ApplicationController
  include CigarettesHelper

  def index
    init_index
  end
end
