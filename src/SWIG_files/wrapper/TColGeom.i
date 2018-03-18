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
%define TCOLGEOMDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=TCOLGEOMDOCSTRING) TColGeom

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


%include TColGeom_headers.i


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
%template(TColGeom_Array1OfBezierCurve) NCollection_Array1 <Handle(Geom_BezierCurve)>;
%template(TColGeom_Array1OfCurve) NCollection_Array1 <Handle(Geom_Curve)>;
%template(TColGeom_SequenceOfSurface) NCollection_Sequence <Handle(Geom_Surface)>;
%template(TColGeom_Array1OfSurface) NCollection_Array1 <Handle(Geom_Surface)>;
%template(TColGeom_Array1OfBSplineCurve) NCollection_Array1 <Handle(Geom_BSplineCurve)>;
%template(TColGeom_SequenceOfBoundedCurve) NCollection_Sequence <Handle(Geom_BoundedCurve)>;
%template(TColGeom_SequenceOfCurve) NCollection_Sequence <Handle(Geom_Curve)>;
%template(TColGeom_Array2OfBezierSurface) NCollection_Array2 <Handle(Geom_BezierSurface)>;
%template(TColGeom_Array2OfSurface) NCollection_Array2 <Handle(Geom_Surface)>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_Array1 <Handle_Geom_BezierCurve> TColGeom_Array1OfBezierCurve;
typedef NCollection_Array1 <Handle_Geom_Curve> TColGeom_Array1OfCurve;
typedef NCollection_Sequence <Handle_Geom_Surface> TColGeom_SequenceOfSurface;
typedef NCollection_Array1 <Handle_Geom_Surface> TColGeom_Array1OfSurface;
typedef NCollection_Array1 <Handle_Geom_BSplineCurve> TColGeom_Array1OfBSplineCurve;
typedef NCollection_Sequence <Handle_Geom_BoundedCurve> TColGeom_SequenceOfBoundedCurve;
typedef NCollection_Sequence <Handle_Geom_Curve> TColGeom_SequenceOfCurve;
typedef NCollection_Array2 <Handle_Geom_BezierSurface> TColGeom_Array2OfBezierSurface;
typedef NCollection_Array2 <Handle_Geom_Surface> TColGeom_Array2OfSurface;
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

