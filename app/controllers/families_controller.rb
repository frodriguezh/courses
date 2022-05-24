class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :edit, :update, :destroy]
  
  def index
    @families = Family.where(santiago:true)
  end

  def new
    @family = Family.new

  end

  def create
    @family = Family.create family_params
    redirect_to families_path
    
  end

  def update
    @family.update family_params
    redirect_to families_path
  end

  def destroy
    @family.delete
    redirect_to families_path

  end

  def show
  end

  def edit
    @family = Family.find params[:id]
  end

  private

  def set_family
    @family = Family.find params[:id]
  end
  
  def family_params
    params.required(:family).permit(:nombre, :app, :apm, :iquique, :santiago)
  end

 
end
