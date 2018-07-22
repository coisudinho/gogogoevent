class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :trackable, :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable,
		:registerable,
		:recoverable,
		:validatable

	validates :cnpj, uniqueness: true

	has_many :events, dependent: :destroy

end
