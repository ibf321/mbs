class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable,
  :validatable, :authentication_keys => [:login]

  enum kind: [:supervision, :unit_manager, :program_manager, :technicianm, :admin]
  enum status: [:active, :inactive]
  enum unit: [:Sesc_Juazeiro, :Sesc_Crato, :Sesc_Iguatu, :Sesc_Sobral, :Sesc_Fortaleza]


  validates :username, uniqueness: true
  validates :email, uniqueness: true

  attr_accessor :login

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end

  end
