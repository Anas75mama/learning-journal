



```Swift

struct Person {
    var id : String

    init(id: String){
        self.id = id
    }

}

let ed = person(id: "1234")

Dans ce cas on permet l'ajout d'une valeur ID à la struc "Person"
`

Une fois que l'ID et stocké on peut le rendre inaccessible de l'extérieur : 

```Swift
struct Person {
    privat var id : String

    init(id: String){
        self.id : id
    }

}
`

Maintenant, uniquement les fonctions à l'intérieur de la struc peuvent accéder à id.
Une fois que le mot "privat" est ajouté devant la variable on ne peut pas y accéder de l'extérieur de la struct.  

```Swift

struct Person {
    privat var id : String

    init(id: String){
        self.id : id
    }
func identify() -> String {
    return "my social number is \(id)"
}

}
`



