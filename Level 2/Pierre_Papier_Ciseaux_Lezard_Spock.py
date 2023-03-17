# import pour random et faire une fenêtre
from random import randint
import tkinter as tk

num_players = 0

def onePlayer():
    num_players = 1

def twoPlayer():
    num_players = 2

# Créer une fenêtre principale
root = tk.Tk()
root.title("Choix du nombre de joueurs")

# Ajouter un label pour expliquer ce qu'il faut faire
label = tk.Label(root, text="Choisissez le nombre de joueur : ")
label.pack()

# Ajouter un bouton pour lancer le jeu
start_button = tk.Button(root, text="1", command=onePlayer)
start_button.pack()
start_button = tk.Button(root, text="2", command=twoPlayer)
start_button.pack()

print(num_players)
# Démarrer la boucle principale de la fenêtre
root.mainloop()

