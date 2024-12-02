-- Some commentary
data Animal = Dog String | Cat String | Bird String deriving Show

makeSound :: Animal -> String
makeSound (Dog name) = name ++ " barks!"
makeSound (Cat name) = name ++ " meows!"
makeSound (Bird name) = name ++ " chirps!"

main :: IO ()
main = do
    let dog = Dog "Rex"
    putStrLn $ makeSound dog

    {-
     - Some longer commentary
     -}
    let result = Just 42 :: Maybe Int
    case result of
        Just value -> putStrLn $ "Success: " ++ show value
        Nothing    -> putStrLn "Error: Nothing returned"

