// === VARIABLER ===
// Var = En variabel som kan ändras
var namn = "Maria"
print(namn)

// Vi kan ändra värdet - poängen med var
namn = "Luna"
print(namn)

// let = en konstant som INTE kan ändras.
let stad = "Göteborg"
print(stad)

// Detta kommer ge ett fel
// stag = "Stockholm"

// === TYPER ===

// Fyra vanligaste typerna:
let age: Int = 25 // Int heltal (integer) - inga decimaler
let price: Double = 99.99 // Double = decimaltal
let firstName: String = "Luna" // String = text - alltid citattecken
let isStudent: Bool = true // Bool = sant eller falskt

// Swift är smart - den gissar typen åt oss om man inte explicit skriver dom (type inference)
let land = "Sverige"
let antal = 42
let temperatur = 21.5
let hasLicence = false



// === STRÄNGINTERPOLATION ===
// Syntax: "text \(variabel) mer text"
let personName = "Maria"
let personAge = 28

let greeting = "Jag heter \(personName) och är \(personAge) år gammal"

// === FUNKTIONER ===

// Enkel funktion utan parametrar och returvärde
func greet() {
    print("Hej alla!")
}
// Anropa funktionen med ()
greet()

// Funktion med EN parameter
// (name: String) = funktionen tar emot en sträng som heter "name" inuti funktionen
func greetPerson(name: String) {
    print("Hej, \(name)")
}

greetPerson(name: "Maria")

// Funktion som RETUNERAR ett värde
// -> String = "den här funktionen ger tillbaka en sträng"
func createGreeting(name: String, age: Int) -> String {
    return "Jag heter \(name) och är \(age) år gammal"
}

let resultat = createGreeting(name: "Maria", age: 28)
print(resultat)


// Struct = egen typ som vi själva designar - en "mall" med properties

struct Person {
    let name: String // Varje person har ett namn (kan inte ändras pågrund av let)
    let title: String // Och en title
    var age: Int // En ålder som kan ändras (pågrund av var)
}

let maria = Person(name: "Maria", title: "iOS-utvecklare", age: 28)

print(maria.name)
print(maria.title)
print(maria.age)

struct Hund {
    let namn: String
    let ras: String
    
    // En metod - en funktion som tillhör structen
    func presentera() -> String {
        return "\(namn) är en \(ras)"
    }
}

let hund = Hund(namn: "Rex", ras: "Schäfer")
print(hund.presentera())

