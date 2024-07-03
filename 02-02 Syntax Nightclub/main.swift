//
//  NightClub.swift
//  02-02 Syntax Nightclub
//
//  Created by Markus Wirtz on 01.07.24.
//

import Foundation

 
// 1.2. NightClub Status
print("\n----------- 1.2. NightClub Status")

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
print("\n----------- 1.3. Besucherdatene")

let guest1 = (Name: "Jan Bauer", Alter: 19)
let guest2 = (Name: "Jenniffer Schmitt", Alter: 22)
let guest3 = (Name: "Jörg Gebert", Alter: 35)
let guest4 = (Name: "Iris Maurer", Alter: 38)

// 1.4. Einlasskontrolle
print("\n----------- 1.4. Einlasskontrolle")

// 1.4 Variante 1 mit IF/Else
print(">>> Variante 1 mit IF/ELSE")
 if (guest1.Alter >= einlassAlter) && isOpen && (aktGuests < maxGuests) {
     print("Hallo \(guest1.Name), du darfst rein")
} else {
    print("Hallo \(guest1.Name), du darfst leider nicht rein.")
}

// 1.4 Variante 2 mit else/if
print(">>> Variante 2 mit ELSE/IF")

if isOpen {
    if aktGuests > maxGuests {
        print("Hallo \(guest1.Name), es ist leider zu voll!")
    }
    else if guest1.Alter >= einlassAlter {
        print("Hallo \(guest1.Name), du darfst rein")
        }
    else {
        print("Hallo \(guest1.Name), du bist leider zu jung")
        }
}
else {
    print("Hallo \(guest1.Name), heute ist der Club geschlossen!")
}


// 2.1 Gäste begrüßen
print("\n----------- 2.1 Gäste begrüßen")

var durchlauf = 0

while (durchlauf < aktGuests) {
        durchlauf += 1
        print("Lieber Gast, herzlich willkommen im Syntax Nightclub! Gast-Nr: \(durchlauf)")
}
print("Fertig")


// 2.2 Verlauf der Party
print("\n----------- 2.2 Verlauf der Party")

while aktGuests > 0 { // Solange Gäste größer 0
    
    print("Aktuell sind \(aktGuests) im Club!")
    
    let zufallZahl = Int.random(in: 1...3)
    
    if zufallZahl == 1 {
        aktGuests += 1
    }
    if zufallZahl > 1 {
        aktGuests -= 2
    }
}
print("Es sind jetzt keine Gäste mehr im Club!")
print("Der Club hat geschlossen!")



// 2.3 Verlauf der Party (Advanced) + 2.4 Pausieren eines Durchlaufs
print("\n----------- 2.3 Verlauf der Party (Advanced)")

var gaesteAnzahl = 19
var gaesteGegangen = 0
var gaesteGekommen = 0
 
    while true {
        
       // sleep(1)
        
        if gaesteAnzahl % 2 == 0 {
            let zufallZahl: Int = Int.random(in: 1...3)
            gaesteAnzahl -= zufallZahl
            gaesteGegangen += zufallZahl
            print("\(zufallZahl) Person(en) haben den Club verlassen!")
        }
        
        if gaesteAnzahl % 2 != 0 && gaesteAnzahl < maxGuests {
            gaesteAnzahl += 1
            gaesteGekommen += 1
            print("Ein neuer Gast ist eingetroffen")
        }
        
        if gaesteAnzahl == 0 {
            print("Es haben alle Gäste die Veranstaltung verlassen.")
            print("\(gaesteGegangen) Gäste haben den Club verlassen")
            print("\(gaesteGekommen) Gäste haben den Club besucht")
            break
        }
        
    }



// 3.1 Cocktailzubereitung
print("\n----------- 3.1 Cocktailzubereitung")

var mitEis: Bool
var mitAlk: Bool
var mitFrucht: Bool
var userAuswahl: String

print("Hallo, möchtest du deinen Mojito mit Eis? (y/n)")
userAuswahl = String(readLine()!)
if userAuswahl == "y" {
    print("Gerne, mit Eis!")
    mitEis = true
    
} else {
    print("Super, also ohne Eis!")
    mitEis = false
    
}

print("Möchtest du deinen Mojito mit Alkohol?")
userAuswahl = String(readLine()!)
if userAuswahl == "y" {
    print("Ok, also mit Alkohol!")
    mitAlk = true
    print("Es werden 4cl Rum ins Glas gegeben")
    
} else {
    print("Super, also ohne Alkohol!")
    mitAlk = false
    print("Es werden 4cl Limettensaft ins Glas gegeben")
}
print("Möchtest du Früchte in deinen Mojito? (y/n)")
userAuswahl = String(readLine()!)
if userAuswahl == "y" {
    print("Es wird eine Limettenscheibe is Glas gegeben")
    print("Es wird brauner Zucker ins Glas gegeben")
    mitFrucht = true
    print("Das Glas wird mit Wasser aufgefüllt.")
} else {
    print("Es wird nur brauner Zucker ins Glas gegeben.")
    print("Das Glas wird mit Wasser aufgefüllt.")
    
}



// 3.2 Aufgaben des DJs
print("\n----------- 3.2 Aufgaben des DJs")

var isParty: Bool = true
var onDancefloor: Int = 15
var randomInt: Int

while onDancefloor > 5 {
    
    print("Der nächste Song wird gespielt")
    randomInt = Int.random(in: 1...3)
    
    if randomInt % 2 == 0 {
        print("Ein Gast kommt auf die Tanzfläche")
        onDancefloor += 1
        
    } else {
        print("Zwei Gäste verlassen die Tanzfläche")
        onDancefloor -= 2
    }
    //sleep(1)
    print("Es sind aktuell \(onDancefloor) Gäste auf der Tanzfläche")
}
print("\n>>> Der Rausschmeißer wird gespielt! <<<")
isParty = false






