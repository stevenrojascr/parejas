class Evento < ActiveRecord::Base
  has_and_belongs_to_many :parejas
  validates_presence_of :codigo
end
