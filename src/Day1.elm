module Day1 exposing (..)

import Set exposing (Set, member, fromList, empty)
import List exposing (sum)
import Html exposing (div, h1, h2, text)
import List.Extra exposing (find)

input : List Int
input = [ -17,14,10,-2,-1,6,6,7,1,9,8,-13,-7,17,-4,-16,-6,-11,-7,-20,3,2,-10,-5,3,5,13,-3,-2,-4,19,-6,14,-4,3,6,17,4,-18,16,19,-3,-4,18,-2,7,-10,-8,10,-6,11,5,-6,14,-16,-5,15,2,14,-19,13,1,-6,-18,20,16,-10,8,-9,3,9,16,-9,-3,-6,5,15,-1,12,-7,-2,-14,20,-11,24,-12,1,-5,7,14,8,-16,-17,-24,17,1,8,-12,1,-8,-12,-10,16,-3,-16,-7,14,-13,-19,8,-1,-4,-13,-2,10,-4,-17,-23,21,18,-20,16,-22,-16,-6,-16,-6,5,5,-19,-18,14,-10,-15,4,19,-11,-15,16,-17,-8,-15,12,-17,3,-13,3,3,-8,-15,-14,11,13,-3,-4,9,21,-9,12,-2,6,6,8,-2,16,-6,4,-1,15,1,4,6,-14,2,-19,-18,6,-3,5,8,-19,-4,-17,-16,-13,-16,5,-6,-2,7,-13,-8,-13,-19,5,12,-13,19,-2,16,4,18,9,-1,-4,-16,19,19,4,-5,-14,12,-7,-1,-24,-8,-9,-18,-16,2,-13,-7,16,-7,4,-12,-9,-10,14,18,-16,6,17,-6,10,5,5,10,5,-13,-9,-1,2,12,-15,6,7,14,11,-7,13,10,19,17,7,10,-9,-10,12,-9,21,26,18,-11,-1,-11,22,12,-3,-5,-17,16,3,24,14,8,20,-6,-7,-22,1,-2,24,23,-15,25,37,-15,6,40,13,3,8,-18,6,-4,13,18,-4,5,-11,4,14,-16,5,-11,-15,7,1,4,21,18,15,-18,-9,-8,18,-4,9,18,-12,1,14,-8,1,-11,-15,8,6,-20,-4,12,-1,-3,-13,-17,8,20,-10,30,12,-7,-1,-15,12,-4,18,-8,16,4,13,-8,-11,-5,18,8,17,14,-16,6,12,5,19,2,13,-19,8,3,-16,-20,16,5,-13,-14,-11,14,14,-5,16,5,8,13,-16,-18,-1,15,-11,-10,-19,-10,-7,-4,7,-11,-2,21,-7,5,-15,-17,-7,18,-5,12,3,8,15,-7,-17,18,-10,5,17,-8,1,-18,-18,-6,-13,-18,6,-11,-19,-2,-15,-8,-18,-3,-6,3,26,14,11,10,46,4,4,-2,21,22,14,8,-4,20,-2,4,23,11,22,16,-8,11,22,-17,4,-8,-13,-15,11,19,-23,-5,-5,47,9,-12,18,15,15,8,8,37,-1,-15,-17,-10,32,22,15,-10,8,128,27,19,18,18,7,34,18,10,-3,-5,22,4,15,2,3,9,-6,-35,-22,-1,4,55,-2,80,21,-2,53,33,13,-60,-28,-44,-30,2,-17,12,249,26,-186,72428,-2,13,17,15,-18,1,7,3,-14,1,-4,-2,3,-18,2,14,-13,-8,-21,-4,-2,-8,-5,18,12,-9,2,13,6,-9,17,9,8,14,-3,7,-3,16,-15,10,18,12,-9,12,7,18,-17,1,14,9,-1,8,13,-4,-12,-8,10,6,2,8,2,6,16,-20,10,2,19,-6,-14,17,6,7,3,4,19,16,17,1,1,4,19,-12,2,12,-6,11,16,-1,10,-3,15,17,2,7,9,-14,16,15,13,10,-12,-8,13,1,-11,-10,-19,16,2,-8,4,-20,-18,19,7,15,11,17,7,-14,6,-12,-19,-8,6,-4,8,6,3,17,8,16,-1,4,-18,3,-10,5,15,-4,8,-1,-11,-8,14,17,6,-12,17,-13,9,-5,19,10,-19,17,13,12,-4,-2,-11,14,14,17,12,-15,-10,-13,2,-18,-17,13,-1,-2,6,-9,13,10,8,11,14,-15,-16,-11,-18,-9,10,-12,4,-3,12,13,-28,-4,16,20,12,19,14,-17,11,15,12,-18,-2,6,17,21,-22,-17,-18,-19,4,3,2,2,-6,-15,-25,-4,-12,-12,-12,21,-12,6,-4,-3,-10,-9,-16,-13,-19,-17,-2,-15,9,15,3,-17,10,-9,-16,9,9,1,4,-12,6,18,-29,-8,-16,-16,10,-14,-4,6,15,5,7,12,-4,-18,-10,-19,17,-21,-2,-16,-18,-15,13,-12,-18,-6,-3,-19,-13,-14,10,-14,12,-3,-17,-14,-18,-15,4,-15,19,-10,3,-18,2,2,-9,13,6,-13,6,-22,-23,-19,18,19,16,-21,18,18,13,-11,7,21,-11,15,-1,9,-4,-12,15,-19,-10,3,1,24,14,6,17,19,9,11,-12,-10,8,16,13,-18,2,10,16,17,6,4,-1,4,5,9,4,-15,-1,23,21,6,-15,-11,10,-17,11,14,-2,1,19,-15,18,-6,-18,17,13,6,2,17,-23,-16,-8,21,62,-15,-8,5,24,36,10,2,19,-8,18,2,13,-1,-8,14,35,21,7,-14,19,-3,39,11,12,25,-5,-6,-7,14,15,22,-19,12,-18,19,-17,-9,-13,11,45,21,-18,12,-14,26,10,4,9,-1,3,14,5,-2,7,-14,-2,-12,25,19,3,7,-28,-6,15,3,11,10,-22,-6,-2,3,21,14,-12,17,-6,-32,-28,2,19,-16,8,-4,-20,1,3,17,-36,-21,-3,2,14,-29,20,-6,25,-11,34,-76,10,30,-42,-32,-25,-12,8,7,-35,17,-5,-10,3,10,-23,-37,-15,14,18,-88,-38,17,13,50,-56,-25,-26,-1,-29,19,-73214 ]

calculateFirstPuzzle : Int -> List Int -> Int
calculateFirstPuzzle start lst = 
    start + List.sum lst

listOfFrequencies : List Int -> Int -> List Int
listOfFrequencies src start  =
    case src of
        [] -> []
        (x::xs) -> [start + x] ++ (listOfFrequencies xs (start + x))

calculateSecondPuzzle : List Int -> Int -> Set Int -> Int
calculateSecondPuzzle lst startSum prevFreq =
    let
        nextStart = calculateFirstPuzzle startSum lst
        currentFreqs = listOfFrequencies lst startSum
        found = currentFreqs |> List.Extra.find (\val -> Set.member val prevFreq)
    in
        case found of
            Just num -> num
            Nothing -> calculateSecondPuzzle lst nextStart (Set.union prevFreq <| Set.fromList currentFreqs)

main = 
     div []
        [ 
        h1 [] [ text ("First: " ++ (calculateFirstPuzzle 0 input |> String.fromInt))],
        h1 [] [ text ("Second: " ++ (calculateSecondPuzzle input 0 Set.empty |> String.fromInt)) ]
        ]
