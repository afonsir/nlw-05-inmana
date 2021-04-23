defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}
      expected = {:ok, "You are very special banana"}

      assert Welcomer.welcome(params) == expected
    end

    test "when the user is not special, returns a message" do
      params = %{"name" => "Afonso", "age" => "25"}
      expected = {:ok, "Welcome afonso"}

      assert Welcomer.welcome(params) == expected
    end

    test "when the user is under age, returns an error" do
      params = %{"name" => "Afonso", "age" => "17"}
      expected = {:error, "You shall not pass afonso"}

      assert Welcomer.welcome(params) == expected
    end
  end
end
