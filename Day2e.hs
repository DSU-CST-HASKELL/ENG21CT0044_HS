describeNumber :: Int -> String
describeNumber n
    | n > 0     = "Positive"
    | n < 0     = "Negative"
    | otherwise = "Zero"

main :: IO ()
main = do
    putStrLn "Enter an integer:"
    input <- getLine
    let number = read input :: Int

    let description = describeNumber number
    putStrLn $ "Number is: " ++ description