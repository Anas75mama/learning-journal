// Manipuler des données standard à plusieurs reprises dans un code, comme les jours de la semaine peut induire à des erreurs. 
// Prenons l'exmple ci-dessous : 
var weekDay = "Friday"
weekDay = "January"

// Sans faire attention on a saisi un mois à la place d'un jour de la semaine. Cette erreur peut être repérée en revue de code..si on a de la chance !
// enum permet de donner un périmètre à une variable. Si Swift propose une valeur hors scope Swift va nous alerter

enum WeekDays {
  case Monday
  case Tuesday
  case Wednesday
  case Thursday
  case Friday
}

// Maintenant on peut accéder aux jours de la semaine sans qu'il y ait un risque d'erreur
// Swift va nous proposer la liste des valeurs faisant partie de weekDays

var day = weekDays.Monday
day = .Tuesday
day = .Wednesday

// pour nommer les enum on doit utiliser PascalCase, pareil pour les struc, protocol et class
enum WeekDays {
      case monday, tuesday, wednesday, thursday, friday
}
