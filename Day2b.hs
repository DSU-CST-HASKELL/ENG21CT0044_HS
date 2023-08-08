data Person = Student String Int
            | Employee String Int

showPerson :: Person -> String
showPerson (Student name age) = "Name: " ++ name ++ ", age: " ++ show age
showPerson (Employee name age) = "Name: " ++ name ++ ", age: " ++ show age

main :: IO ()
main = do
    let student1 = Student "Alice" 20
        employee1 = Employee "Bob" 30
    putStrLn $ showPerson student1
    putStrLn $ showPerson employee1