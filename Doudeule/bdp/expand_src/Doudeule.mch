/* Doudeule
 * Author: 
 * Creation date: 3/7/19
 */
MACHINE Doudeule

SETS
    DATE ;
    USER

CONCRETE_CONSTANTS
    inconnu

PROPERTIES
    inconnu : USER

ABSTRACT_VARIABLES
    organisateur ,
    participants ,
    dates_prop

INVARIANT
    organisateur : USER &
    participants <: USER &
    dates_prop : POW ( DATE )

INITIALISATION
    organisateur := inconnu ||
    participants := {} ||
    dates_prop := {}

OPERATIONS

    creer_reunion ( ed , parts , orga ) =
    PRE
        ed : POW ( DATE ) &
        parts <: USER & parts /= {} &
        orga : USER & orga /= inconnu &
        organisateur = inconnu
    THEN
        organisateur := orga ||
        participants := parts ||
        dates_prop := ed
    END

END
