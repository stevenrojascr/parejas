# == Schema Information
# Schema version: 20101102040502
#
# Table name: parejas
#
#  id                 :integer         primary key
#  codigo             :string(255)
#  nom_el             :string(255)
#  nom_ella           :string(255)
#  fch_1era_asamblea  :date
#  fch_nac_el         :date
#  ocupacion_el       :string(255)
#  movil_el           :string(255)
#  email_el           :string(255)
#  fch_nac_ella       :date
#  ocupacion_ella     :string(255)
#  movil_ella         :string(255)
#  email_ella         :string(255)
#  fch_matrimonio     :date
#  residencia         :string(255)
#  tel_casa           :string(255)
#  hijos_vivos        :integer
#  perdidas           :integer
#  invitados_por      :string(255)
#  ministerio         :string(255)
#  retiro1            :boolean
#  retiro2            :boolean
#  retiro3            :boolean
#  retiro4            :boolean
#  created_at         :timestamp
#  updated_at         :timestamp
#  situacion_especial :string(255)
#  activo             :boolean
#

class Pareja < ActiveRecord::Base
  has_and_belongs_to_many :eventos
  has_attached_file :foto, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :storage => :s3,
  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  :path => ":attachment/:id/:style.:extension",
  :bucket => 'fotosparejas',
  :default_url => '/images/:attachment/silueta_:style.jpg'
  
  scope :activas, where("activo = 't'")
  scope :ordenadas_por_codigo, order("codigo")
  scope :ordenadas_por_nom_el, order("nom_el") 
  
  
  def self.find_parejas_nuevas_fecha (fecha)
    if Rails.env.production? 
      #Solo para PostGreSQL. Parece que Heroku hace dump del Sqlite3 a PostGreSQL que es lo utiliza Heroku.
    else
      #Solo para SQLite3. Pero Heroku usa PostGreSQL  
        find(:all, :conditions => ["fch_1era_asamblea = ?",fecha])
    end
  end
  
end

