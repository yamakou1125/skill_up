class ItemsController < ApplicationController

def new
    @item = Item.new
end

def create
    @item = Item.new(item_params)
      @item.user_id = current_user.id
    if @item.save
      flash[:notice] = "登録が完了しました。"
      redirect_to items_path
    else
      render :new
    end
end

def index
  @items = current_user.items
end

end