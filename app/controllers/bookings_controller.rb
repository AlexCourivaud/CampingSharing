class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @bookings = Booking.all
    @mybookings = @bookmarks.where(user_id: current_user.id)
  end

  def show
  end

  def new
  end

  def create
    @booking = Booking.new
    @booking.product_id = paramas[:product_id]
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_path
    else
      render :new, statut: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
