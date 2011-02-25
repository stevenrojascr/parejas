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
  
  def parejas_aniversarios_mes
    @parejas_aniv_matrimonio = Pareja.find(:all, :conditions => ["activo='t' and strftime('%m', fch_matrimonio) = ?", Date.today.strftime("%m")])
    @parejas_aniv_el = Pareja.find(:all, :conditions => ["activo='t' and strftime('%m', fch_nac_el) = ?", Date.today.strftime("%m")])
    @parejas_aniv_ella = Pareja.find(:all, :conditions => ["activo='t' and strftime('%m', fch_nac_ella) = ?", Date.today.strftime("%m")])

  end

  
end
