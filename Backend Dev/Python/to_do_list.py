

to_do_list = [] # Liste vide pour stocker les taches
user_choice = ""


while user_choice.strip().lower() != "quitter": 

    user_choice = input("Que souhaitez vous faire ? ajouter,supprimer,afficher ou quitter ?")
    if user_choice.strip().lower() == "ajouter":
        task = input("entrer la tache a ajouter : ")
        to_do_list.append(task)
        for n, taches in enumerate(to_do_list):
            print(n, taches)
    elif user_choice.strip().lower() == "supprimer":
        for n, taches in enumerate(to_do_list):
            print(n, taches)
        #Donner la possibilité de choisir une tâche
        tache_a_supprimer = int(input("Saisissez le numéro de la tache à supprimer : "))
        to_do_list.pop(tache_a_supprimer)

        
        #la stocker dans une variable "tache_a_supprimer"
        #prendre l'index de la tâche
        #chercher l'index dans la liste des tache
        #supprimer la tache 
print("Vous venez de quitter l'application à bientôt")


