# Preview all emails at http://localhost:3000/rails/mailers/remisor_ordenes_compra_mailer
class RemisorOrdenesCompraMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/remisor_ordenes_compra_mailer/confirmacionordenclomul
  def confirmacionordenclomul
    RemisorOrdenesCompraMailer.confirmacionordenclomul
  end

  # Preview this email at http://localhost:3000/rails/mailers/remisor_ordenes_compra_mailer/confirmacionordenesccam
  def confirmacionordenesccam
    RemisorOrdenesCompraMailer.confirmacionordenesccam
  end

  # Preview this email at http://localhost:3000/rails/mailers/remisor_ordenes_compra_mailer/confirmacionordenmescam
  def confirmacionordenmescam
    RemisorOrdenesCompraMailer.confirmacionordenmescam
  end

  # Preview this email at http://localhost:3000/rails/mailers/remisor_ordenes_compra_mailer/confirmacionordenmesexp
  def confirmacionordenmesexp
    RemisorOrdenesCompraMailer.confirmacionordenmesexp
  end

end
