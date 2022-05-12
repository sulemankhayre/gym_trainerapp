class TrainersController < ApplicationController
  
  before_action :authenticate_user!
    #first before action must

  def index
    @trainer = Trainer.all
  end

  def show
    begin
     @trainer = Trainer.find(params[:id])
    rescue
     render plain: "Trainer not found!"
    end
  end

  def delete
  end
end
