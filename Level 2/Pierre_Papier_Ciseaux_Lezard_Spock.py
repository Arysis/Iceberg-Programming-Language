# import pour random et faire une fenêtre
from random import randint
import tkinter as tk

PIERRE = 'Pierre'
PAPIER = 'Papier'
CISEAUX = 'Ciseaux'
LEZARD = 'Lézard'
SPOCK = 'Spock'

options = [PIERRE, PAPIER, CISEAUX, LEZARD, SPOCK]

resultats = {
    'Pierre': {
        'Ciseaux': 'Joueur 1 gagne',
        'Lézard': 'Joueur 1 gagne',
        'Papier': 'Joueur 2 gagne',
        'Spock': 'Joueur 2 gagne'
    },
    'Papier': {
        'Pierre': 'Joueur 1 gagne',
        'Spock': 'Joueur 1 gagne',
        'Ciseaux': 'Joueur 2 gagne',
        'Lézard': 'Joueur 2 gagne'
    },
    'Ciseaux': {
        'Papier': 'Joueur 1 gagne',
        'Lézard': 'Joueur 1 gagne',
        'Pierre': 'Joueur 2 gagne',
        'Spock': 'Joueur 2 gagne'
    },
    'Lézard': {
        'Papier': 'Joueur 1 gagne',
        'Spock': 'Joueur 1 gagne',
        'Pierre': 'Joueur 2 gagne',
        'Ciseaux': 'Joueur 2 gagne'
    },
    'Spock': {
        'Pierre': 'Joueur 1 gagne',
        'Ciseaux': 'Joueur 1 gagne',
        'Papier': 'Joueur 2 gagne',
        'Lézard': 'Joueur 2 gagne'
    }
}


def game():
    label_game1 = tk.Label(root, text="Choisissez votre option : ")
    label_game1.pack()
    options = ["Pierre", "Papier", "Ciseaux", "Lézard", "Spock"]
    selected_option = tk.StringVar()
    selected_option.set(options[0])  # Par défaut, la première option est sélectionnée
    menu = tk.OptionMenu(root, selected_option, *options)
    menu.pack()
    validate_button = tk.Button(root, text="Valider", command=lambda: combat(selected_option.get()))
    validate_button.pack()

def combat(joueur1):
    joueur2 = options[randint(0, 4)]    
    resultat = resultats[joueur1][joueur2]
    # vide label
    label_game2 = tk.Label(root, text="")
    label_game2 = tk.Label(root, text=resultat)
    label_game2.pack()   
    

# Créer une fenêtre principale
root = tk.Tk()
root.title("jeux big bang theory")

game()
# Démarrer la boucle principale de la fenêtre
root.mainloop()

