class ReportesController < ApplicationController
  def index
    @parejas = Pareja.all
  end

end
