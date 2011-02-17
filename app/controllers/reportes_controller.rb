class ReportesController < ApplicationController
   before_filter :authenticate_user!, :except => :index
  def index
    @parejas = Pareja.find(:all, :conditions => "activo='t'")
    hoy = Date.today
    viernes = hoy.at_beginning_of_week.advance(:days => 4)
    viernes = viernes.advance(:weeks => 1) if hoy > viernes
    @fch_proximo_viernes = viernes
  end

  def parejas_activas
    @parejas = Pareja.find(:all, :conditions => "activo='t'")
  end

  def parejas_activas_info
    @parejas = Pareja.find(:all, :conditions => "activo='t'")
  end
end
