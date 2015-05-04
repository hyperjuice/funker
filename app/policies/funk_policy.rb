class FunkPolicy
	attr_reader :user, :funk

	def initialize(user, funk)
		@user = user
		@funk = funk
	end

	def show?
		funk.user_id == user.try(:id)
	end

	def edit?
		show?
	end

	def update?
		show?
	end

	def destroy?
		show?
	end
end