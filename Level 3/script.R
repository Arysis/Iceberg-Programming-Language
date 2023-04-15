IA <- floor(runif(1, min=0, max=4))
choix_possibles <- c("Pierre", "Feuille", "Ciseaux", "Lezard", "Spock")
Joueur <- readline(prompt=paste("Choisissez entre", paste(choix_possibles, collapse=", "), ": "))

while (!Joueur %in% choix_possibles) {
  cat("Votre choix n'est pas valide. Veuillez réessayer.\n")
  Joueur <- readline(prompt=paste("Choisissez entre", paste(choix_possibles, collapse=", "), ": "))
}

print(IA)
print(match(Joueur, choix_possibles))

if (match(Joueur, choix_possibles) == IA + 1) {
  cat("Vous avez gagné !\n")
} else if (match(Joueur, choix_possibles) == IA - 4) {
  cat("Vous avez gagné !\n")
} else if (match(Joueur, choix_possibles) == IA) {
  cat("Egalité !\n")
} else {
  cat("Vous avez perdu !\n")
}
