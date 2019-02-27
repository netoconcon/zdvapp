class ConflictsController < ApplicationController
  before_action :find_conflict, only: [:catch, :leave]

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

  def catch
    @conflict.mediator_id = current_user.mediator.id
    @conflict.save!
    redirect_to conflict_path(@conflict)
  end

  def leave
    @conflict.mediator_id = nil
    @conflict.save!
    redirect_to conflict_path(@conflict)
  end

  private

  def conflict_params
    params.require(:conflict).permit(:name)
  end

  def find_conflict
    @conflict = Conflict.find(params[:id])
  end
end
