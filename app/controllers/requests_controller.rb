class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.create(request_params)
    redirect_to '/'
  end
  
  def destroy
    request = Request.find(params[:id])
    request.destroy
    redirect_to root_path
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    request = Request.find(params[:id])
    request.update(request_params)
    redirect_to root_path
  end

  def show
    @request = Request.find(params[:id])
    
  end

  private
  def request_params
    params.require(:request).permit(:title, :date, :description, :expected_length, :expected_place)
  end

  
end
