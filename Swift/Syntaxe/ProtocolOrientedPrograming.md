##### définition 

Un protocol défini les clauses à laquelles un type de données doit se conformer.

En ajoutant une extension, on facilite l'utilisation de l'une des clauses (ou plusieurs) on lui donnant un comportement par défaut. 

Ensuite, en conformant un type (exemple : struct) à ce protocol on doit relister que les protocols qui n'ont pas d'extenssion et donc un comportement automatique par défaut. 

```swift

protocol Identifiable {
    
    var id: String {get set}
    func identify()
    
}

extension Identifiable {
    func identify() {
        print("My ID is \(id)")
    }
}

struct Person: Identifiable {
    var id : String
    //ICi l'implémentation de la func identify se fait automatiquement
}


let test = Person(id: "Anas")
test.identify()

```