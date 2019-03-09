import UIKit

var str = "Hello, World"
var newStr = "Hello, Playground"
str + " " +  newStr
print(str,terminator:"\n")
print(str.count,terminator:"\n")
str.append(newStr)
print(str,terminator:"\n")
var char :Character="A"
print(char,terminator:"\n")
str.append(contentsOf: newStr)

//Numbers

var num1 = 10
var num2 = 12.50
var num3 : Int = 10
var num4 : Float = 10.5
num2 + Double(num1)
var num5 = Float(num1) + num4

var a = 12
var b = 15

//Swaping two variables without third
print("Before Swap : a = \(a) and b = \(b)")
a = a+b
b = a-b
a = a-b
print("After First Swap : a = \(a) and b = \(b)")
a = a*b
b = a/b
a = a/b
print("After Second Swap : a = \(a) and b = \(b)")

var num = 20
if (num%2 == 0)
{
    print("\(num) is even")
}
else
{
    print("\(num) is odd")
}
switch num {
case 1:
    print("\(num) is one")
default:
    print("\(num) is something other than 1")
}

var newNum1 = 20
var newNum2 = 100
var answer = 0
var oper : Character = "*"

switch oper {
case "+" :
    answer = newNum1 + newNum2
    print ("\(answer) is the result")
case "-" :
    answer = newNum2 - newNum1
    print ("\(answer) is the result")
case "*" :
    answer = newNum2 * newNum1
    print ("\(answer) is the result")
case "%" :
    answer = newNum2 % newNum1
    print ("\(answer) is the result")
default:
    print("Invalid!!")
}

//Array implementations

var arr = ["JOGLEKAR","ARMAAN","JISHANT","PRATHAMESH"]
var name = "MIHIR"
var newArr = ["ABC","XYZ","DEF","PQR"]
arr.append(name)
arr.append(contentsOf: newArr)
name = "SUI"
arr.insert(name, at: 3)
print("CAPACITY : ",arr.capacity)
print("COUNT : " ,arr.count)
print("The array iterations")
for name in arr
{
    print(name)
}

//Dictionary implementation

var dict = [Int:String]()
dict = [1:"Jishant Acharya",2:"Akshay Agrawal",3:"Amol"]
dict.updateValue("SUI",forKey:4)
dict.updateValue("Mr. Awesome",forKey:1)
print ("The dictionary iteration")
for item in dict
{
    print(item.value," ",item.key)
}

//Methods or Functions

func abc()
{
    print("Hello from the function")
}
abc()

func nameFunction (firstName:String,lastName:String,age:Int)
{
    print("\(firstName) has the surname \(lastName) and is \(age) years old")
}
nameFunction(firstName:"Jishant", lastName: "Acharya", age: 20)

func add (firstNum:Int,secondNum:Int)->Int
{
    return (firstNum + secondNum)
}
print ("The addition is : ",add(firstNum: 20, secondNum: 20))

func calc (newNum1:Int,newNum2:Int,oper:Character) -> Int
{
    switch oper {
    case "+" :
        answer = newNum1 + newNum2
    case "-" :
        answer = newNum2 - newNum1
        
    case "*" :
        answer = newNum2 * newNum1
    case "%" :
        answer = newNum2 % newNum1
    default:
        print("Invalid!!")
    }
    return(answer)
}
print("The result is : " , calc(newNum1: 10, newNum2: 20, oper: "*"))
