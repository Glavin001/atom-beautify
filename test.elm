module Main (..) where


addThings x y =
    Signal.map (x + y)


main =
    addThings 4 5
