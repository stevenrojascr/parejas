class ParejasController < ApplicationController
  before_filter :authenticate_user! #, :except => :index
  load_and_authorize_resource

  
  # GET /parejas
  # GET /parejas.xml
  def index
    if params[:incluir_inactivas].blank?
      @parejas = Pareja.find(:all, :conditions => "activo = 't'")
    else
      @parejas = Pareja.find(:all) #Todas las parejas
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parejas }
    end
  end

  # GET /parejas/1
  # GET /parejas/1.xml
  def show
    @pareja = Pareja.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pareja }
    end
  end

  # GET /parejas/new
  # GET /parejas/new.xml
  def new
    @pareja = Pareja.new
    @pareja.activo = true

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pareja }
    end
  end

  # GET /parejas/1/edit
  def edit
    @pareja = Pareja.find(params[:id])
  end

  # POST /parejas
  # POST /parejas.xml
  def create
    @pareja = Pareja.new(params[:pareja])

    respond_to do |format|
      if @pareja.save
        format.html { redirect_to(@pareja, :notice => 'Pareja creada exitosamente.') }
        format.xml  { render :xml => @pareja, :status => :created, :location => @pareja }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pareja.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parejas/1
  # PUT /parejas/1.xml
  def update
    @pareja = Pareja.find(params[:id])

    respond_to do |format|
      if @pareja.update_attributes(params[:pareja])
        format.html { redirect_to(@pareja, :notice => 'Pareja actualizada exitosamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pareja.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parejas/1
  # DELETE /parejas/1.xml
  def destroy
    @pareja = Pareja.find(params[:id])
    @pareja.destroy

    respond_to do |format|
      format.html { redirect_to(parejas_url) }
      format.xml  { head :ok }
    end
  end
  
  def asistencia
    @pareja = Pareja.find(params[:id]) 
  
  end
  
end

