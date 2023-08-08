data Shape = Circle Double
           | Rectangle Double Double
           | Triangle Double Double Double

calculateArea :: Shape -> Double
calculateArea (Circle radius) = pi * radius * radius
calculateArea (Rectangle width height) = width * height
calculateArea (Triangle a b c) =
    let s = (a + b + c) / 2  -- semi-perimeter
    in sqrt (s * (s - a) * (s - b) * (s - c))  -- Heron's formula

main :: IO ()
main = do
    let circle = Circle 5.0
        rectangle = Rectangle 4.0 6.0
        triangle = Triangle 3.0 4.0 5.0

    putStrLn $ "Area of circle: " ++ show (calculateArea circle)
    putStrLn $ "Area of rectangle: " ++ show (calculateArea rectangle)
    putStrLn $ "Area of triangle: " ++ show (calculateArea triangle)