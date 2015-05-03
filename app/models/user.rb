class User < ActiveRecord::Base
	# Include default devise modules.

	has_many :funks

end