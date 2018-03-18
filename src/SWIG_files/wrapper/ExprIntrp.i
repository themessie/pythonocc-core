/*
Copyright 2008-2018 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%define EXPRINTRPDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=EXPRINTRPDOCSTRING) ExprIntrp

#pragma SWIG nowarn=504,325,503

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i


%include ExprIntrp_headers.i


%pythoncode {
def register_handle(handle, base_object):
    """
    Inserts the handle into the base object to
    prevent memory corruption in certain cases
    """
    try:
        if base_object.IsKind("Standard_Transient"):
            base_object.thisHandle = handle
            base_object.thisown = False
    except:
        pass
};

/* templates */
/* templates */
%define Handle(Class) opencascade::handle<Class>
%enddef
%template(ExprIntrp_ListIteratorOfStackOfGeneralFunction) NCollection_TListIterator<Handle(Expr_GeneralFunction)>;
%template(ExprIntrp_SequenceOfNamedExpression) NCollection_Sequence <Handle(Expr_NamedExpression)>;
%template(ExprIntrp_ListIteratorOfStackOfGeneralRelation) NCollection_TListIterator<Handle(Expr_GeneralRelation)>;
%template(ExprIntrp_StackOfGeneralRelation) NCollection_List <Handle(Expr_GeneralRelation)>;
%template(ExprIntrp_StackOfGeneralExpression) NCollection_List <Handle(Expr_GeneralExpression)>;
%template(ExprIntrp_SequenceOfNamedFunction) NCollection_Sequence <Handle(Expr_NamedFunction)>;
%template(ExprIntrp_ListIteratorOfStackOfGeneralExpression) NCollection_TListIterator<Handle(Expr_GeneralExpression)>;
%template(ExprIntrp_StackOfGeneralFunction) NCollection_List <Handle(Expr_GeneralFunction)>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_List <Handle_Expr_GeneralFunction>::Iterator ExprIntrp_ListIteratorOfStackOfGeneralFunction;
typedef NCollection_Sequence <Handle_Expr_NamedExpression> ExprIntrp_SequenceOfNamedExpression;
typedef NCollection_List <Handle_Expr_GeneralRelation>::Iterator ExprIntrp_ListIteratorOfStackOfGeneralRelation;
typedef NCollection_List <Handle_Expr_GeneralRelation> ExprIntrp_StackOfGeneralRelation;
typedef NCollection_List <Handle_Expr_GeneralExpression> ExprIntrp_StackOfGeneralExpression;
typedef NCollection_Sequence <Handle_Expr_NamedFunction> ExprIntrp_SequenceOfNamedFunction;
typedef NCollection_List <Handle_Expr_GeneralExpression>::Iterator ExprIntrp_ListIteratorOfStackOfGeneralExpression;
typedef NCollection_List <Handle_Expr_GeneralFunction> ExprIntrp_StackOfGeneralFunction;
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%rename(exprintrp) ExprIntrp;
%nodefaultctor ExprIntrp;
class ExprIntrp {
	public:
};


%extend ExprIntrp {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor ExprIntrp_Analysis;
class ExprIntrp_Analysis {
	public:
		%feature("compactdefaultargs") ExprIntrp_Analysis;
		%feature("autodoc", "	:rtype: None
") ExprIntrp_Analysis;
		 ExprIntrp_Analysis ();
		%feature("compactdefaultargs") SetMaster;
		%feature("autodoc", "	:param agen:
	:type agen: Handle_ExprIntrp_Generator &
	:rtype: None
") SetMaster;
		void SetMaster (const Handle_ExprIntrp_Generator & agen);
		%feature("compactdefaultargs") Push;
		%feature("autodoc", "	:param exp:
	:type exp: Handle_Expr_GeneralExpression &
	:rtype: None
") Push;
		void Push (const Handle_Expr_GeneralExpression & exp);
		%feature("compactdefaultargs") PushRelation;
		%feature("autodoc", "	:param rel:
	:type rel: Handle_Expr_GeneralRelation &
	:rtype: None
") PushRelation;
		void PushRelation (const Handle_Expr_GeneralRelation & rel);
		%feature("compactdefaultargs") PushName;
		%feature("autodoc", "	:param name:
	:type name: TCollection_AsciiString &
	:rtype: None
") PushName;
		void PushName (const TCollection_AsciiString & name);
		%feature("compactdefaultargs") PushValue;
		%feature("autodoc", "	:param degree:
	:type degree: int
	:rtype: None
") PushValue;
		void PushValue (const Standard_Integer degree);
		%feature("compactdefaultargs") PushFunction;
		%feature("autodoc", "	:param func:
	:type func: Handle_Expr_GeneralFunction &
	:rtype: None
") PushFunction;
		void PushFunction (const Handle_Expr_GeneralFunction & func);
		%feature("compactdefaultargs") Pop;
		%feature("autodoc", "	:rtype: Handle_Expr_GeneralExpression
") Pop;
		Handle_Expr_GeneralExpression Pop ();
		%feature("compactdefaultargs") PopRelation;
		%feature("autodoc", "	:rtype: Handle_Expr_GeneralRelation
") PopRelation;
		Handle_Expr_GeneralRelation PopRelation ();
		%feature("compactdefaultargs") PopName;
		%feature("autodoc", "	:rtype: TCollection_AsciiString
") PopName;
		TCollection_AsciiString PopName ();
		%feature("compactdefaultargs") PopValue;
		%feature("autodoc", "	:rtype: int
") PopValue;
		Standard_Integer PopValue ();
		%feature("compactdefaultargs") PopFunction;
		%feature("autodoc", "	:rtype: Handle_Expr_GeneralFunction
") PopFunction;
		Handle_Expr_GeneralFunction PopFunction ();
		%feature("compactdefaultargs") IsExpStackEmpty;
		%feature("autodoc", "	:rtype: bool
") IsExpStackEmpty;
		Standard_Boolean IsExpStackEmpty ();
		%feature("compactdefaultargs") IsRelStackEmpty;
		%feature("autodoc", "	:rtype: bool
") IsRelStackEmpty;
		Standard_Boolean IsRelStackEmpty ();
		%feature("compactdefaultargs") ResetAll;
		%feature("autodoc", "	:rtype: None
") ResetAll;
		void ResetAll ();
		%feature("compactdefaultargs") Use;
		%feature("autodoc", "	:param func:
	:type func: Handle_Expr_NamedFunction &
	:rtype: None
") Use;
		void Use (const Handle_Expr_NamedFunction & func);
		%feature("compactdefaultargs") Use;
		%feature("autodoc", "	:param named:
	:type named: Handle_Expr_NamedExpression &
	:rtype: None
") Use;
		void Use (const Handle_Expr_NamedExpression & named);
		%feature("compactdefaultargs") GetNamed;
		%feature("autodoc", "	:param name:
	:type name: TCollection_AsciiString &
	:rtype: Handle_Expr_NamedExpression
") GetNamed;
		Handle_Expr_NamedExpression GetNamed (const TCollection_AsciiString & name);
		%feature("compactdefaultargs") GetFunction;
		%feature("autodoc", "	:param name:
	:type name: TCollection_AsciiString &
	:rtype: Handle_Expr_NamedFunction
") GetFunction;
		Handle_Expr_NamedFunction GetFunction (const TCollection_AsciiString & name);
};


%extend ExprIntrp_Analysis {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor ExprIntrp_Generator;
class ExprIntrp_Generator : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Use;
		%feature("autodoc", "	:param func:
	:type func: Handle_Expr_NamedFunction &
	:rtype: None
") Use;
		void Use (const Handle_Expr_NamedFunction & func);
		%feature("compactdefaultargs") Use;
		%feature("autodoc", "	:param named:
	:type named: Handle_Expr_NamedExpression &
	:rtype: None
") Use;
		void Use (const Handle_Expr_NamedExpression & named);
		%feature("compactdefaultargs") GetNamed;
		%feature("autodoc", "	:rtype: ExprIntrp_SequenceOfNamedExpression
") GetNamed;
		const ExprIntrp_SequenceOfNamedExpression & GetNamed ();
		%feature("compactdefaultargs") GetFunctions;
		%feature("autodoc", "	:rtype: ExprIntrp_SequenceOfNamedFunction
") GetFunctions;
		const ExprIntrp_SequenceOfNamedFunction & GetFunctions ();
		%feature("compactdefaultargs") GetNamed;
		%feature("autodoc", "	* Returns NamedExpression with name <name> already interpreted if it exists. Returns a null handle if not.

	:param name:
	:type name: TCollection_AsciiString &
	:rtype: Handle_Expr_NamedExpression
") GetNamed;
		Handle_Expr_NamedExpression GetNamed (const TCollection_AsciiString & name);
		%feature("compactdefaultargs") GetFunction;
		%feature("autodoc", "	* Returns NamedFunction with name <name> already interpreted if it exists. Returns a null handle if not.

	:param name:
	:type name: TCollection_AsciiString &
	:rtype: Handle_Expr_NamedFunction
") GetFunction;
		Handle_Expr_NamedFunction GetFunction (const TCollection_AsciiString & name);
};


%extend ExprIntrp_Generator {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_ExprIntrp_Generator(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_ExprIntrp_Generator::Handle_ExprIntrp_Generator %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_ExprIntrp_Generator;
class Handle_ExprIntrp_Generator : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_ExprIntrp_Generator();
        Handle_ExprIntrp_Generator(const Handle_ExprIntrp_Generator &aHandle);
        Handle_ExprIntrp_Generator(const ExprIntrp_Generator *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_ExprIntrp_Generator DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_ExprIntrp_Generator {
    ExprIntrp_Generator* _get_reference() {
    return (ExprIntrp_Generator*)$self->get();
    }
};

%extend Handle_ExprIntrp_Generator {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend ExprIntrp_Generator {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor ExprIntrp_GenExp;
class ExprIntrp_GenExp : public ExprIntrp_Generator {
	public:
		%feature("compactdefaultargs") Create;
		%feature("autodoc", "	:rtype: Handle_ExprIntrp_GenExp
") Create;
		static Handle_ExprIntrp_GenExp Create ();
		%feature("compactdefaultargs") Process;
		%feature("autodoc", "	* Processes given string.

	:param str:
	:type str: TCollection_AsciiString &
	:rtype: None
") Process;
		void Process (const TCollection_AsciiString & str);
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "	* Returns false if any syntax error has occurred during process.

	:rtype: bool
") IsDone;
		Standard_Boolean IsDone ();
		%feature("compactdefaultargs") Expression;
		%feature("autodoc", "	* Returns expression generated. Raises an exception if IsDone answers false.

	:rtype: Handle_Expr_GeneralExpression
") Expression;
		Handle_Expr_GeneralExpression Expression ();
};


%extend ExprIntrp_GenExp {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_ExprIntrp_GenExp(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_ExprIntrp_GenExp::Handle_ExprIntrp_GenExp %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_ExprIntrp_GenExp;
class Handle_ExprIntrp_GenExp : public Handle_ExprIntrp_Generator {

    public:
        // constructors
        Handle_ExprIntrp_GenExp();
        Handle_ExprIntrp_GenExp(const Handle_ExprIntrp_GenExp &aHandle);
        Handle_ExprIntrp_GenExp(const ExprIntrp_GenExp *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_ExprIntrp_GenExp DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_ExprIntrp_GenExp {
    ExprIntrp_GenExp* _get_reference() {
    return (ExprIntrp_GenExp*)$self->get();
    }
};

%extend Handle_ExprIntrp_GenExp {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend ExprIntrp_GenExp {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor ExprIntrp_GenFct;
class ExprIntrp_GenFct : public ExprIntrp_Generator {
	public:
		%feature("compactdefaultargs") Create;
		%feature("autodoc", "	:rtype: Handle_ExprIntrp_GenFct
") Create;
		static Handle_ExprIntrp_GenFct Create ();
		%feature("compactdefaultargs") Process;
		%feature("autodoc", "	:param str:
	:type str: TCollection_AsciiString &
	:rtype: None
") Process;
		void Process (const TCollection_AsciiString & str);
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "	:rtype: bool
") IsDone;
		Standard_Boolean IsDone ();
};


%extend ExprIntrp_GenFct {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_ExprIntrp_GenFct(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_ExprIntrp_GenFct::Handle_ExprIntrp_GenFct %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_ExprIntrp_GenFct;
class Handle_ExprIntrp_GenFct : public Handle_ExprIntrp_Generator {

    public:
        // constructors
        Handle_ExprIntrp_GenFct();
        Handle_ExprIntrp_GenFct(const Handle_ExprIntrp_GenFct &aHandle);
        Handle_ExprIntrp_GenFct(const ExprIntrp_GenFct *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_ExprIntrp_GenFct DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_ExprIntrp_GenFct {
    ExprIntrp_GenFct* _get_reference() {
    return (ExprIntrp_GenFct*)$self->get();
    }
};

%extend Handle_ExprIntrp_GenFct {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend ExprIntrp_GenFct {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor ExprIntrp_GenRel;
class ExprIntrp_GenRel : public ExprIntrp_Generator {
	public:
		%feature("compactdefaultargs") Create;
		%feature("autodoc", "	:rtype: Handle_ExprIntrp_GenRel
") Create;
		static Handle_ExprIntrp_GenRel Create ();
		%feature("compactdefaultargs") Process;
		%feature("autodoc", "	* Processes given string.

	:param str:
	:type str: TCollection_AsciiString &
	:rtype: None
") Process;
		void Process (const TCollection_AsciiString & str);
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "	* Returns false if any syntax error has occurred during process.

	:rtype: bool
") IsDone;
		Standard_Boolean IsDone ();
		%feature("compactdefaultargs") Relation;
		%feature("autodoc", "	* Returns relation generated. Raises an exception if IsDone answers false.

	:rtype: Handle_Expr_GeneralRelation
") Relation;
		Handle_Expr_GeneralRelation Relation ();
};


%extend ExprIntrp_GenRel {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_ExprIntrp_GenRel(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_ExprIntrp_GenRel::Handle_ExprIntrp_GenRel %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_ExprIntrp_GenRel;
class Handle_ExprIntrp_GenRel : public Handle_ExprIntrp_Generator {

    public:
        // constructors
        Handle_ExprIntrp_GenRel();
        Handle_ExprIntrp_GenRel(const Handle_ExprIntrp_GenRel &aHandle);
        Handle_ExprIntrp_GenRel(const ExprIntrp_GenRel *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_ExprIntrp_GenRel DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_ExprIntrp_GenRel {
    ExprIntrp_GenRel* _get_reference() {
    return (ExprIntrp_GenRel*)$self->get();
    }
};

%extend Handle_ExprIntrp_GenRel {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend ExprIntrp_GenRel {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
