class Ability
	include CanCan::Ability
	
	def initialize(user)
		user ||= User.new # guest user
		if user.role? :Administrador
			can :manage, :all
		elsif user.role? :Pastoreo
			can [:index, :asistencia], Pareja
		elsif user.role? :PastoreoBaseDatos
			can :manage, [Pareja, Evento]
		elsif user.role? :CoordinadorGeneral
			can [:read, :asistencia], [Pareja, Evento]
		elsif user.role? :CoordinadorMinisterio
			can [:read, :asistencia], [Pareja, Evento]
		else 
			can :index, Pareja
		end
	end
end
