class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    
    @student = Student.new(student_params)
    if @student.save
      redirect_to(students_path)
    else
      render :new
    end
 
  end

  def destroy
  end

  private

  def student_params
    params.require(:student).permit(:name, :course)
  end


end
