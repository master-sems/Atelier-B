Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Doudeule))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Doudeule))==(Machine(Doudeule));
  Level(Machine(Doudeule))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Doudeule)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Doudeule))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Doudeule))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Doudeule))==(?);
  List_Includes(Machine(Doudeule))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Doudeule))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Doudeule))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Doudeule))==(?);
  Context_List_Variables(Machine(Doudeule))==(?);
  Abstract_List_Variables(Machine(Doudeule))==(?);
  Local_List_Variables(Machine(Doudeule))==(choix_part,dates_prop,participants,organisateur);
  List_Variables(Machine(Doudeule))==(choix_part,dates_prop,participants,organisateur);
  External_List_Variables(Machine(Doudeule))==(choix_part,dates_prop,participants,organisateur)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Doudeule))==(?);
  Abstract_List_VisibleVariables(Machine(Doudeule))==(?);
  External_List_VisibleVariables(Machine(Doudeule))==(?);
  Expanded_List_VisibleVariables(Machine(Doudeule))==(?);
  List_VisibleVariables(Machine(Doudeule))==(?);
  Internal_List_VisibleVariables(Machine(Doudeule))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Doudeule))==(btrue);
  Gluing_List_Invariant(Machine(Doudeule))==(btrue);
  Expanded_List_Invariant(Machine(Doudeule))==(btrue);
  Abstract_List_Invariant(Machine(Doudeule))==(btrue);
  Context_List_Invariant(Machine(Doudeule))==(btrue);
  List_Invariant(Machine(Doudeule))==(participants <: USER & inconnu/:participants & organisateur: participants\/{inconnu} & dates_prop: POW(DATE) & choix_part: USER <-> DATE & dom(choix_part) <: participants & ran(choix_part) <: dates_prop)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Doudeule))==(btrue);
  Abstract_List_Assertions(Machine(Doudeule))==(btrue);
  Context_List_Assertions(Machine(Doudeule))==(btrue);
  List_Assertions(Machine(Doudeule))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Doudeule))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Doudeule))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Doudeule))==(organisateur,participants,dates_prop,choix_part:=inconnu,{},{},{});
  Context_List_Initialisation(Machine(Doudeule))==(skip);
  List_Initialisation(Machine(Doudeule))==(organisateur:=inconnu || participants:={} || dates_prop:={} || choix_part:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Doudeule))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Doudeule))==(btrue);
  List_Constraints(Machine(Doudeule))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Doudeule))==(creer_reunion,indiquer_dispo);
  List_Operations(Machine(Doudeule))==(creer_reunion,indiquer_dispo)
END
&
THEORY ListInputX IS
  List_Input(Machine(Doudeule),creer_reunion)==(ed,parts,orga);
  List_Input(Machine(Doudeule),indiquer_dispo)==(part,date)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Doudeule),creer_reunion)==(?);
  List_Output(Machine(Doudeule),indiquer_dispo)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Doudeule),creer_reunion)==(creer_reunion(ed,parts,orga));
  List_Header(Machine(Doudeule),indiquer_dispo)==(indiquer_dispo(part,date))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Doudeule),creer_reunion)==(ed: POW(DATE) & parts <: USER & parts/={} & inconnu/:parts & orga: USER & orga/=inconnu & organisateur = inconnu);
  List_Precondition(Machine(Doudeule),indiquer_dispo)==(part: USER & date: DATE & part: participants & date: dates_prop & organisateur/=inconnu)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Doudeule),indiquer_dispo)==(part: USER & date: DATE & part: participants & date: dates_prop & organisateur/=inconnu | choix_part:=choix_part\/{part|->date});
  Expanded_List_Substitution(Machine(Doudeule),creer_reunion)==(ed: POW(DATE) & parts <: USER & parts/={} & inconnu/:parts & orga: USER & orga/=inconnu & organisateur = inconnu | organisateur,participants,dates_prop:=orga,parts,ed);
  List_Substitution(Machine(Doudeule),creer_reunion)==(organisateur:=orga || participants:=parts || dates_prop:=ed);
  List_Substitution(Machine(Doudeule),indiquer_dispo)==(choix_part:=choix_part\/{part|->date})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Doudeule))==(inconnu);
  Inherited_List_Constants(Machine(Doudeule))==(?);
  List_Constants(Machine(Doudeule))==(inconnu)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Doudeule),DATE)==(?);
  Context_List_Enumerated(Machine(Doudeule))==(?);
  Context_List_Defered(Machine(Doudeule))==(?);
  Context_List_Sets(Machine(Doudeule))==(?);
  List_Valuable_Sets(Machine(Doudeule))==(DATE,USER);
  Inherited_List_Enumerated(Machine(Doudeule))==(?);
  Inherited_List_Defered(Machine(Doudeule))==(?);
  Inherited_List_Sets(Machine(Doudeule))==(?);
  List_Enumerated(Machine(Doudeule))==(?);
  List_Defered(Machine(Doudeule))==(DATE,USER);
  List_Sets(Machine(Doudeule))==(DATE,USER);
  Set_Definition(Machine(Doudeule),USER)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Doudeule))==(?);
  Expanded_List_HiddenConstants(Machine(Doudeule))==(?);
  List_HiddenConstants(Machine(Doudeule))==(?);
  External_List_HiddenConstants(Machine(Doudeule))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Doudeule))==(btrue);
  Context_List_Properties(Machine(Doudeule))==(btrue);
  Inherited_List_Properties(Machine(Doudeule))==(btrue);
  List_Properties(Machine(Doudeule))==(inconnu: USER & DATE: FIN(INTEGER) & not(DATE = {}) & USER: FIN(INTEGER) & not(USER = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Doudeule),creer_reunion)==(?);
  List_ANY_Var(Machine(Doudeule),indiquer_dispo)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Doudeule)) == (inconnu,DATE,USER | ? | choix_part,dates_prop,participants,organisateur | ? | creer_reunion,indiquer_dispo | ? | ? | ? | Doudeule);
  List_Of_HiddenCst_Ids(Machine(Doudeule)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Doudeule)) == (inconnu);
  List_Of_VisibleVar_Ids(Machine(Doudeule)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Doudeule)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Doudeule)) == (Type(DATE) == Cst(SetOf(atype(DATE,"[DATE","]DATE")));Type(USER) == Cst(SetOf(atype(USER,"[USER","]USER"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Doudeule)) == (Type(inconnu) == Cst(atype(USER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Doudeule)) == (Type(choix_part) == Mvl(SetOf(atype(USER,?,?)*atype(DATE,?,?)));Type(dates_prop) == Mvl(SetOf(atype(DATE,?,?)));Type(participants) == Mvl(SetOf(atype(USER,?,?)));Type(organisateur) == Mvl(atype(USER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Doudeule)) == (Type(indiquer_dispo) == Cst(No_type,atype(USER,?,?)*atype(DATE,?,?));Type(creer_reunion) == Cst(No_type,SetOf(atype(DATE,?,?))*SetOf(atype(USER,?,?))*atype(USER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
