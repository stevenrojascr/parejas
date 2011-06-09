class Ability
	include CanCan::Ability
	
	def initialize(user)
		user ||= User.new # guest user
		if user.role? :Administrador
			can :manage, :all
		elsif user.role? :Pastoreo
			can :manage, [Pareja, User]
		else 
			can :read, :all
		end
	end
end
