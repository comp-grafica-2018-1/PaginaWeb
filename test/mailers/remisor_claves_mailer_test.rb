require 'test_helper'

class RemisorClavesMailerTest < ActionMailer::TestCase
  test "envioclavecotizclomul" do
    mail = RemisorClavesMailer.envioclavecotizclomul
    assert_equal "Envioclavecotizclomul", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "envioclavecotizesccam" do
    mail = RemisorClavesMailer.envioclavecotizesccam
    assert_equal "Envioclavecotizesccam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "envioclavecotizmescam" do
    mail = RemisorClavesMailer.envioclavecotizmescam
    assert_equal "Envioclavecotizmescam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "envioclavecotizmesexp" do
    mail = RemisorClavesMailer.envioclavecotizmesexp
    assert_equal "Envioclavecotizmesexp", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
