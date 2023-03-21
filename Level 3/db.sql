create table jeux{
    "id" int,
    "joueur1" varchar(255),
    "joueur2" varchar(255),
    "resultat" varchar(255),
}

create function jeux(joueur1 varchar(255), joueur2 varchar(255)){
    returns int as
    begin
        call verif(joueur1, joueur2);
        if joueur1 = joueur2 then
            update jeux set resultat = "egalite" where joueur1 = joueur1 and joueur2 = joueur2;
            return 0;
        else
            if joueur1 == "Pierre" then
                if joueur2 == "Ciseaux" or joueur2 == "Lezard" then
                    update jeux set resultat = "joueur1" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
                if joueur2 == "Feuille" or joueur2 == "Spock" then
                    update jeux set resultat = "joueur2" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
            end if;
            if joueur1 == "Feuille" then
                if joueur2 == "Pierre" or joueur2 == "Spock" then
                    update jeux set resultat = "joueur1" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
                if joueur2 == "Ciseaux" or joueur2 == "Lezard" then
                    update jeux set resultat = "joueur2" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
            end if;
            if joueur1 == "Ciseaux" then
                if joueur2 == "Feuille" or joueur2 == "Lezard" then
                    update jeux set resultat = "joueur1" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
                if joueur2 == "Pierre" or joueur2 == "Spock" then
                    update jeux set resultat = "joueur2" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
            end if;
            if joueur1 == "Lezard" then
                if joueur2 == "Feuille" or joueur2 == "Spock" then
                    update jeux set resultat = "joueur1" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
                if joueur2 == "Pierre" or joueur2 == "Ciseaux" then
                    update jeux set resultat = "joueur2" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
            end if;
            if joueur1 == "spock" then
                if joueur2 == "Pierre" or joueur2 == "Ciseaux" then
                    update jeux set resultat = "joueur1" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
                if joueur2 == "Feuille" or joueur2 == "Lezard" then
                    update jeux set resultat = "joueur2" where joueur1 = joueur1 and joueur2 = joueur2;
                    return 0;
                end if;
            end if;
        end if;
    end;
}

create function verif(joueur1 varchar(255), joueur2 varchar(255)){
    returns int as
    begin
        if joueur1 != "Pierre" and joueur1 != "Feuille" and joueur1 != "Ciseaux" and joueur1 != "Lezard" and joueur1 != "Spock" then
            raise exception 'Joueur 1 doit choisir entre Pierre, Feuille, Ciseaux, Lezard ou Spock';
        end if;
        if joueur2 != "Pierre" and joueur2 != "Feuille" and joueur2 != "Ciseaux" and joueur2 != "Lezard" and joueur2 != "Spock" then
            raise exception 'Joueur 2 doit choisir entre Pierre, Feuille, Ciseaux, Lezard ou Spock';
        end if;
    end;
}