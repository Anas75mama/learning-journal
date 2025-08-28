

En ajoutant le mot "statitc" devant une variable on la déclare comme appartenant à la struct et non pas à ses instances. Ses instances ne pourront pas la modifier.

Le méthode peut également appartenir exclusivement à la struct. On peut donc mettre static avant le nom de la fonction (méthode) dans la struct 

```Swift
Struct Student {
    static var classSize = 0
    var name : String 

    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}
`

à chaque fois qu'on crée une instance de la struct Student un étudiant sera ajouté à classSize.
et comme classSize appartient à la struct elle même, pour l'appeler on ne peux pas on utlisant son instance. il faut passer par la struct. 

print(Student.classSize) 
