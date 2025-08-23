let fileName = ("Image.jpg")
print(fileName.hasSuffix(".jpg"))
//la valeur qui sera retournée ici est de type booléenne : true
//le type booléenne posséde des méthodes, mais trés peu car il n'y a que deux valeurs possibles : true or false
//exmple de méthode utilisée souvent avec le type booléenne : toggle()
let fileName = ("Paris.jpg")
var truthTest = fileName.hasSuffix(".jpg")
truthTest.toggle()
print(truthTest)
//Une variable de type booléenne doit avoir une valeur initiale : true or false
//le type booléenne a un seul opérateur logique : ! => inverse 

