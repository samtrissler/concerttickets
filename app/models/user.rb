class User < ActiveRecord::Base
  acts_as_authentic

  has_and_belongs_to_many :roles
  has_many :purchases

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym } #returns true or false
  end

end
