module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


main : Program Never Model Msg
main =
    Html.program
    { init = init
    , update = update
    , view = view
    , subscriptions = subscriptions
    }


init : (Model, Cmd Msg)
init =
    ( initialModel, Cmd.none )

initialModel : Model
initialModel =
    Model [ ( Topic "topic1" [ (Message "message1"), (Message "message2"), (Message "message3") ] ), ( Topic "topic2" [] ) ]
        ( Topic "topic1" [ (Message "message1"), (Message "message2"), (Message "message3") ] )


-- MODEL

type alias Model =
    { topicList : List Topic
     , currentTopic : Topic }


type alias Topic =
    { title : String
    , messageList : List Message
    }


type alias Message =
    { body : String }


-- UPDATE

type Msg =
    DumbMsg


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        DumbMsg ->
            (model, Cmd.none)


-- VIEW

view : Model -> (Html Msg)
view model =
    div []
    [ ul [] ( List.map messageView model.currentTopic.messageList )
    , ul [ style [ ("float", "right") ] ] ( List.map topicView model.topicList )
    ]


topicView : Topic -> (Html Msg)
topicView topic =
    li []
        [ h4 [] [ text topic.title ]
        ]



messageView : Message -> (Html Msg)
messageView message =
    li []
        [ text message.body ]


-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none