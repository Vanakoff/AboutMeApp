//
//  User.swift
//  About Me App
//
//  Created by Andrey Vanakoff on 28/08/2021.
//

import UIKit
//Imported UIKit for UIImage

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User (
            username: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let bio: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person (name: "Andrey",
                surname: "Vanakoff",
                bio: "Hi! I'm Andrey, i was born in Kharkov, Ukraine, last 6 years living in Warsaw, Poland. Currently working as a QA engineer in a big company, learning Swift and want to switch for an iOS development position. My hobbies are: sports, electric guitars, traveling. Thanks for classes, keep going!;)",
                image: "Andrey")
    }
}


//let user = User(username: "User",
//                      password: "Password",
//                      person: person)
//
//let person = Person(name: "Andrey",
//                    surname: "Vanakoff",
//                    bio: "Hi! I'm Andrey, i was born in Kharkov, Ukraine, last 6 years living in Warsaw, Poland. Currently working as a QA engineer in a big company, learning Swift and want to switch for an iOS development position. My hobbies are: sports, electric guitars, traveling. Thanks for classes, keep going!;)",
//                    image: "Andrey")

