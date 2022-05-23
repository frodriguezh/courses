class FamiliesController < ApplicationController
  before_action :set_family, only: [:edit, :delete]
  
  def index
    @families = Family.all
  end

  def new
    @family = Family.new

  end

  def create
    @family = Family.create family_params
    redirect_to families_path
    
  end

  def update

  end

  def destroy

    #@family.delete
    #redirect_to families_path
  end

  def edit
  end

  private

  def set_family
    @family = Family.find params[:id]
  end
  
  def family_params
    params.required(:family).permit(:nombre, :app, :apm, :iquique, :santiago)
  end

 
end
