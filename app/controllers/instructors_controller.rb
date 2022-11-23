class InstructorsController < ApplicationController
    def index
        instructors = Instructor.all
        render json: instructors
    end

    def show
        instructor = Instructor.find(params[:id])
        render json: instructor 
    end

    def create
        instructor = Instructor.create(name: params[:name])
        render json: instructor 
    end

    def update
        instructor = Instructor.find(params[:id])
        instructor.update(name: params[:name])
        render json: instructor
    end

    def destroy
        instructor = Instructor.find(params[:id])
        instructor. destroy
    end
end
