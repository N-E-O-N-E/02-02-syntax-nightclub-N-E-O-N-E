
// 1.2. NightClub Status
func nightClubStatus() {
    if isOpen {
        
        if aktGuests <= maxGuests {
            
            print("Treten Sie ein - wir haben noch genügend freie Plätze!")
        }
        else {
            print("Der Club ist voll, bitte kommen Sie später wieder")
        }
    }
    else {
        print("Der Club ist aktuell geschlossen!")
    }
}


// 1.3. Besucherdaten

func besucherdaten() {
    let guest1 = (Name: "Jan Bauer", Alter: 19)
    let guest2 = (Name: "Jenniffer Schmitt", Alter: 22)
    let guest3 = (Name: "Jörg Gebert", Alter: 35)
    let guest4 = (Name: "Iris Maurer", Alter: 38)
    
    print(guest1, guest2, guest3, guest4)
}

// 1.4. Einlasskontrolle
func einlasskontrolle() {
    let guest1 = (Name: "Jan Bauer", Alter: 19)
    
    /*// 1.4 Variante 1 mit IF/Else
    print(">>> Variante 1 mit IF/ELSE")
     if (guest1.Alter >= einlassAlter) && isOpen && (aktGuests < maxGuests) {
         print("Hallo \(guest1.Name), du darfst rein")
    } else {
        print("Hallo \(guest1.Name), du darfst leider nicht rein.")
    }
     */
    
    // 1.4 Variante 2 mit else/if

    if isOpen {
        if aktGuests > maxGuests {
            print("Hallo \(guest1.Name), es ist leider zu voll!")
        }
        else if guest1.Alter >= einlassAlter {
            print("Hallo \(guest1.Name), du bist volljährig und darfst rein")
            }
        else {
            print("Hallo \(guest1.Name), du bist leider zu jung")
            }
    }
    else {
        print("Hallo \(guest1.Name), heute ist der Club geschlossen!")
    }
}


// 2.1 Gäste begrüßen
func gaesteBegruessen() {


    var durchlauf = 0

    while (durchlauf < aktGuests) {
            durchlauf += 1
            print("Lieber Gast-Nr: \(durchlauf), herzlich willkommen im Club!")
    }
    print("Fertig")
}


// 2.2 Verlauf der Party
func verlaufParty() {

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
}


// 2.3 Verlauf der Party (Advanced) + 2.4 Pausieren eines Durchlaufs
func verlaufPartyAdvanced() {
    
aktGuests = 125
     
        while true {
            
            if aktGuests % 2 == 0 {
                let zufallZahl: Int = Int.random(in: 1...3)
                aktGuests -= zufallZahl
                gaesteGegangen += zufallZahl
                print("\(zufallZahl) Person(en) haben den Club verlassen!")
            }
            
            if aktGuests % 2 != 0 && aktGuests < maxGuests {
                aktGuests += 1
                gaesteGekommen += 1
                print("Ein neuer Gast ist eingetroffen")
            }
            
            if aktGuests == 0 {
                print("\nJetzt ist keiner mehr im Club.\n")
                print("\(gaesteGegangen) Gäste haben insgesamt den Club verlassen")
                print("\(gaesteGekommen) Gäste haben insgesamt den Club besucht\n")
                break
            }
            
        }
}


// 3.1 Cocktailzubereitung
func cocktailzubereitung() {

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
        print("\nOk, also mit Alkohol!")
        mitAlk = true
        print("\nEs werden 4cl Rum ins Glas gegeben")
        
    } else {
        print("\nSuper, also ohne Alkohol!")
        mitAlk = false
        print("\nEs werden 4cl Limettensaft ins Glas gegeben")
    }
    print("Möchtest du Früchte in deinen Mojito? (y/n)")
    userAuswahl = String(readLine()!)
    if userAuswahl == "y" {
        print("\nEs wird eine Limettenscheibe is Glas gegeben")
        print("\nEs wird brauner Zucker ins Glas gegeben")
        mitFrucht = true
        print("\nDas Glas wird mit Wasser aufgefüllt.")
    } else {
        print("\nEs wird nur brauner Zucker ins Glas gegeben.")
        print("\nDas Glas wird mit Wasser aufgefüllt.\n\n")
        
    }

}


// 3.2 Aufgaben des DJs
func aufgabenDJ() {

    aktGuests = 125
    var isParty: Bool = true
    var onDancefloor: Int = aktGuests
    var randomInt: Int

    while onDancefloor > 5 {
        
        print("Der DJ hat einen weiteren Song wird gespielt")
        randomInt = Int.random(in: 1...3)
        
        if randomInt % 2 == 0 {
            print("Ein Gast kommt auf die Tanzfläche")
            onDancefloor += 1
            
        } else {
            print("Zwei Gäste verlassen die Tanzfläche")
            onDancefloor -= 2
        }
        print("Es sind aktuell \(onDancefloor) Gäste auf der Tanzfläche")
    }
    print("\n>>> Der Rausschmeißer wird gespielt! <<<")
    isParty = false
}

// 4.2 Rechner für das Personal

func rechnerGetraenkepreise(a: Double, b: Double) {
    
    var gesamt: Double = a + b
    //print("Das Ergbenis ist \(String(format: "%.2f", gesamt)) €")
    
}

func durchlaufAbrechnung() {
    
    var durchlauf: Int = 0
    var gesamtSumme: Double = 0.0
    
    while durchlauf != aktGuests {
        
        var preisGetraenk: Double = Double.random(in: 3.0...6.5)
        var preisEintritt: Double = Double.random(in: 9.5...12.0)
        
        rechnerGetraenkepreise(a:preisEintritt, b:preisGetraenk)
        
        print("Ein Gast hat \(String(format: "%.2f", preisEintritt)) € Eintritt und \(String(format: "%.2f", preisGetraenk)) € für Getränke ausgegeben.")
        
        gesamtSumme += preisEintritt
        gesamtSumme += preisGetraenk

        durchlauf += 1
    }
    print("\n\nEinnahmen des Abends - Gesamt: \(String(format: "%.2f", gesamtSumme)) € \n")

}
