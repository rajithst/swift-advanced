import Foundation

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
}


var myTown = Town(townName:"rajith",people:["rajith","cat"],resources:["rajith":1,"cats":1])
print(myTown.name)
myTown.makeSong()
