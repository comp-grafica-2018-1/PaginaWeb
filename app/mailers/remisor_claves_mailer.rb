class RemisorClavesMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_claves_mailer.envioclavecotizclomul.subject
  #
  def envioclavecotizclomul(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: "Clave de Confirmación de Orden de Compra"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_claves_mailer.envioclavecotizesccam.subject
  #
  def envioclavecotizesccam(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: "Clave de Confirmación de Orden de Compra"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_claves_mailer.envioclavecotizmescam.subject
  #
  def envioclavecotizmescam(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: "Clave de Confirmación de Orden de Compra"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_claves_mailer.envioclavecotizmesexp.subject
  #
  def envioclavecotizmesexp(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: "Clave de Confirmación de Orden de Compra"
  end
end
