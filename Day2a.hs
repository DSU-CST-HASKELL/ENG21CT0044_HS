sumEvenNumbers :: [Int] -> Int
sumEvenNumbers [] = 0                          -- Base case: empty list has a sum of 0
sumEvenNumbers (x:xs)
    | even x    = x + sumEvenNumbers xs       -- If x is even, add it to the sum of even numbers in the rest of the list
    | otherwise = sumEvenNumbers xs           -- If x is odd, skip it and continue with the rest of the list

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    putStrLn $ "List: " ++ show numbers
    putStrLn $ "Sum of even numbers: " ++ show (sumEvenNumbers numbers)