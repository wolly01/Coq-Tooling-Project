From TYPE 		Require	Import	TYPE.
From TYPEOID	Require	Import	TYPEOID.

Module TYPE_OF_TYPEOID (t :TYPEOID_SIG)	:	TYPE_SIG.
	Definition TYPE	:=	t.TYPE.
End TYPE_OF_TYPEOID.