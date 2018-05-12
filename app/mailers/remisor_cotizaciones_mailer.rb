class RemisorCotizacionesMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_cotizaciones_mailer.confirmacioncotizclomul.subject
  #
  def confirmacioncotizclomul(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: "Confirmación de Cotización"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_cotizaciones_mailer.confirmacioncotizmescam.subject
  #
  def confirmacioncotizmescam(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: "Confirmación de Cotización"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_cotizaciones_mailer.confirmacioncotizmesexp.subject
  #
  def confirmacioncotizmesexp(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: "Confirmación de Cotización"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_cotizaciones_mailer.confirmacioncotizesccam.subject
  #
  def confirmacioncotizesccam(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: "Confirmación de Cotización"
  end
end
