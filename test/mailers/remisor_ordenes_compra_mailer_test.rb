require 'test_helper'

class RemisorOrdenesCompraMailerTest < ActionMailer::TestCase
  test "confirmacionordenclomul" do
    mail = RemisorOrdenesCompraMailer.confirmacionordenclomul
    assert_equal "Confirmacionordenclomul", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmacionordenesccam" do
    mail = RemisorOrdenesCompraMailer.confirmacionordenesccam
    assert_equal "Confirmacionordenesccam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmacionordenmescam" do
    mail = RemisorOrdenesCompraMailer.confirmacionordenmescam
    assert_equal "Confirmacionordenmescam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmacionordenmesexp" do
    mail = RemisorOrdenesCompraMailer.confirmacionordenmesexp
    assert_equal "Confirmacionordenmesexp", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
