require 'test_helper'

class RemisorCotizacionesMailerTest < ActionMailer::TestCase
  test "confirmacioncotizclomul" do
    mail = RemisorCotizacionesMailer.confirmacioncotizclomul
    assert_equal "Confirmacioncotizclomul", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmacioncotizmescam" do
    mail = RemisorCotizacionesMailer.confirmacioncotizmescam
    assert_equal "Confirmacioncotizmescam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmacioncotizmesexp" do
    mail = RemisorCotizacionesMailer.confirmacioncotizmesexp
    assert_equal "Confirmacioncotizmesexp", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmacioncotizesccam" do
    mail = RemisorCotizacionesMailer.confirmacioncotizesccam
    assert_equal "Confirmacioncotizesccam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
