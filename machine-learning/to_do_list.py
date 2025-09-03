

to_do_list = [] # Liste vide pour stocker les taches
user_choice = None


while user_choice != "quitter": 

    user_choice = input("Que souhaiter vous faire ? ajouter, afficher ou quitter ?")
    if user_choice.lower() == "ajouter":
        task = input("entrer la tache a ajouter : ")
        to_do_list.append(task)
    elif user_choice.lower() == "afficher":
        for n, taches in enumerate(to_do_list):
            print(n, taches)
    elif user_choice.lower() == "Supprimer":
        choix_supp = input("Quelle tache souhaiteriez-vous supprimer ?")
        for n, taches in enumerate(to_do_list):
            print(n, taches)

print("Vous venez de quitter l'application à bientôt")



