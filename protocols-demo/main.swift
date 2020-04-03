
protocol CanFly {
    func fly()
}



class Bird {
    
    var isFemale = true
    
    func layEgg()  {
        if isFemale {
            print("lay egg")
        }
    }
    
}



class Eagle: Bird, CanFly {
     
    func soar()  {
        print("The eagle glides in the ar using air currents")
    }
    
    func fly()  {
        print("The eagle flaps its wing and lifts off")
    }
    
    
}


struct Airplane: CanFly {
    func fly() {
        print("The plane uses its engine to lift off")
    }
    
    
}


struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly)  {
        flyingObject.fly()
    }
}

class Penguin: Bird {
    func swim()  {
        print("Swim")
    }
    
}

let eagle = Eagle()
let penguin = Penguin()
let plane = Airplane()


let museum = FlyingMuseum()

museum.flyingDemo(flyingObject: plane)
museum.flyingDemo(flyingObject: eagle)


