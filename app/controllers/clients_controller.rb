class ClientsController < ApplicationController
  
  def index 
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create!(client_params)
    redirect_to clients_path
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(client_params)
      redirect_to clients_path
    else
      render :edit
    end
  end

  def destroy
    Client.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to clients_path }
      format.js
    end
  end

  private

  def client_params
    params.require(:client).permit(:name, :logo_url, :tag)
  end

end 
