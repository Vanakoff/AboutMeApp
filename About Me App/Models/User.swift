//
//  User.swift
//  About Me App
//
//  Created by Andrey Vanakoff on 28/08/2021.
//

struct User {
   let username: String
   let password: String
}

struct Person {
    let name: String
    let surname: String
    let bio: String
    let hobbies: String
}



let userAndrey = User(username: "User",
                      password: "Password")

let person = Person(name: "Andrey",
                    surname: "Vanakoff",
                    bio: "Born in 1987 in Kharkov, Ukraine. Moved to Warsaw, Poland in 2015",
                    hobbies: "Computers, music, electric guitars, sport")

