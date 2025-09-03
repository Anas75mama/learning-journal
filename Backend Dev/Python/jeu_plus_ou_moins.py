import random


nombre_secret = random.randint(1, 100)
reponse_utilisateur = None

while reponse_utilisateur != nombre_secret:
    
    nombre_secret = random.randint(1, 100)

    reponse_utilisateur = int(input("Devinez le nombre entre 1 et 100 : "))

    if reponse_utilisateur > nombre_secret :   
        print(f"trop grand, c'était {nombre_secret}")
    elif reponse_utilisateur < nombre_secret :
        print(f"trop petit, c'était {nombre_secret}")
    else:
        print(f"gagné, c'est bien {nombre_secret}") #Fin du jeu
