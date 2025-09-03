## créer une class 

La class et les struct se ressemblent, dans le sens où elles permettent de créer des type de datas.
Il y'a un concept à la fois complexe et important qui caractérise les Class : c'est l'inheritance : la capacité de construire une Class sur les fondations d'une autre. 

Une autre différence entre les struct et les class c'est qu'on a toujours besoin de les initialiser. Elles n'arrivent pas avec un memberwise initialiseur. 

``` swift

Class Dog {

    var name : String
    var breed : String

    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }

}

```
Créer une instance de la class se fait de la même façon qu'avec les struct. 

```Swift 
let myDog = Dog(name: "Pico", breed: "Plash")
```

## Class inheritance 

Une class (child) peut reprendre les propriétés d'une class (parent) en y ajoutant des choses par dessus. 

```Swift
class Dog {
    var name: String
    var breed : String

    init(name: String, breed: String){
        self.name = name
        self.breed = name
    }
}

class NewDog: Dog {
}

```
```Swift
class NewDog: Dog {
    var name: String
    init(name: String){//on initialise le propriété qu'on souhaite mettre { 
        super.init (name: name, breed = "Poodle") // on sait que la race du chien sera toujours Poodle, on va donc initialiser uniquement name pour changer le nom à chaque fois"
    }
}

```

# Swift nous oblige à ajouter super.init pour les initialisation activées depuis la class child. pour des raison de sécurité, au cas où la class parent aurait un travail important à effectuer. 