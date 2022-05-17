class ServicesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def return_trainer
  @trainer_id = current_user.trainer.id
  end
  def index
  end 
  def show
    @service = Service.find(params[:id])
  end
def create
    @service = Service.new(service_params)
    @service.trainer_id = service_params[:trainer_id]
    if @service.save && @service.valid?
      @trainer = Trainer.find(service_params[:trainer_id])
      redirect_to @trainer
    end
  end
  def new
    @trainer_id = params[:trainer_id]
    @service = Service.new
  end
  def edit
    @trainer_id = params[:trainer_id]
    @service = Service.find(params[:id])
  end 
   def update 
    @service = Service.find(params[:id])
    @service.update(service_edit_params)
    redirect_to @service
  end 

  def destroy 
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to @service

  end

  private 

    def service_params
    return params.require(:service).permit(:product, :description,:location,:trainer_id )
  end 

  def service_edit_params
    return params.require(:service).permit(:product, :description,:location )
  end 


end
