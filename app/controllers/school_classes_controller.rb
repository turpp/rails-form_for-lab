class SchoolClassesController < ApplicationController

    def new
        @school_class=SchoolClass.new
        render '/student_classes/new'
    end

    def create
         school_class=SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
         redirect_to school_class_path(school_class)
    end

    def show
        @school_class=SchoolClass.find(params[:id])
        render '/student_classes/show'
    end

    def edit
        @school_class=SchoolClass.find(params[:id])
        render '/student_classes/edit'
    end

    def update
        school_class=SchoolClass.find(params[:id])
        school_class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(school_class)
    end


end