class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_rent_notification.subject
  #
  default from: "no-reply@training.wolox.com.ar"
  
  def new_rent_notification(rent)
    @rent = rent
    mail to: "ahogadosderazon@gmail.com"
  end
end
