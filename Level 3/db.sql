create table jeux(
    "id" int,
    "joueur1" varchar(255),
    "joueur2" varchar(255),
    "resultat" varchar(255)
)
-- laguage postgresql
DROP FUNCTION IF EXISTS verif(varchar(255), varchar(255));
create function verif(joueur1 varchar(255), joueur2 varchar(255))
    returns int as $$
    begin
        if joueur1 not in ('Pierre', 'Feuille', 'Ciseaux', 'Lezard', 'Spock') then
            return 1;
        end if;
        if joueur2 not in ('Pierre', 'Feuille', 'Ciseaux', 'Lezard', 'Spock') then
            return 1;
        end if;
    end;
    $$ LANGUAGE plpgsql;
SELECT verif(joueur1, joueur2) AS result FROM jeux;

DROP FUNCTION IF EXISTS gagnant(varchar(255), varchar(255));
create function gagnant(j1 varchar(255), j2 varchar(255))
    returns int as $$
    begin
        if j1 = j2 then
            update jeux set resultat = 'egalite' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
            return 0;
        else
            if j1 = 'Pierre' then
                if j2 = 'Ciseaux' or j2 = 'Lezard' then
                    update jeux set resultat = 'joueur1' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
                if j2 = 'Feuille' or j2 = 'Spock' then
                    update jeux set resultat = 'joueur2' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
            end if;
            if j1 = 'Feuille' then
                if j2 = 'Pierre' or j2 = 'Spock' then
                    update jeux set resultat = 'joueur1' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
                if j2 = 'Ciseaux' or j2 = 'Lezard' then
                    update jeux set resultat = 'joueur2' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
            end if;
            if j1 = 'Ciseaux' then
                if j2 = 'Feuille' or j2 = 'Lezard' then
                    update jeux set resultat = 'joueur1' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
                if j2 = 'Pierre' or j2 = 'Spock' then
                    update jeux set resultat = 'joueur2' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
            end if;
            if j1 = 'Lezard' then
                if j2 = 'Feuille' or j2 = 'Spock' then
                    update jeux set resultat = 'joueur1' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
                if j2 = 'Pierre' or j2 = 'Ciseaux' then
                    update jeux set resultat = 'joueur2' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
            end if;
            if j1 = 'Spock' then
                if j2 = 'Pierre' or j2 = 'Ciseaux' then
                    update jeux set resultat = 'joueur1' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
                if j2 = 'Feuille' or j2 = 'Lezard' then
                    update jeux set resultat = 'joueur2' where jeux.joueur1 = j1 and jeux.joueur2 = j2;
                    return 0;
                end if;
            end if;
        end if;
    end;
    $$ LANGUAGE plpgsql;