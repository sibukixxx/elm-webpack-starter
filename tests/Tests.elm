module Example exposing (a)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Main exposing (..)
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector exposing (tag, text)


a =
    1



-- viewTest : Test
-- viewTest =
--     describe "Testing view function"
--         [ test "Button has the expected text" <|
--             \() ->
--                 view 0
--                     |> Query.fromHtml
--                     |> Query.find [ tag "button" ]
--                     |> Query.has [ text "+ 1" ]
--         ]
