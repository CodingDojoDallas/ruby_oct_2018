class StudentsController < ApplicationController
  def index
    @dojo = Dojo.find(params[:dojo_id])
    @students = @dojo.students
  end
  def new
    @dojo = Dojo.find(params[:dojo_id])
    @all =Dojo.where.not(id: @dojo.id)
  end

  def create
    @new_student = Student.create(first_name: student_params[:first_name], last_name: student_params[:last_name], email: student_params[:email], dojo: Dojo.find(student_params[:dojo]))
    redirect_to "/dojos/#{params[:dojo_id]}/students"
  end

  def show
    @student = Student.find(params[:student_id])
    @cohort_date = @student.created_at.strftime("%Y-%m-%d")
    @dojo = Dojo.find(params[:dojo_id])
    @other = @dojo.students.where("created_at like ?", "#{@cohort_date}%").where.not(id: @student.id)
  end

  def edit
    @student = Student.find(params[:student_id])
    @dojo = Dojo.find(params[:dojo_id])
    @all =Dojo.where.not(id: @dojo.id)
  end
  def update
    @update_student = Student.find(params[:student_id])
    @update_student.update(first_name: student_params[:first_name], last_name: student_params[:last_name], email: student_params[:email], dojo: Dojo.find(student_params[:dojo]))
    redirect_to "/dojos/#{params[:dojo_id]}/students/#{params[:student][:id]}"
  end
  def destroy
    Student.find(params[:student_id]).destroy
    redirect_to "/dojos/#{params[:dojo_id]}/students"
  end
  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :dojo)
  end
end
