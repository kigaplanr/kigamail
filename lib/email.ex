defmodule Kigamail.Email do
  import Swoosh.Email

  @moduledoc """
  The email module for kigamail

  iex> Kigamail.Email.send("parents@email.com", "subject", "message here")
  {:ok, %{id: "xxxx"}}
  """

  alias Kigamail.Mailer

  def send(email, subject, message) do
    email = new()
    |> to(email)
    |> from("kigamail.leitung@gmail.com")
    |> subject(subject)
    |> text_body(message)

    Mailer.deliver(email)
  end
end
