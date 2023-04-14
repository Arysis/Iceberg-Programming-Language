<?php
$ia = rand(1, 5);
if (isset($_POST["joueur"]) && !empty($_POST["joueur"])) {
    $joueur = $_POST["joueur"];
}
?>

<html>
<head>
<title>ma page html</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
</div>
<div id="content">
    <div class="joueur">
        <form action="acceuil.php" method="post">
            <p>
                <label for="joueur">Choisissez une action :</label>
                <select name="joueur">
                    <option <?php if (isset($joueur) && $joueur == "") echo "selected" ?>></option>
                    <option value="1" <?php if (isset($joueur) && $joueur == "1") echo "selected" ?>>Pierre</option>
                    <option value="2" <?php if (isset($joueur) && $joueur == "2") echo "selected" ?>>Feuille</option>
                    <option value="3" <?php if (isset($joueur) && $joueur == "3") echo "selected" ?>>Ciseaux</option>
                    <option value="4" <?php if (isset($joueur) && $joueur == "4") echo "selected" ?>>Lezard</option>
                    <option value="5" <?php if (isset($joueur) && $joueur == "5") echo "selected" ?>>Spock</option>
                </select>
                <input type="submit" value="Valider" />
            </p>
        </form>

        <?php
            if (isset($_POST["joueur"]) && !empty($_POST["joueur"])) {
                switch ($ia) {
                    case 1:
                        if ($joueur == 3 || $joueur == 4) { echo "tu as perdu"; }
                        elseif ($joueur == 2 || $joueur == 5) { echo "tu as gagnez"; }
                        else { echo "égalité"; }
                        break;
                    case 2:
                        if ($joueur == 1 || $joueur == 5) { echo "tu as perdu"; }
                        elseif ($joueur == 3 || $joueur == 4) { echo "tu as gagnez"; }
                        else { echo "égalité"; }
                        break;
                    case 3:
                        if ($joueur == 2 || $joueur == 4) { echo "tu as perdu"; }
                        elseif ($joueur == 1 || $joueur == 5) { echo "tu as gagnez"; }
                        else { echo "égalité"; }
                        break;
                    case 4:
                        if ($joueur == 2 || $joueur == 5) { echo "tu as perdu"; }
                        elseif ($joueur == 1 || $joueur == 3) { echo "tu as gagnez"; }
                        else { echo "égalité"; }
                        break;
                    case 5:
                        if ($joueur == 1 || $joueur == 3) { echo "tu as perdu"; }
                        elseif ($joueur == 2 || $joueur == 4) { echo "tu as gagnez"; }
                        else { echo "égalité"; }
                        break;
                }
            }
        ?>
    </div>
</div>
<div id="footer">
<!-- pied de page -->
    <p>Arysis 2023, pierre feuille ciseaux lezard spock</p>
</div>
</div>
</div>
</body>
</html>