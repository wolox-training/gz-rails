class RentsController < ApplicationController
  include Wor::Paginate

  def index
    rents = Rent.all
    render json: rents
  end

  def create
    rent = Rent.new(rent_params)
    if rent.save
      ModelMailer.new_rent_notification(rent).deliver
      render json: rent
    else
      render json: rent.errors
    end
  end

  def rent_params
    params.permit(:user_id, :book_id, :to, :from)
  end
end
