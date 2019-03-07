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
    dates_prop ,
    choix_part

INVARIANT
    participants <: USER &
    inconnu /: participants &
    organisateur : participants \/ { inconnu } &
    dates_prop : POW ( DATE ) &
    choix_part : USER <-> DATE &
    dom ( choix_part ) <: participants &
    ran ( choix_part ) <: dates_prop

INITIALISATION
    organisateur := inconnu ||
    participants := {} ||
    dates_prop := {} ||
    choix_part := {}

OPERATIONS

    creer_reunion ( ed , parts , orga ) =
    PRE
        ed : POW ( DATE ) &
        parts <: USER & parts /= {} & inconnu /: parts &
        orga : USER & orga /= inconnu &
        organisateur = inconnu
    THEN
        organisateur := orga ||
        participants := parts ||
        dates_prop := ed
    END ;

    indiquer_dispo ( part , date ) =
    PRE
        part : USER &
        date : DATE &
        part : participants &
        date : dates_prop &
        organisateur /= inconnu
    THEN
        choix_part := choix_part \/ { part |-> date }
    END

END
