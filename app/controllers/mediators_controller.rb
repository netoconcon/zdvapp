class MediatorsController < ApplicationController
  def index
    @mediators = Mediator.all
  end

  def show
    @mediator = Mediator.find(params[:id])
  end

  def new
    @mediator = Mediator.new
  end

  def create
    @mediator = Mediator.new(mediator_params)
    if @mediator.save
      redirect_to mediator_path(@mediator)
    else
      render 'new'
    end
  end

  def edit
    @mediator = Mediator.find(params[:id])
  end

  def update
    @mediator = Mediator.find(params[:id])
    @mediator.update(mediator_params)
    redirect_to mediator_path(@mediator)
  end

  def destroy
    @mediator = Mediator.find(params[:id])
    @mediator.destroy
    redirect_to profile_path
  end

  private

  def mediator_params
    params.require(:mediator).permit(:name, :user_id)
  end
end
