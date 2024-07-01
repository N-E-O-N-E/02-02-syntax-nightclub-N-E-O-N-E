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
let guest1 = (Name: "Jan Bauer", Alter: 19)

// 1.4. Einlasskontrolle

// Variante 1 mit IF/Else
print(">>> Variante 1 mit IF/ELSE")
 if (guest1.Alter >= einlassAlter) && isOpen && (aktGuests < maxGuests) {
    print("Darf rein")
} else {
    print("Darf nicht rein")
}

// Variante 2 mit else/if
print(">>> Variante 2 mit ELSE/IF")

if isOpen {
    if aktGuests > maxGuests {
        print("Darf nicht rein, weil zu voll!")
    }
    else if guest1.Alter >= einlassAlter {
        print("Darf rein")
        } 
    else {
        print("Darf nicht rein, weil zu jung")
        }
}
else {
    print("Niemand darf rein, weil zu!")
}
