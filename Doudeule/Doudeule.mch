/* Doudeule
 * Author: 
 * Creation date: 3/7/19
 */
MACHINE Doudeule

SETS
    DATE ;
    USER
    
CONSTANTS
    inconnu

PROPERTIES
    inconnu: USER

ABSTRACT_VARIABLES
    orgranisateur, 
    participants,
    dates_prop
    
INVARIANT
    organisateur : USER &
    participants <: USER &
    dates_prop : POW(DATE)
    
INITIALISATION
    organisateur := inconnu ||
    participants := {} ||
    dates_prop := {}
    
OPERATIONS
    creer_reunion()

END
