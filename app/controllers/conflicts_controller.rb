class ConflictsController < ApplicationController
  def index
    @conflicts = Conflict.all
  end

  def show
    @conflict = Conflict.find(params[:id])
  end

  def new
    @conflict = Conflict.new
  end

  def create
    @conflict = Conflict.new(conflict_params)
    @conflict.user = current_user
    if @conflict.save
      redirect_to conflict_path(@conflict)
    else
      render 'new'
    end
  end

  def edit
    @conflict = Conflict.find(params[:id])
  end

  def update
    @conflict = Conflict.find(params[:id])
    @conflict.update(conflict_params)
    redirect_to conflict_path(@conflict)
  end

  def destroy
    @conflict = Conflict.find(params[:id])
    @conflict.destroy
    redirect_to profile_path
  end

  private

  def conflict_params
    params.require(:conflict).permit(:name)
  end
end
