defmodule Solution do
  @two %{"IV" => 4, "IX" => 9, "XL" => 40, "XC" => 90, "CD" => 400, "CM" => 900}
  @one %{"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}

  @spec roman_to_int(s :: String.t) :: integer
  def roman_to_int(s) do
    len = String.length s
    case len do
        _ when len > 1 ->
            case @two[String.slice(s, 0..1)] do
                nil -> roman_to_int(String.slice(s, 1..-1)) + @one[String.slice(s, 0..0)]
                val -> roman_to_int(String.slice(s, 2..-1)) + val
            end
        _ when len > 0 -> roman_to_int(String.slice(s, 1..-1)) + @one[String.slice(s, 0..0)]
        _ -> 0
    end
  end
end