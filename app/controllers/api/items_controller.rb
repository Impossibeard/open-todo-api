class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    list = List.find(params[:list_id])
    item = Item.new(item_params)
    puts params.inspect

    if item.save
      render json: { item: item, list: list }
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    item = Item.find(params[:id])

    if item.update(item_params)
      render json: item
    else
      render json: { errors: item.errors.full_messages }
    end
  end

  private
  def item_params
    params.require(:item).permit(:description, :completed, :list_id)
  end
end
