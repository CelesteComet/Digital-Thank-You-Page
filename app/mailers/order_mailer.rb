class OrderMailer < ApplicationMailer
  default from: 'hei22190@gmail.com'

  def thank_you_email(order)
    @child_name = order.child_name 
    @url = 'http://localhost:3000/thank_you'
    mail(to: order.giftee_email, subject: 'Send a thank you for your recent of gift!')
  end
end
