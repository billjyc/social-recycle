class DibsController < ApplicationController

  def create
    @dib = Dib.new(dib_params)
    if @dib.save
      flash[:success] = "Success!"
      redirect_to item_path dib_params[:item_id]
    else
      flash[:alert] = "Failure!"
      redirect_to item_path dib_params[:item_id]
    end
  end

  def give
    @item = Item.find(dib_params[:item_id])
    @item.status=1
    receiver = User.find(dib_params[:user_id])
    #p receiver
    @item.receiver = receiver
    @item.save
    Dib.where(item_id: dib_params[:item_id]).destroy_all

    #notify the reveiver by mail
    giver = User.find(@item.user_id)
    UserMailer.get_item_notify(giver, receriver, @item).deliver_now

    flash[:notice] = "Thanks for your generosity!"
    redirect_to root_path
  end

  def destroy
    @dib = Dib.find_by(item_id: dib_params[:item_id], user_id: dib_params[:user_id])
    @dib.destroy
    flash[:alert] = "Cancelled!"
    redirect_to item_path dib_params[:item_id]
  end

  private

  def dib_params
    params.require(:dib).permit(:item_id, :user_id)
  end

end
