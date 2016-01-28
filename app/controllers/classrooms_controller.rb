class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
    @students = Student.all
    @courses = Course.all
  end

  def create
    @classroom = Classroom.new(classroom_params)

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to root_path, notice: 'Classroom created.' }
        format.json { render :show, status: :created, location: @classroom }
      else
        format.html { render :new }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def classroom_params
    params.require(:classroom).permit(:student_id, :course_id, :entry_at)
  end
end
