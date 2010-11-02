# == Schema Information
# Schema version: 20101101210702
#
# Table name: parejas
#
#  id                 :integer         not null, primary key
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
#  created_at         :datetime
#  updated_at         :datetime
#  situacion_especial :string(255)
#

class Pareja < ActiveRecord::Base
end
