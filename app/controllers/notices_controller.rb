class NoticesController < ApplicationController

	before_action :find_notice, except: [:index, :new, :create]
	before_action :authenticate_user!

	def index
		@notices = current_user.notices.all
		@notices_done = current_user.notices.where(is_completed: true)
		@notices_undo = current_user.notices.where(is_completed: false)
			
	end

	def new
		@notice = current_user.notices.new
	end

	def create
		@notice = current_user.notices.new(notice_params)
		if @notice.save
			redirect_to notices_path, notice: "Saved Successfully!"
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		if @notice.update(notice_params)
			redirect_to notices_path, notice: "Updated Successfully!"
		else
			render :edit
		end
	end

	def destroy
		@notice.destroy
		redirect_to notices_path, notice: "Deleted Successfully!"
	end

	def completed
		@notice.done
		redirect_to :back, notice: "#{@notice.event} is completed!"
	end

	private

	def find_notice
		@notice = current_user.notices.find(params[:id])
	end

	def notice_params
		params.require(:notice).permit(:location, :event, :postscript, :event_time, :category_id, :user_id, :is_completed)
	end

end
