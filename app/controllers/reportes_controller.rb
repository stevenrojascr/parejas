class ReportesController < ApplicationController
   before_filter :authenticate_user! #, :except => :index

   
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
    
    if Rails.env.production? 
      #Solo para PostGreSQL. Parece que Heroku hace dump del Sqlite3 a PostGreSQL que es lo utiliza Heroku.
      mes = Date.today.month
      @parejas_aniv_matrimonio = Pareja.find(:all, :conditions => ["activo='t' and (date_part('month', fch_matrimonio) = ?)", mes])
      @parejas_aniv_el = Pareja.find(:all, :conditions => ["activo='t' and (date_part('month', fch_nac_el) = ?)", mes])
      @parejas_aniv_ella = Pareja.find(:all, :conditions => ["activo='t' and (date_part('month', fch_nac_ella) = ?)", mes])
    else
      #Solo para SQLite3. Pero Heroku usa PostGreSQL  
      @parejas_aniv_matrimonio = Pareja.find(:all, :conditions => ["activo='t' and STRFTIME('%m', fch_matrimonio) = ?", Date.today.strftime("%m")])
      @parejas_aniv_el = Pareja.find(:all, :conditions => ["activo='t' and STRFTIME('%m', fch_nac_el) = ?", Date.today.strftime("%m")])
      @parejas_aniv_ella = Pareja.find(:all, :conditions => ["activo='t' and STRFTIME('%m', fch_nac_ella) = ?", Date.today.strftime("%m")])
    end

  end
  
	def parejas_tel_celulares
    	@parejas_tel_celulares = Pareja.find(:all, :conditions => "activo='t'")
	end

   
end
