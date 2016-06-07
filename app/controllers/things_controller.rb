class ThingsController < ApplicationController
  before_action :set_thing, except: [:index, :new, :create]

  def show
  end

  def index
    @things = Thing.all
  end

  def edit
  end

  def update
    if @thing.update_attributes(thing_params)
      redirect_to :index
    else
      render :edit
    end
  end

  def destroy
    @thing.destroy

    redirect_to :index
  end


  private

  def think_params
    params.require(:thing).permit(:stuff1, :stuff2)
  end


  def set_thing
    @thing = Thing.find(params[:id])
  end

end
