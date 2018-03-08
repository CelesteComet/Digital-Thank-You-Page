class OrdersController < ApplicationController
  def new 
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      SendEmailJob.set(wait: 20.seconds).perform_later(@order)
      # msg = OrderMailer.thank_you_email(@order)
      # msg.deliver_now
      render :show
    else 
      flash.now[:errors] = @gift.errors.full_messages
      render :create
    end
  end

  def show
  end

  private

  def order_params
    params.permit(
      :order_total, 
      :giftee_email, 
      :child_name, 
      :shipping_date, 
      :payment_info, 
      :billing_address, 
      :shipping_address
    )
  end
end
