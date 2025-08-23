// Au moment où je lisais cette partie du cours, je connaissais le principe du conditionnel dans Swift
// Ci dessus un exmple de la syntaxe du conditionnel dans Swift
import Foundation

  var population: Int = 5422 //Population est une instance de Int Type 
  var message: String // On déclare une variable de type String qui n'est pas initialisée. C'est à dire que je ne lui affecte pas de valeur à ce stade

  if population < 10000 {
    message =   "\(population) is a small town!" //we used String interpolation here  
  }else {
    message = "\(population) is pretty big!"
  }

print(message)

// Comparison operators

// < Evaluates whether the number on the left is smaller than the number on the right.
// <= Evaluates whether the number on the left is smaller than or equal to the number on the
// right.
// > Evaluates whether the number on the left is greater than the number on the right.
// >= Evaluates whether the number on the left is greater than or equal to the number on the
// right.
// == Evaluates whether the number on the left is equal to the number on the right.
// != Evaluates whether the number on the left is not equal to the number on the right.
// === Evaluates whether the two instances point to the same reference.
// !== Evaluates whether the two instances do not point to the same reference.
// From

import Foundation

  var population: Int = 5422
  var message: String
  var hasPostOffice: Bool = false

  if population < 10000 {
    message =   "\(population) is a small town!"
  }else {
    message = "\(population) is pretty big!"
  }

  if !hasPostOffice {
    print("where do we buy stamps?")
  }

print(message)

// ! is called a logical operator. This operator is known as "logical not". It tests whether hasPostOffice is false. ! is an operator that invert a Boolean

// && Logical AND: true if and only if both are true (false otherwise)
// || Logical OR: true if either is true (false only if both are false)
// ! Logical NOT: true becomes false, false becomes true

//The ternary operator : Si a et vrai fais b sinon fais c 
// a ? b : c 

var populationNumber: Int = 5000 
var message: String

poluationNumber < 1000 ? message = "\(population) is a small town") : message : "\(population is pretty big"
print(message)
                                                                        
// le code ci-dessus et faux car il faut affecter la comparaison avec l'opérateur ternaire à une variable comme suit : 

message = populationNumber < 10000 ? "\(populationNumber) is a small town" : "\(populationNumber) is pretty big"
print(message)

// L'opérateur ternaire n'est à priori pas apprécié de tous les développpeurs. 
// Il est parfait pour des expressions concises, mais dés qu'il commence à s'étaler sur plusieurs lignes, il est préférable d'utilser la if/else statement

import Foundation

  var population: Int = 5422
  var message: String
  var hasPostOffice: Bool = false

  if population < 10000 {
    message = "\(population) is a small town!"
  }else {
      if population >= 10000 && population < 5000 {
      message = "\(population) is pretty medium"
      }
    else
    message = "\(population) is pretty big!"
  }

  if !hasPostOffice {
    print("where do we buy stamps?")
  }

print(message)

//Nested ifs : on peut ajouter d'autres vérifications conditionnelle à l'intérieur de notre code "des if dans des if ou des else
//c'est pratique, mais plusieurs niveaux de Nested if pour rendre le code illisible et difficile à intérpréter
//le mieux c'est d'utiliser au maximume deux niveaux 

import Foundation

  var population: Int = 5422
  var message: String
  var hasPostOffice: Bool = false

  if population < 10000 {
    message = "\(population) is a small town!"
  } else {
      if population >= 10000 && population < 50000 {
      message = "\(population) is pretty medium"
      }
      else {
    message = "\(population) is pretty big!"
      }
      }

  if !hasPostOffice {
    print("where do we buy stamps?")
  }
  
print(message)

//to refactor the code : c'est refaire le code, exprimer les logiques différement mais en gardant les mêmes résultats
// next lesson : else if


