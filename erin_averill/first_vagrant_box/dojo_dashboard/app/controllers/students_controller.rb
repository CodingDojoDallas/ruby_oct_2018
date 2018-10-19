class StudentsController < ApplicationController
	def show
		@dojo = Dojo.find(params[:dojo_id])
		@student = Student.find(params[:id])
		@students = @dojo.students
		@date = @student.created_at
		@next_date = @date + 86400
		# @compare = @date.strftime("%Y %m %d")
		@cohorts = @students.where("created_at BETWEEN '#{@date}' AND '#{@next_date}'")
	end

	def new
		@dojo = Dojo.find(params[:id])
		@dojos = Dojo.all
	end

	def create
		# p params[:student][:dojo_id]
		@dojo = Dojo.find(params[:dojo_id])
		@new_student = Student.create(student_params)
		p '*****', params[:student][:dojo_id], '********'
		redirect_to "/dojos/#{@dojo.id}"
	end

	def edit
		@student = Student.find(params[:id])
		@dojo = Dojo.find(params[:dojo_id])
		@dojos = Dojo.all
	end

	def update
		pupil = Student.find(params[:id])
		pupil.update(student_params)
		pupil.save
		redirect_to "/dojos/#{params[:dojo_id]}/students/#{params[:id]}"
	end

	def destroy
		pupil = Student.find(params[:id])
		pupil.delete
		redirect_to "/dojos/#{params[:dojo_id]}"
	end

	private
	def student_params
		params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
	end
end