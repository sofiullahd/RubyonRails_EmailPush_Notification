class NotificationMailer < ApplicationMailer
    def send_email_notification(email)
      @message = "Your email notification message here."
      mail(to: email, subject: "Email Notification")
    end
  end