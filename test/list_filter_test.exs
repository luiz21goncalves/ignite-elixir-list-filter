defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "get the number of odd values" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end

    test "receive an empty list" do
      list = []

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end
  end
end
