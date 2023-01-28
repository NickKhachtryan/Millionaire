import UIKit

//let array2D = [
//    ["Answer1" , "Answer2" , "Answer3" , "Answer4"],
//    ["Answer5" , "Answer6", "Answer7", "Answer8"]
//]
//
//print(array2D[1][2])

//struct Car {
//    var carBrand : String
//    var carColors : [String]
//    var bodyStyle : [String]
//    var numberOfSits : [String : Int]
//
////    init(carBrand : String, carColors : [String], bodyStyle : [String], numberOfSits : [String : Int]) {
////        self.carBrand = carBrand
////        self.carColors = carColors
////        self.bodyStyle = bodyStyle
////        self.numberOfSits = numberOfSits
////    }
//    func startTheCar(){
//        print("Start", carBrand)
//    }
//
//}
//
//var panaPorsche = Car(carBrand: "PanaPorsche", carColors: ["red", "blue"], bodyStyle: ["Coupe"], numberOfSits: ["Coupe" : 2])
//panaPorsche.startTheCar()
//
//var panayotaCar = Car(carBrand: "PanaYota", carColors: ["red", "blue"], bodyStyle: ["Coupe"], numberOfSits: ["Coupe" : 2])
//print("Car Brand:",panayotaCar.carBrand)
//
//panayotaCar.carColors.append("Blue")
//
//print(panayotaCar.carColors[2])
//print(panayotaCar.bodyStyle[0])
//
//panayotaCar.startTheCar()
//
//
//print(1 % 3)

//var hello = "Hello!"
//var nick = "Nick"
//var helloNick = hello + " " + nick
//print(helloNick)

//print(Float(1 / 4))
//
//print(Float(1) / Float(4))

//func plusTen(num : Int) -> Double{
//
//    return Double(num) + 10.0
////   print(num + 10)
//}
//
//print(plusTen(num: 30))
//
//var number = plusTen(num: 70)
//
//print(number)


//struct Bus{
//    var busBrand : String
//    var busColor : [String]
//    var busFloors : [Int]
//
////    init(busBrand : String , busColor : [String] , busFloors : [Int] ) {
////        self.busBrand = busBrand
////        self.busColor = busColor
////        self.busFloors = busFloors
////    }
//}
//
//var mercedesBus = Bus(busBrand: "Mercedes", busColor: ["Black", "White"], busFloors: [1 , 2])
//mercedesBus.busColor[1]
//mercedesBus.busFloors[0]
//print(mercedesBus)


//func sayHello(name: String) -> String {
//    return "Hello " + name
//
//}
//
//let getHelloName = sayHello(name: "Nick")
 
//func checkName(name: String) -> Bool?{
//    var isCorrectName : Bool?
//    if name == "Nick" {
//       isCorrectName = true
//    }
//    else {
//        isCorrectName = false
//    }
//
//    return isCorrectName
//}
//print(checkName(name: "Nic"))



//func checkName(name: String) -> Bool{
//    if name == "Nick" {
//      return true
//    }
//    return false
//}
//print(checkName(name: "Nic"))


func checkName(_ name: String) -> Bool{
    if name == "Nick" {
      return true
    }
    return false
}
print(checkName("Nic"))

checkName(<#T##name: String##String#>)








