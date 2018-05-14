class RemisorOrdenesCompraMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_ordenes_compra_mailer.confirmacionordenclomul.subject
  #
  def confirmacionordenclomul(ordencompra)
    @ordencompra = ordencompra
    mail to: @ordencompra.correo, subject: "Confirmación de Orden de Compra"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_ordenes_compra_mailer.confirmacionordenesccam.subject
  #
  def confirmacionordenesccam(ordencompra)
    @ordencompra = ordencompra
    mail to: @ordencompra.correo, subject: "Confirmación de Orden de Compra"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_ordenes_compra_mailer.confirmacionordenmescam.subject
  #
  def confirmacionordenmescam(ordencompra)
    @ordencompra = ordencompra
    mail to: @ordencompra.correo, subject: "Confirmación de Orden de Compra"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remisor_ordenes_compra_mailer.confirmacionordenmesexp.subject
  #
  def confirmacionordenmesexp(ordencompra)
    @ordencompra = ordencompra
    mail to: @ordencompra.correo, subject: "Confirmación de Orden de Compra"
  end
end
