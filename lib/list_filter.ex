defmodule ListFilter do
  require Integer

  def call(list) do
    odd_values =
      Enum.filter(list, fn item ->
        case Integer.parse(item) do
          {value, _} -> Integer.is_odd(value)
          :error -> false
        end
      end)

    list_length = length(odd_values)

    list_length
  end
end
