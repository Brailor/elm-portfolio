module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


---- MODEL ----


type alias Model =
    { pageState : State
    , states : List State
    }


type State
    = Home
    | Resume
    | Work
    | Blog
    | Contact


init : ( Model, Cmd Msg )
init =
    ( { pageState = Home
      , states = [ Home, Resume, Work, Blog, Contact ]
      }
    , Cmd.none
    )



---- UPDATE ----


type Msg
    = NoOp
    | ChangePageState State


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangePageState state ->
            ( { model | pageState = state }, Cmd.none )

        NoOp ->
            ( model, Cmd.none )



---- VIEW ----


blogSection : Html msg
blogSection =
    div [] []


headerSection : List State -> Html Msg
headerSection states =
    header [ id "main-header" ]
        [ div [ class "row no-gutters" ]
            [ div [ class "col-lg-4 col-md-5" ]
                [ img [ src "" ] [] ]
            , div [ class "col-lg-8 col-md-7" ]
                [ div [ class "d-flex flex-column" ]
                    [ div [ class "p-5 bg-dark text-white" ]
                        [ div [ class "name d-flex flex-row justify-content-between align-items-center" ]
                            [ h1 [ class "display-4" ] [ text "Viktor Ohad" ] ]
                        ]
                    , div [ class "p-4 bg-black" ] [ text "Experienced Full Stack Web Developer" ]
                    , div [ class "d-flex flex-row text-white align-items-stretch text-center" ] <|
                        List.map stateButton states
                    ]
                ]
            ]
        ]


homeSection : Html msg
homeSection =
    div [ id "home" ]
        [ div [ class "card card-body bg-primary text-white py-5" ]
            [ h2 [] [ text "Welcome to my page" ]
            , p [ class "lead" ]
                [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis, quia." ]
            ]
        , div [ class "card card-body py-5" ]
            [ h3 [] [ text "My Skills" ]
            , p []
                [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum nulla et, modi harum hic deserunt." ]
            , hr [] []
            , h4 [] [ text "HTML" ]
            , div [ class "progress mb-3" ]
                [ div [ class "progress-bar bg-success", attribute "style" "width:100%" ] []
                ]
            , h4 [] [ text "CSS" ]
            , h6 [] [ text "Sass, Bootstrap" ]
            , div [ class "progress mb-3" ]
                [ div [ class "progress-bar bg-success", attribute "style" "width:95%" ] []
                ]
            , h4 [] [ text "JavaScript" ]
            , h6 [] [ text "React, Redux, Vue" ]
            , div [ class "progress mb-3" ]
                [ div [ class "progress-bar bg-success", attribute "style" "width:95%" ] []
                ]
            , h4 [] [ text "Elm" ]
            , h6 [ class "smoked" ] [ text "This whole site is made with Elm :)" ]
            , div [ class "progress mb-3" ]
                [ div [ class "progress-bar bg-success", attribute "style" "width:80%" ] []
                ]
            , h4 [] [ text "Elixir" ]
            , div [ class "progress mb-3" ]
                [ div [ class "progress-bar bg-success", attribute "style" "width:70%" ] []
                ]
            ]
        ]


resumeSection : Html msg
resumeSection =
    div [ id "resume" ]
        [ div [ class "card card-body bg-success text-white py-5" ]
            [ h2 []
                [ text "My Resume" ]
            , p []
                [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo nobis ut labore iure tempore qui!" ]
            ]
        , div [ class "card card-body py-5" ]
            [ h3 [] [ text "Where have I worked?" ]
            , p []
                [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis eligendi, ex officia itaque tempora natus." ]
            , div [ class "card-deck" ]
                [ div [ class "card" ]
                    [ div [ class "card-body" ]
                        [ h4 [ class "card-title" ] [ text "Lufhansa Systems Hungaria" ]
                        , p [ class "card-text" ]
                            [ text "While I worked here I was a part of the MyIdTravel team which aimed to develop enterprise ready applications for multiple customers around the world." ]
                        , p [ class "p-2 mb-3 bg-dark text-white" ] [ text "Position: JavaScript Developer" ]
                        , p [ class "p-2 mb-3 bg-dark text-white" ] [ text "Phone: (333) 333-3333" ]
                        ]
                    , div [ class "card-footer" ]
                        [ h6 [ class "text-muted" ] [ text "Dates: 2013 - 2015" ] ]
                    ]
                ]
            ]
        ]


workSection : Html msg
workSection =
    div [ id "work" ]
        [ div [ class "card card-body bg-warning py-5" ]
            [ h3 []
                [ text "My Portfolio" ]
            , p []
                [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, adipisci?" ]
            ]
        , div [ class "card card-body py-5" ]
            [ h3 [] [ text "What have I built?" ]
            , p [] [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta, eum." ]
            , div [ class "row no-gutters" ]
                [ div [ class "col-md-3" ]
                    [ a [ attribute "data-toggle" "lightbox", href "https://unsplash.it/1200/768.jpg?image=251" ]
                        [ img [ alt "", class "img-fluid", src "https://unsplash.it/600.jpg?image=251" ] []
                        ]
                    ]
                , div [ class "col-md-3" ]
                    [ a [ attribute "data-toggle" "lightbox", href "https://unsplash.it/1200/768.jpg?image=252" ]
                        [ img [ alt "", class "img-fluid", src "https://unsplash.it/600.jpg?image=252" ] []
                        ]
                    ]
                , div [ class "col-md-3" ]
                    [ a [ attribute "data-toggle" "lightbox", href "https://unsplash.it/1200/768.jpg?image=253" ]
                        [ img [ alt "", class "img-fluid", src "https://unsplash.it/600.jpg?image=253" ] []
                        ]
                    ]
                , div [ class "col-md-3" ]
                    [ a [ attribute "data-toggle" "lightbox", href "https://unsplash.it/1200/768.jpg?image=254" ]
                        [ img [ alt "", class "img-fluid", src "https://unsplash.it/600.jpg?image=254" ] []
                        ]
                    ]
                ]
            , div [ class "row no-gutters" ]
                [ div [ class "col-md-3" ]
                    [ a [ attribute "data-toggle" "lightbox", href "https://unsplash.it/1200/768.jpg?image=255" ]
                        [ img [ alt "", class "img-fluid", src "https://unsplash.it/600.jpg?image=255" ] []
                        ]
                    ]
                , div [ class "col-md-3" ]
                    [ a [ attribute "data-toggle" "lightbox", href "https://unsplash.it/1200/768.jpg?image=256" ]
                        [ img [ alt "", class "img-fluid", src "https://unsplash.it/600.jpg?image=256" ] []
                        ]
                    ]
                , div [ class "col-md-3" ]
                    [ a [ attribute "data-toggle" "lightbox", href "https://unsplash.it/1200/768.jpg?image=257" ]
                        [ img [ alt "", class "img-fluid", src "https://unsplash.it/600.jpg?image=257" ] []
                        ]
                    ]
                , div [ class "col-md-3" ]
                    [ a [ attribute "data-toggle" "lightbox", href "https://unsplash.it/1200/768.jpg?image=258" ]
                        [ img [ alt "", class "img-fluid", src "https://unsplash.it/600.jpg?image=258" ] []
                        ]
                    ]
                ]
            ]
        ]


contactSection : Html msg
contactSection =
    div [ id "contact" ]
        [ div [ class "card card-body bg-danger text-white py-5" ]
            [ h2 []
                [ text "Contact" ]
            , p []
                [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem, dignissimos?" ]
            ]
        , div [ class "card card-body py-5" ]
            [ h3 []
                [ text "Get in touch" ]
            , p []
                [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum, autem." ]
            , Html.form []
                [ div [ class "form-group" ]
                    [ div [ class "input-group input-group-lg" ]
                        [ span [ class "input-group-addon bg-danger text-white" ] []
                        , input [ class "form-control  ", placeholder "Name", type_ "text" ] []
                        ]
                    ]
                , div [ class "form-group" ]
                    [ div [ class "input-group input-group-lg" ]
                        [ span [ class "input-group-addon bg-danger text-white" ]
                            []
                        , input [ class "form-control ", placeholder "Email", type_ "email" ]
                            []
                        ]
                    ]
                , div [ class "form-group" ]
                    [ div [ class "input-group input-group-lg" ]
                        [ span [ class "input-group-addon bg-danger text-white" ] []
                        , textarea [ class "form-control ", placeholder "Message", attribute "rows" "5" ] []
                        ]
                    ]
                , input [ class "btn btn-success btn-block btn-lg", type_ "submit", value "Submit" ]
                    []
                ]
            ]
        ]


footerSection : Html msg
footerSection =
    footer [ class "p-5 bg-dark text-white", id "main-footer" ]
        [ div [ class "row" ]
            [ div [ class "col-md-6" ]
                [ a [ class "btn btn-outline-light", href "#" ]
                    [ text "Download Resume" ]
                ]
            ]
        ]


getSectionButtonClass : State -> String
getSectionButtonClass state =
    case state of
        Home ->
            "primary"

        Resume ->
            "success"

        Work ->
            "warning"

        Blog ->
            "blog"

        Contact ->
            "danger"


stateButton : State -> Html Msg
stateButton state =
    div [ class ("port-item p-4 bg-" ++ getSectionButtonClass state), onClick (ChangePageState state) ] [ text (toString state) ]


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ headerSection model.states
        , getSection model.pageState
        , footerSection
        ]


getSection : State -> Html msg
getSection state =
    case state of
        Home ->
            homeSection

        Resume ->
            resumeSection

        Work ->
            workSection

        Blog ->
            blogSection

        Contact ->
            contactSection



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
