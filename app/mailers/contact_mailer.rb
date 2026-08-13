class ContactMailer < ApplicationMailer
  default from: ENV.fetch("SMTP_FROM", "noreply@your-company.com")

  def contact_email
    @contact = params[:contact]

    mail(
      to: ENV.fetch("CONTACT_MAIL_TO", "info@your-company.com"),
      reply_to: @contact.email,
      subject: "お問い合わせがありました"
    )
  end
end