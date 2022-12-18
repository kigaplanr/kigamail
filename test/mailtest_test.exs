defmodule MailtestTest do
  use ExUnit.Case
  doctest Mailtest

  test "greets the world" do
    assert Mailtest.hello() == :world
  end
end
