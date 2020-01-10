class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.new(params)
  end

  def create
    first_name = params[:student][:first_name]
    last_name = params[:student][:last_name]
    @student = Student.create(first_name: first_name, last_name: last_name)
    redirect_to students_path
  end

end
