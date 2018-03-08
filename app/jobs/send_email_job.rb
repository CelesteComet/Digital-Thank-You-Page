class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(order)
    # Do something later
    msg = OrderMailer.thank_you_email(order)
    msg.deliver_later    
  end
end
