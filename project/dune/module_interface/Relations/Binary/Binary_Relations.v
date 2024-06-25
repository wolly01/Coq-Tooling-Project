(*A General Set of Definitions & Boilerplate for Binary Relations of Types*)
Section Definitions.
	Section Base.
		Variables A B :Type.
		Definition	Generalised_Binary_Relation						:=	(fun A B => A->A->B).
		Definition	Binary_Relation												:=	(fun A => A->A->Type).
	End 		Base.
	Section Props.
		Context {T :	Type}.
		Variable	R: Binary_Relation T.
		Definition	Reflexive_Binary_Relation							:=	forall t			,	R t	t.
		Definition	Symmetric_Binary_Relation							:=	forall x y		,	R x y 	-> R y x.
 		Definition	Composable_Binary_Relation						:=	forall x y z	,	(R y z)	->	(R x y)	-> (R x z).
		Definition	Transitive_Binary_Relation						:=	forall x y z	,	(R x y)	->	(R y z)	-> (R x z).
	End			Props.
End 		Definitions.

(*Adapting the Basic Definitions for Parameterised Families*)
Local Notation " `SHIM0 R " := (fun (J	:Type) 	(F	:	J-> Type) 																		=> forall j,	R (F j)) (at level 0).
Definition Indexed_Binary_Relation						:= `SHIM0 Binary_Relation.
Arguments Indexed_Binary_Relation {_}.
Local Notation " `SHIM1 Q " := (fun (J	:Type) 	(F	:	J-> Type) (R: @Indexed_Binary_Relation J F) 			=> forall j,	Q (R j)) (at level 0).
Definition Indexed_Reflexive_Binary_Relation	:= `SHIM1 Reflexive_Binary_Relation.
Arguments Indexed_Reflexive_Binary_Relation {_}.
Definition Indexed_Symmetric_Binary_Relation	:= `SHIM1	Symmetric_Binary_Relation.
Arguments Indexed_Symmetric_Binary_Relation {_}.
Definition Indexed_Composable_Binary_Relation	:= `SHIM1	Composable_Binary_Relation.
Arguments Indexed_Composable_Binary_Relation {_}.
Definition Indexed_Transitive_Binary_Relation	:= `SHIM1	Transitive_Binary_Relation.
Arguments Indexed_Transitive_Binary_Relation {_}.