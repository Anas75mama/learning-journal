# Lazy Properties 
Ce sont des propriétés qui ne sont appelé que lorsqu'elles sont utilisées. 
Une propriété paresseuse d'optimiser la performance du code. 
Elle n'est pas calculée tant qu'elle n'est pas utilisée pour la première fois. 

Comme une pizza, on ne l'a commande que lorsqu'on a faim pas des heures avant 😋🍕
pour déclarer une proprièté presseuse sur Swift on utilise le mot clé lazy

```Swift

struct Brain {
    init(){
        print("cerveau en-cours de création")
    }
}

sruct Person {
    var name : String
    lazy var brain = Brain() // Dans cette exemple, la phrase cervea en-cours de création ne s'affichera que lorsque le propriété brain sera appelée pour la première fois.
}
'
L'avantage c'est de nous épargner l'appel d'une propriété couteuse en temps de calcul comme un lien, une fonction mathématique complexe ou une allocation de mémoire trop importante. On ne paie ce coût que quand c'est absolument nécessaire.
