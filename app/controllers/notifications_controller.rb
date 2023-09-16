class NotificationsController < ApplicationController
  def send_email
    email = params[:email]

    begin
      NotificationMailer.send_email_notification(email).deliver_now
      flash[:success] = "Email sent successfully!"
    rescue StandardError => e
      flash[:error] = "Failed to send email: #{e.message}"
    end

    redirect_to root_path
  end
end

