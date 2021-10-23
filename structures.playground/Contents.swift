import Foundation

/*
    Structs are use for custom data types.
 */
struct Town {
    
    let name: String
    var citizens: [String]
    var resources: [String:Int]
    
    init(townName: String, people: [String], resources: [String:Int]) {
        self.name = townName
        self.citizens = people
        self.resources = resources
    }
    func makeSong(){
        print("making a song")
    }
    
    /*
        by default all properties are immutable inside the struct
        if we need to mutate property through a method,we need to mark method as "mutating"
    */
    mutating func updateCitizens(){
        citizens.append("kendrik")
    }
}


var myTown = Town(townName:"rajith",people:["rajith","cat"],resources:["rajith":1,"cats":1])
print(myTown.name)
myTown.makeSong()
myTown.updateCitizens()
print(myTown.citizens)
