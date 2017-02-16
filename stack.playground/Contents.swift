//: Playground - noun: a place where people can play
/// check if string is balanced
import UIKit

struct Stack<Element> {
    fileprivate var array: [Element] = []
    
    mutating func push(element: Element){
        array.append(element)
    }
    mutating func pop()->Element? {
        return array.popLast()
    }
    func peek() -> Element? {
        return array.last
    }
    func isEmpty() -> Bool {
        if array.count == 0 {
            return true
        }else{
            return false
        }
    }
}

func isBalaced(inputString: String)-> Bool{
    
    var myStack = Stack<Character>()
    for myChar in inputString.characters{
        if (myChar == "{"||myChar == "[" || myChar == "(" ){
            myStack.push(element: myChar)
        }else if myChar == "}"||myChar == "]" || myChar == ")"{
            if myStack.isEmpty(){
                return false
            }
            guard let tempChar = myStack.peek() else {
                return false
            }
            if (tempChar == "{" && myChar != "}")||(tempChar == "[" && myChar != "]")||(tempChar == "(" && myChar != ")"){
                return false
            }
            else{
                myStack.pop()
            }
        }
    }
   
      return myStack.isEmpty()
}

print(isBalaced(inputString: "{(})"))
