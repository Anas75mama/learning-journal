#### défintion 

##### qu'est ce qu'un protocol
Un protocol indique à un objet ce qu'il peut être capable de faire  

##### Protocol Inheritance  
un protocol peut hériter des propriétés d'un autre protocol

##### Exemple

``` swift

protocol Product {
    var price : Float
    var weight : Float
    var promotion : Float
    
}

protocol Apples {
    var AppleColor : String
    var AppleDescription : [String]
}

//Si on souhaite donner un prix, un poids et indiquer la promotion en-cours, le protocol Apples peut hériter du protocol Product

protocol fruit : Product, Apples

//L'écriture ci-dessus évite de réecrire un nouveau protocol avec toutes les propriété dont on a besoin

// Un contrat pour tout ce qui peut être vendu
protocol Sellable {
    var price: Double { get set } // Doit avoir un prix (lecture et écriture)
    func getDisplayName() -> String // Doit avoir une méthode pour afficher son nom
}

// Un contrat pour tout ce qui est comestible
protocol Edible {
    var calories: Int { get } // Doit avoir des calories (lecture seule)
}

// On compose les deux protocoles pour créer un contrat plus spécifique.
// Un "AlimentVendable" EST "Vendable" ET "Comestible".
protocol SellableFood: Sellable, Edible {
    // On peut même ajouter des exigences spécifiques à ce nouveau protocole
    var brand: String { get }
}

// Maintenant, créons une structure qui respecte ce contrat composite.
struct Apple: SellableFood {
    // Implémentation des exigences de Sellable
    var price: Double
    
    func getDisplayName() -> String {
        return "Granny Smith Apple"
    }
    
    // Implémentation des exigences de Edible
    let calories: Int = 95
    
    // Implémentation des exigences de SellableFood
    let brand: String = "Bio Farm"
}

// Utilisation
let myApple = Apple(price: 0.99)
print("\(myApple.getDisplayName()) coûte \(myApple.price)€ et contient \(myApple.calories) calories.")
// Affiche: "Granny Smith Apple coûte 0.99€ et contient 95 calories."

```