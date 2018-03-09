class ClassstudentsController < ApplicationController
  before_action :set_classstudent, only: [:show, :edit, :update, :destroy]
  def index
    @classstudents = Classstudent.all
  end
  def new
    @classstudent = Classstudent.new
  end
  def create
    @classstudent = Classstudent.new(classstudent_params)

    respond_to do |format|
      if @classstudent.save
        format.html { redirect_to classstudents_path, notice: 'Classstudent was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  private
    def set_classstudent
      @classstudent = Classstudent.find(params[:id])
    end
    def classstudent_params
      params.require(:classstudent).permit(:name, :detail, :status)
    end
end
