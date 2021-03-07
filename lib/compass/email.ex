defmodule Compass.Email do
  import Bamboo.Email

  def welcome_email(recipient) do
    base_email()
    |> to(recipient)
    |> from("welcome@compass.com")
    |> subject("Welcome!")
    |> html_body("<p>Thanks for joining</p>")
    |> text_body("Thanks for joining")
  end

  defp base_email do
    new_email()
    |> from("myapp@compass.com")
    |> put_header("Reply-To", "support@compass.com")
  end
end
