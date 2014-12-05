class ImagesController < ApplicationController
	def create
		@course = Course.find(params[:course_id])
		@course.images.create(image_params)
	end

	private

	def image_params
		params.require(:image).permit(:courses)
end

