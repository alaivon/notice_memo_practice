class Notice < ActiveRecord::Base
	belongs_to :user

	def done
		self.update(is_completed: true)
	end

	def is_completed?
		is_completed
	end

end
