class User < ActiveRecord::Base
  has_and_belongs_to_many :roles

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, 
          :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
    attr_accessible :email, :username, :password, :password_confirmation, :remember_me, :role_ids

  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
end