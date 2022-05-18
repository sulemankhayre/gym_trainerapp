class TrainersController < ApplicationController
  # DEBUG - REMOVE FOR PRODUCTION
  skip_before_action :verify_authenticity_token
  before_action :set_trainer, only: [:show, :update, :destroy,:edit,]
  before_action :set_user, only: [:new,:edit,:create]
  def index
    @trainer = Trainer.all
  end

  def show
    
    @services = @trainer.services.order(created_at: :desc)
  end

  def edit 
  end 

  def new 
    @trainer = Trainer.new
  end 

  def create 
  begin
    @trainer = Trainer.new(trainer_params)
    @trainer.save!
    redirect_to @trainer
    rescue 
    flash.now[:alert] = @trainer.errors.full_messages.join('<br>')
    render 'new'
    end
  end

  def update 
    @trainer.update(trainer_params)
    redirect_to @trainer
  end 

  def destroy 
  @trainer.destroy
  redirect_to @trainer

  end

  private 

  def set_user
  @user = User.order(:email)
  end

  def trainer_params
    return params.require(:trainer).permit(:user_id, :first_name,:last_name,:description,:cover )
  end 

  def set_trainer
  @trainer = Trainer.find(params[:id])
  end 
end
