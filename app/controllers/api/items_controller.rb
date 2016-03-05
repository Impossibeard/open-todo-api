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

  private
  def item_params
    params.require(:item).permit(:description, :list_id)
  end
end
