local resultats = {
    Pierre = {
        Ciseaux = "Joueur 1 gagne",
        Lezard = "Joueur 1 gagne",
        Papier = "Joueur 2 gagne",
        Spock = "Joueur 2 gagne"
    },
    Papier = {
        Pierre = "Joueur 1 gagne",
        Spock = "Joueur 1 gagne",
        Ciseaux = "Joueur 2 gagne",
        Lezard = "Joueur 2 gagne"
    },
    Ciseaux = {
        Papier = "Joueur 1 gagne",
        Lezard = "Joueur 1 gagne",
        Pierre = "Joueur 2 gagne",
        Spock = "Joueur 2 gagne"
    },
    Lezard = {
        Papier = "Joueur 1 gagne",
        Spock = "Joueur 1 gagne",
        Pierre = "Joueur 2 gagne",
        Ciseaux = "Joueur 2 gagne"
    },
    Spock = {
        Pierre = "Joueur 1 gagne",
        Ciseaux = "Joueur 1 gagne",
        Papier = "Joueur 2 gagne",
        Lezard = "Joueur 2 gagne"
    }
}
local player = 0
function conv_reponse()
    if player == "Pierre" then
        player = 0
    elseif player == "Feuille" then
        player = 1
    elseif player == "Ciseaux" then
        player = 2
    elseif player == "Lezard" then
        player = 3
    elseif player == "Spock" then
        player = 4
    end        
end

print("Bienvenue dans PFCLS (Pierre Feuille Ciseaux Lezard Spock) !")
reponse = 0
while reponse ~= 1 do
    print("Choisissez entre Pierre, Feuille, Ciseaux, Lezard ou Spock !")
    player = io.read()
    if player == "Pierre" or player == "Feuille" or player == "Ciseaux" or player == "Lezard" or player == "Spock" then
        reponse = 1
    end
end
conv_reponse()
local IA = math.random(0, 4)
print("player:", player)
print("IA:", IA)
if IA == player then
    print("Egalité !")
else 
    print(resultats[player][choix_IA])
end