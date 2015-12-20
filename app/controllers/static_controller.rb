class StaticController < ApplicationController

  def home
  end

  def work
  end

  def about
  end

  def contact
  end

  def send_message
    contact_message = ContactForm.new(contact_params)
    if contact_message.valid?
      contact_message.deliver
      redirect_to root_path, notice: "Your message was successfully sent!"
    else
      render :contact, notice: "Your message was not able to be sent, please try again later"
    end
  end

  private

  def contact_params
    params.permit(:first_name, :last_name, :email, :message)
  end
end
