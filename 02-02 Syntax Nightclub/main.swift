//
//  NightClub.swift
//  02-02 Syntax Nightclub
//
//  Created by Markus Wirtz on 01.07.24.
//

import Foundation

// 1.2. NightClub Status

if isOpen {
    
    if aktGuests <= maxGuests {
        print("Herzlich willkommen im \(clubName).")
        print("Treten Sie ein!")
    }
    else {
        print("Der Club ist voll, bitte kommen Sie später wieder")
    }
}
else {
    print("Der Club ist aktuell geschlossen!")
}

// 1.3. Besucherdaten

let guest1 = (Name: "Wolfgang Bauer", Alter: 61)
let guest2 = (Name: "Maria Schmitt", Alter: 39)
let guest3 = (Name: "Barbara Hintz", Alter: 57)
let guest4 = (Name: "Jens Kohlmann", Alter: 54)

// 1.4. Einlasskontrolle

if guest1.Alter >= 18 {
    // Alter ist OK
    }
else if (isOpen == true) && (aktGuests < maxGuests) {
    print("Der Gast \(guest1.Name) darf in den Club")
}
else {
    print("Der Gast \(guest1.Name) darf nicht in den Club")
}
