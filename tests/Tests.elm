module Tests exposing (viewTest)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Main exposing (..)
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector exposing (tag, text)


viewTest : Test
viewTest =
    describe "viewのテスト"
        [ test "カウンタは0を表示している" <|
            \() ->
                view 0
                    |> Query.fromHtml
                    |> Query.find [ tag "p" ]
                    |> Query.has [ text "0" ]
        , test "カウンタは15を表示している" <|
            \() ->
                view 15
                    |> Query.fromHtml
                    |> Query.find [ tag "p" ]
                    |> Query.has [ text "15" ]
        ]
