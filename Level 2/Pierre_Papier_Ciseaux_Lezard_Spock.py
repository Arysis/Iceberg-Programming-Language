# import pour random et faire une fenêtre
from random import randint
import tkinter as tk

num_players = 0

def onePlayer():
    global num_players
    num_players = 1
    start_game()

def twoPlayer():
    global num_players
    num_players = 2
    start_game()

def start_game():
    print("vous avez choisi ", num_players, "joueur(s)")
    label.destroy()
    start_button1.destroy()
    start_button2.destroy()
    if(num_players == 1):
        game1()
    elif(num_players == 2):
        game2()
    else:
        print("erreur")

def game1():
    print("game1")

def game2():
    print("game2")

# Créer une fenêtre principale
root = tk.Tk()
root.title("Choix du nombre de joueurs")

# Ajouter un label pour expliquer ce qu'il faut faire
label = tk.Label(root, text="Choisissez le nombre de joueur : ")
label.pack()

# Ajouter un bouton pour lancer le jeu
start_button1 = tk.Button(root, text="1", command=onePlayer)
start_button1.pack()
start_button2 = tk.Button(root, text="2", command=twoPlayer)
start_button2.pack()

# Démarrer la boucle principale de la fenêtre
root.mainloop()

