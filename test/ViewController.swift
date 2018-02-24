//
//  ViewController.swift
//  test
//
//  Created by user on 2018/2/12.
//  Copyright © 2018年 newworld. All rights reserved.
//

import UIKit

enum rank: Int{
    
    case ace = 1
    case two, three, Four, Five, Six
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        
        switch self {
        case .ace:
            return "ace"
            
        case .Jack:
            return "jack"
            
        case .King:
            return "king"
            
        default:
            
            return String(self.rawValue)
        }
    }
    
    func color() -> String {
        
        switch self {
        case .Jack:
        return "black"
            
        case .Queen:
        return "black"
            
        case .two:
        return "red"
        default:
            
        return "blue"
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let shape = Shape()
        shape.numberofSides = 1
        let sting1 = shape.simpleDescription()
        print(sting1)
        
        let sting2 = shape.canshu()
        print(sting2)
        
        let name1 = namedShape(name: "")
        let name2 = name1.simpleDescription()
        print(name2)
        
        let string3 = square(sideLength: 2.0, name: "james")
        let float = string3.area()
        let string4 = string3.simpleDescription()
        print(float)
        print(string4)
        
        let string5 = repeatItem(repeating: "knock", numberOfTimes: 4)
        print(string5)
    }
    
    func repeatItem<Item>(repeating item:Item, numberOfTimes:Int) -> [Item] {
        
        var result = [Item]()
        
        for _ in 0..<numberOfTimes {
            
            result.append(item)
        }
        return result
    }
}



class Shape {
    
    var numberofSides = 0
    func simpleDescription() -> String {
        
        return "A shape with \(numberofSides) side."
    }
    
    let a = 5
    func canshu() -> String {
    
        return "A shape with \(a) side."
    }
}

class namedShape {
    
    var numberOfSides: Int = 0
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    func area1() -> Double {
        
        return 2 * 2
    }
    
    func simpleDescription() -> String{
        
        return "A shape with \(numberOfSides) sides"
    }
}

class square: namedShape {
    
    var sideLength : Double
    init(sideLength : Double,name :String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A shape with sides of length \(sideLength)"
    }
}




