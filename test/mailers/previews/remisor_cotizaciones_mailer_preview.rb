# Preview all emails at http://localhost:3000/rails/mailers/remisor_cotizaciones_mailer
class RemisorCotizacionesMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/remisor_cotizaciones_mailer/confirmacioncotizclomul
  def confirmacioncotizclomul
    RemisorCotizacionesMailer.confirmacioncotizclomul
  end

  # Preview this email at http://localhost:3000/rails/mailers/remisor_cotizaciones_mailer/confirmacioncotizmescam
  def confirmacioncotizmescam
    RemisorCotizacionesMailer.confirmacioncotizmescam
  end

  # Preview this email at http://localhost:3000/rails/mailers/remisor_cotizaciones_mailer/confirmacioncotizmesexp
  def confirmacioncotizmesexp
    RemisorCotizacionesMailer.confirmacioncotizmesexp
  end

  # Preview this email at http://localhost:3000/rails/mailers/remisor_cotizaciones_mailer/confirmacioncotizesccam
  def confirmacioncotizesccam
    RemisorCotizacionesMailer.confirmacioncotizesccam
  end

end
