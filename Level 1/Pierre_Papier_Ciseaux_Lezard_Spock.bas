Dim joueur As String
Dim reponse As Integer
Dim rejouer As Integer
Dim ia As Integer
Dim pointJ As Integer
Dim pointA As Integer
rejouer = 1
While rejouer = 1
    reponse = 1
    While reponse = 1
        Input "Pierre, Papier, Ciseaux, Lezard, Spock ?", joueur
        Print joueur
        If joueur = "Pierre" Then
            reponse = 0
        ElseIf joueur = "Papier" Then
            reponse = 0
        ElseIf joueur = "Ciseaux" Then
            reponse = 0
        ElseIf joueur = "Lezard" Then
            reponse = 0
        ElseIf joueur = "Spock" Then
            reponse = 0
        End If
    Wend
    Randomize Timer
    ia = Int(Rnd * 5) + 1
    If ia = 1 Then
        Print "IA : Pierre, Joueur : ", joueur
        If joueur = "Ciseaux" Or joueur = "Lezard" Then
            Print "Vous avez perdu !"
            pointA = pointA + 1
        ElseIf joueur = "Papier" Or joueur = "Spock" Then
            Print "Vous avez gagnez !"
            pointJ = pointJ + 1
        Else
            Print "il y a egalite !"
        End If
    ElseIf ia = 2 Then
        Print "IA : Papier, Joueur : ", joueur
        If joueur = "Pierre" Or joueur = "Spock" Then
            Print "Vous avez perdu !"
            pointA = pointA + 1
        ElseIf joueur = "Ciseaux" Or joueur = "Lezard" Then
            Print "Vous avez gagnez !"
            pointJ = pointJ + 1
        Else
            Print "il y a egalite !"
        End If
    ElseIf ia = 3 Then
        Print "IA : Ciseaux, Joueur : ", joueur
        If joueur = "Papier" Or joueur = "Lezard" Then
            Print "Vous avez perdu !"
            pointA = pointA + 1
        ElseIf joueur = "Pierre" Or joueur = "Spock" Then
            Print "Vous avez gagnez !"
            pointJ = pointJ + 1
        Else
            Print "il y a egalite !"
        End If
    ElseIf ia = 4 Then
        Print "IA : Lezard, Joueur : ", joueur
        If joueur = "Papier" Or joueur = "Spock" Then
            Print "Vous avez perdu !"
            pointA = pointA + 1
        ElseIf joueur = "Pierre" Or joueur = "Ciseaux" Then
            Print "Vous avez gagnez !"
            pointJ = pointJ + 1
        Else
            Print "il y a egalite !"
        End If
    ElseIf ia = 5 Then
        Print "IA : Spock, Joueur : ", joueur
        If joueur = "Pierre" Or joueur = "Ciseaux" Then
            Print "Vous avez perdu !"
            pointA = pointA + 1
        ElseIf joueur = "Lezard" Or joueur = "Papier" Then
            Print "Vous avez gagnez !"
            pointJ = pointJ + 1
        Else
            Print "il y a egalite !"
        End If
    End If
    Print "Point IA : ", pointA, ", Point Joueur :", pointJ
    reponse = 1
    While reponse = 1
        Input "Voulez-vous rejouer ? (oui ou non)", joueur
        Print joueur
        If joueur = "non" Then
            reponse = 0
            rejouer = 0
        ElseIf joueur = "oui" Then
            reponse = 0

        End If
    Wend
Wend

