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
%define STLAPIDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=STLAPIDOCSTRING) StlAPI

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


%include StlAPI_headers.i


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
/* end templates declaration */

/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%rename(stlapi) StlAPI;
class StlAPI {
	public:
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	* Convert and write shape to STL format. File is written in binary if aAsciiMode is False otherwise it is written in Ascii --by default--.

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param theFile:
	:type theFile: char *
	:param theAsciiMode: default value is Standard_True
	:type theAsciiMode: bool
	:rtype: bool
") Write;
		static Standard_Boolean Write (const TopoDS_Shape & theShape,const char * theFile,const Standard_Boolean theAsciiMode = Standard_True);
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "	* Legacy interface. Read STL file and create a shape composed of triangular faces, one per facet. This approach is very inefficient, especially for large files. Consider reading STL file to Poly_Triangulation object instead --see class RWStl--.

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param aFile:
	:type aFile: char *
	:rtype: bool
") Read;
		static Standard_Boolean Read (TopoDS_Shape & theShape,const char * aFile);
};


%extend StlAPI {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StlAPI_Reader;
class StlAPI_Reader {
	public:
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "	* Reads STL file to the TopoDS_Shape --each triangle is converted to the face--. returns True if reading is successful

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param theFileName:
	:type theFileName: char *
	:rtype: bool
") Read;
		Standard_Boolean Read (TopoDS_Shape & theShape,const char * theFileName);
};


%extend StlAPI_Reader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StlAPI_Writer;
class StlAPI_Writer {
	public:
		%feature("compactdefaultargs") StlAPI_Writer;
		%feature("autodoc", "	* Creates a writer object with default parameters: ASCIIMode.

	:rtype: None
") StlAPI_Writer;
		 StlAPI_Writer ();

            %feature("autodoc","1");
            %extend {
                Standard_Boolean GetASCIIMode() {
                return (Standard_Boolean) $self->ASCIIMode();
                }
            };
            %feature("autodoc","1");
            %extend {
                void SetASCIIMode(Standard_Boolean value ) {
                $self->ASCIIMode()=value;
                }
            };
            		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	* Converts a given shape to STL format and writes it to file with a given filename. eturn the error state.

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param theFileName:
	:type theFileName: char *
	:rtype: bool
") Write;
		Standard_Boolean Write (const TopoDS_Shape & theShape,const char * theFileName);
};


%extend StlAPI_Writer {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
