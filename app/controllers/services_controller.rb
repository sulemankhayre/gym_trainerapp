class ServicesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new 
    @service = Service.new
  end 
  def create
    service = @Service.create!(service_params)
    redirect_to @trainer
  end


  private 

    def service_params
    return params.require(:service).permit(:product, :description,:location )
  end 


end
