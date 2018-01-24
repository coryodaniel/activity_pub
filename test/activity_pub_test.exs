defmodule ActivityPubTest do
  use ExUnit.Case
  doctest ActivityPub

  test "greets the world" do
    assert ActivityPub.hello() == :world
  end
end
