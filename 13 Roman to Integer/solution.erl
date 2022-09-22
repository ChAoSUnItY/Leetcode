-spec const(I :: integer()) -> #{unicode:unicode_binary() => integer()}.
const(1) ->
    #{<<"I">> => 1, <<"V">> => 5, <<"X">> => 10, <<"L">> => 50, <<"C">> => 100, <<"D">> => 500, <<"M">> => 1000};
const(2) ->
    #{<<"IV">> => 4, <<"IX">> => 9, <<"XL">> => 40, <<"XC">> => 90, <<"CD">> => 400, <<"CM">> => 900};
const(I) ->
    #{}.

-spec roman_to_int(S :: unicode:unicode_binary()) -> integer().
roman_to_int(S) ->
  Len = string:length(S),
  if
    Len >= 1 ->
        Val = maps:get(string:slice(S, 0, 2), const(2), -1),
        if
            Val =/= -1 -> roman_to_int(string:slice(S, 2)) + Val;
            true -> roman_to_int(string:slice(S, 1)) + maps:get(string:slice(S, 0, 1), const(1), 0)
        end;
    true -> 0
  end.