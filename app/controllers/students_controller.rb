class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def show
        student = Student.find(params[:id])
        render json: student
    end

    def create
        student = Student.create(student_params)
        render json: student
    end

    def update
        student = Student.find(params[:id])
        student.update(name: params[:name])
        render json: student
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
    end

    private

    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end

end
