class RemisorCotizacionesMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_cotizaciones_mailer.confirmacioncotizclomul.subject
  #
  def confirmacioncotizclomul
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_cotizaciones_mailer.confirmacioncotizmescam.subject
  #
  def confirmacioncotizmescam
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_cotizaciones_mailer.confirmacioncotizmesexp.subject
  #
  def confirmacioncotizmesexp
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_cotizaciones_mailer.confirmacioncotizesccam.subject
  #
  def confirmacioncotizesccam
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
