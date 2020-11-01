class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end
  
  def update
    @list = List.find(params[:id])
    if @list.update_attributes(list_params)
      redirect_to :root
    else
      render action: :edit
    end
  end
  
  def destroy
    @list = List.find(params[:id])
    redirect_to :root if @list.destroy
  end

  private
    def list_params
      params.require(:list).permit(:title).merge(user: current_user)
    end
end
