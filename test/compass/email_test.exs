defmodule Compass.EmailTest do
  use ExUnit.Case

  test "welcome email" do
    user = "paul@gmail.com"

    email = Compass.Email.welcome_email(user)

    assert email.to == user
    assert email.from == "welcome@compass.com"
    assert email.html_body =~ "<p>Thanks for joining</p>"
    assert email.text_body =~ "Thanks for joining"
  end
end
