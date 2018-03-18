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
%define CDMDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=CDMDOCSTRING) CDM

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


%include CDM_headers.i


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
%template(CDM_ListOfReferences) NCollection_List <Handle(CDM_Reference)>;
%template(CDM_PresentationDirectory) NCollection_DataMap <TCollection_ExtendedString , Handle(CDM_Document) , TCollection_ExtendedString>;
%template(CDM_ListIteratorOfListOfReferences) NCollection_TListIterator<Handle(CDM_Reference)>;
%template(CDM_ListIteratorOfListOfDocument) NCollection_TListIterator<Handle(CDM_Document)>;
%template(CDM_MapOfDocument) NCollection_Map <Handle(CDM_Document) , CDM_DocumentHasher>;
%template(CDM_MetaDataLookUpTable) NCollection_DataMap <TCollection_ExtendedString , Handle(CDM_MetaData) , TCollection_ExtendedString>;
%template(CDM_ListOfDocument) NCollection_List <Handle(CDM_Document)>;
%template(CDM_DocumentHasher) NCollection_DefaultHasher <Handle(CDM_Document)>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_DataMap <TCollection_ExtendedString , Handle_CDM_MetaData , TCollection_ExtendedString>::Iterator CDM_DataMapIteratorOfMetaDataLookUpTable;
typedef CDM_Document * CDM_DocumentPointer;
typedef NCollection_DataMap <TCollection_ExtendedString , Handle_CDM_Document , TCollection_ExtendedString>::Iterator CDM_DataMapIteratorOfPresentationDirectory;
typedef NCollection_Map <Handle_CDM_Document , CDM_DocumentHasher>::Iterator CDM_MapIteratorOfMapOfDocument;
typedef NCollection_List <Handle_CDM_Reference> CDM_ListOfReferences;
typedef NCollection_DataMap <TCollection_ExtendedString , Handle_CDM_Document , TCollection_ExtendedString> CDM_PresentationDirectory;
typedef NCollection_List <Handle_CDM_Reference>::Iterator CDM_ListIteratorOfListOfReferences;
typedef NCollection_List <Handle_CDM_Document>::Iterator CDM_ListIteratorOfListOfDocument;
typedef TColStd_DataMapOfStringInteger CDM_NamesDirectory;
typedef NCollection_Map <Handle_CDM_Document , CDM_DocumentHasher> CDM_MapOfDocument;
typedef NCollection_DataMap <TCollection_ExtendedString , Handle_CDM_MetaData , TCollection_ExtendedString> CDM_MetaDataLookUpTable;
typedef NCollection_List <Handle_CDM_Document> CDM_ListOfDocument;
typedef NCollection_DefaultHasher <Handle_CDM_Document> CDM_DocumentHasher;
/* end typedefs declaration */

/* public enums */
enum CDM_CanCloseStatus {
	CDM_CCS_OK = 0,
	CDM_CCS_NotOpen = 1,
	CDM_CCS_UnstoredReferenced = 2,
	CDM_CCS_ModifiedReferenced = 3,
	CDM_CCS_ReferenceRejection = 4,
};

/* end public enums declaration */

%nodefaultctor CDM_Application;
class CDM_Application : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Resources;
		%feature("autodoc", "	* The manager returned by this virtual method will be used to search for Format.Retrieval resource items.

	:rtype: Handle_Resource_Manager
") Resources;
		virtual Handle_Resource_Manager Resources ();
		%feature("compactdefaultargs") MessageDriver;
		%feature("autodoc", "	* By default returns a NullMessageDriver;

	:rtype: Handle_CDM_MessageDriver
") MessageDriver;
		virtual Handle_CDM_MessageDriver MessageDriver ();
		%feature("compactdefaultargs") BeginOfUpdate;
		%feature("autodoc", "	* this method is called before the update of a document. By default, writes in MessageDriver----.

	:param aDocument:
	:type aDocument: Handle_CDM_Document &
	:rtype: void
") BeginOfUpdate;
		virtual void BeginOfUpdate (const Handle_CDM_Document & aDocument);
		%feature("compactdefaultargs") EndOfUpdate;
		%feature("autodoc", "	* this method is called affter the update of a document. By default, writes in MessageDriver----.

	:param aDocument:
	:type aDocument: Handle_CDM_Document &
	:param theStatus:
	:type theStatus: bool
	:param ErrorString:
	:type ErrorString: TCollection_ExtendedString &
	:rtype: void
") EndOfUpdate;
		virtual void EndOfUpdate (const Handle_CDM_Document & aDocument,const Standard_Boolean theStatus,const TCollection_ExtendedString & ErrorString);
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	* writes the string in the application MessagerDriver.

	:param aString:
	:type aString: Standard_ExtString
	:rtype: None
") Write;
		void Write (const Standard_ExtString aString);
};


%extend CDM_Application {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_CDM_Application(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_CDM_Application::Handle_CDM_Application %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_CDM_Application;
class Handle_CDM_Application : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_CDM_Application();
        Handle_CDM_Application(const Handle_CDM_Application &aHandle);
        Handle_CDM_Application(const CDM_Application *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_CDM_Application DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_CDM_Application {
    CDM_Application* _get_reference() {
    return (CDM_Application*)$self->get();
    }
};

%extend Handle_CDM_Application {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend CDM_Application {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDM_Document;
%ignore CDM_Document::~CDM_Document();
class CDM_Document : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "	* The Update method will be called once for each reference, but it should not perform any computation, to avoid multiple computation of a same document.

	:param aToDocument:
	:type aToDocument: Handle_CDM_Document &
	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:param aModifContext:
	:type aModifContext: Standard_Address
	:rtype: void
") Update;
		virtual void Update (const Handle_CDM_Document & aToDocument,const Standard_Integer aReferenceIdentifier,const Standard_Address aModifContext);
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "	* This method Update will be called to signal the end of the modified references list. The document should be recomputed and UpdateFromDocuments should be called. Update should returns True in case of success, false otherwise. In case of Failure, additional information can be given in ErrorString.

	:param ErrorString:
	:type ErrorString: TCollection_ExtendedString &
	:rtype: bool
") Update;
		virtual Standard_Boolean Update (TCollection_ExtendedString & ErrorString);
		%feature("compactdefaultargs") StorageFormat;
		%feature("autodoc", "	* The Storage Format is the key which is used to determine in the application resources the storage driver plugin, the file extension and other data used to store the document.

	:rtype: TCollection_ExtendedString
") StorageFormat;
		virtual TCollection_ExtendedString StorageFormat ();
		%feature("compactdefaultargs") Extensions;
		%feature("autodoc", "	* by default empties the extensions.

	:param Extensions:
	:type Extensions: TColStd_SequenceOfExtendedString &
	:rtype: void
") Extensions;
		virtual void Extensions (TColStd_SequenceOfExtendedString & Extensions);
		%feature("compactdefaultargs") GetAlternativeDocument;
		%feature("autodoc", "	* This method can be redefined to extract another document in a different format. For example, to extract a Shape from an applicative document.

	:param aFormat:
	:type aFormat: TCollection_ExtendedString &
	:param anAlternativeDocument:
	:type anAlternativeDocument: Handle_CDM_Document &
	:rtype: bool
") GetAlternativeDocument;
		virtual Standard_Boolean GetAlternativeDocument (const TCollection_ExtendedString & aFormat,Handle_CDM_Document & anAlternativeDocument);
		%feature("compactdefaultargs") CreateReference;
		%feature("autodoc", "	* Creates a reference from this document to {anOtherDocument}. Returns a reference identifier. This reference identifier is unique in the document and will not be used for the next references, even after the storing of the document. If there is already a reference between the two documents, the reference is not created, but its reference identifier is returned.

	:param anOtherDocument:
	:type anOtherDocument: Handle_CDM_Document &
	:rtype: int
") CreateReference;
		Standard_Integer CreateReference (const Handle_CDM_Document & anOtherDocument);
		%feature("compactdefaultargs") RemoveReference;
		%feature("autodoc", "	* Removes the reference between the From Document and the To Document identified by a reference identifier.

	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: None
") RemoveReference;
		void RemoveReference (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") RemoveAllReferences;
		%feature("autodoc", "	* Removes all references having this document for From Document.

	:rtype: None
") RemoveAllReferences;
		void RemoveAllReferences ();
		%feature("compactdefaultargs") Document;
		%feature("autodoc", "	* Returns the To Document of the reference identified by aReferenceIdentifier. If the ToDocument is stored and has not yet been retrieved, this method will retrieve it.

	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: Handle_CDM_Document
") Document;
		Handle_CDM_Document Document (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") IsInSession;
		%feature("autodoc", "	* returns True if the To Document of the reference identified by aReferenceIdentifier is in session, False if it corresponds to a not yet retrieved document.

	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: bool
") IsInSession;
		Standard_Boolean IsInSession (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") IsStored;
		%feature("autodoc", "	* returns True if the To Document of the reference identified by aReferenceIdentifier has already been stored, False otherwise.

	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: bool
") IsStored;
		Standard_Boolean IsStored (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* returns the name of the metadata of the To Document of the reference identified by aReferenceIdentifier.

	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: TCollection_ExtendedString
") Name;
		TCollection_ExtendedString Name (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") UpdateFromDocuments;
		%feature("autodoc", "	* call virtual method Update on all referencing documents. This method keeps the list of the -- documents to process.It may be the starting of an update -- cycle. If not, the reentrant calls made by Update method --without argument-- will append the referencing documents to the list and call the Update method --with arguments--. Only the first call to UpdateFromDocuments generate call to Update----.

	:param aModifContext:
	:type aModifContext: Standard_Address
	:rtype: None
") UpdateFromDocuments;
		void UpdateFromDocuments (const Standard_Address aModifContext);
		%feature("compactdefaultargs") ToReferencesNumber;
		%feature("autodoc", "	* returns the number of references having this document as From Document.

	:rtype: int
") ToReferencesNumber;
		Standard_Integer ToReferencesNumber ();
		%feature("compactdefaultargs") FromReferencesNumber;
		%feature("autodoc", "	* returns the number of references having this document as To Document.

	:rtype: int
") FromReferencesNumber;
		Standard_Integer FromReferencesNumber ();
		%feature("compactdefaultargs") ShallowReferences;
		%feature("autodoc", "	* returns True is this document references aDocument;

	:param aDocument:
	:type aDocument: Handle_CDM_Document &
	:rtype: bool
") ShallowReferences;
		Standard_Boolean ShallowReferences (const Handle_CDM_Document & aDocument);
		%feature("compactdefaultargs") DeepReferences;
		%feature("autodoc", "	* returns True is this document references aDocument;

	:param aDocument:
	:type aDocument: Handle_CDM_Document &
	:rtype: bool
") DeepReferences;
		Standard_Boolean DeepReferences (const Handle_CDM_Document & aDocument);
		%feature("compactdefaultargs") CopyReference;
		%feature("autodoc", "	* Copies a reference to this document. This method avoid retrieval of referenced document. The arguments are the original document and a valid reference identifier Returns the local identifier.

	:param aFromDocument:
	:type aFromDocument: Handle_CDM_Document &
	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: int
") CopyReference;
		Standard_Integer CopyReference (const Handle_CDM_Document & aFromDocument,const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") IsReadOnly;
		%feature("autodoc", "	* indicates that this document cannot be modified.

	:rtype: bool
") IsReadOnly;
		Standard_Boolean IsReadOnly ();
		%feature("compactdefaultargs") IsReadOnly;
		%feature("autodoc", "	* indicates that the referenced document cannot be modified,

	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: bool
") IsReadOnly;
		Standard_Boolean IsReadOnly (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") SetIsReadOnly;
		%feature("autodoc", "	:rtype: None
") SetIsReadOnly;
		void SetIsReadOnly ();
		%feature("compactdefaultargs") UnsetIsReadOnly;
		%feature("autodoc", "	:rtype: None
") UnsetIsReadOnly;
		void UnsetIsReadOnly ();
		%feature("compactdefaultargs") Modify;
		%feature("autodoc", "	* Indicates that this document has been modified. This method increments the modification counter.

	:rtype: None
") Modify;
		void Modify ();
		%feature("compactdefaultargs") Modifications;
		%feature("autodoc", "	* returns the current modification counter.

	:rtype: int
") Modifications;
		Standard_Integer Modifications ();
		%feature("compactdefaultargs") UnModify;
		%feature("autodoc", "	:rtype: None
") UnModify;
		void UnModify ();
		%feature("compactdefaultargs") IsUpToDate;
		%feature("autodoc", "	* returns true if the modification counter found in the given reference is equal to the actual modification counter of the To Document. This method is able to deal with a reference to a not retrieved document.

	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: bool
") IsUpToDate;
		Standard_Boolean IsUpToDate (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") SetIsUpToDate;
		%feature("autodoc", "	* Resets the modification counter in the given reference to the actual modification counter of its To Document. This method should be called after the application has updated this document.

	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: None
") SetIsUpToDate;
		void SetIsUpToDate (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") SetComment;
		%feature("autodoc", "	* associates a comment with this document.

	:param aComment:
	:type aComment: TCollection_ExtendedString &
	:rtype: None
") SetComment;
		void SetComment (const TCollection_ExtendedString & aComment);
		%feature("compactdefaultargs") AddComment;
		%feature("autodoc", "	* appends a comment into comments of this document.

	:param aComment:
	:type aComment: TCollection_ExtendedString &
	:rtype: None
") AddComment;
		void AddComment (const TCollection_ExtendedString & aComment);
		%feature("compactdefaultargs") SetComments;
		%feature("autodoc", "	* associates a comments with this document.

	:param aComments:
	:type aComments: TColStd_SequenceOfExtendedString &
	:rtype: None
") SetComments;
		void SetComments (const TColStd_SequenceOfExtendedString & aComments);
		%feature("compactdefaultargs") Comments;
		%feature("autodoc", "	* returns the associated comments through <aComments>. Returns empty sequence if no comments are associated.

	:param aComments:
	:type aComments: TColStd_SequenceOfExtendedString &
	:rtype: None
") Comments;
		void Comments (TColStd_SequenceOfExtendedString & aComments);
		%feature("compactdefaultargs") Comment;
		%feature("autodoc", "	* returns the first of associated comments. By defaut the comment is an empty string.

	:rtype: Standard_ExtString
") Comment;
		Standard_ExtString Comment ();
		%feature("compactdefaultargs") Presentation;
		%feature("autodoc", "	* Returns an alphanumeric string identifying this document in a unique manner in the current process. The presentation may change when the document is stored. Tries to get the 'FileFormat`.Presentation resource This item is used to give a default presentation to the document.

	:rtype: Standard_ExtString
") Presentation;
		Standard_ExtString Presentation ();
		%feature("compactdefaultargs") FindFromPresentation;
		%feature("autodoc", "	* returns the document having the given alphanumeric presentation.

	:param aPresentation:
	:type aPresentation: TCollection_ExtendedString &
	:rtype: Handle_CDM_Document
") FindFromPresentation;
		static Handle_CDM_Document FindFromPresentation (const TCollection_ExtendedString & aPresentation);
		%feature("compactdefaultargs") FindPresentation;
		%feature("autodoc", "	* indicates whether a document having the given presentation does exist.

	:param aPresentation:
	:type aPresentation: TCollection_ExtendedString &
	:rtype: bool
") FindPresentation;
		static Standard_Boolean FindPresentation (const TCollection_ExtendedString & aPresentation);
		%feature("compactdefaultargs") IsStored;
		%feature("autodoc", "	:rtype: bool
") IsStored;
		Standard_Boolean IsStored ();
		%feature("compactdefaultargs") StorageVersion;
		%feature("autodoc", "	* returns the value of the modification counter at the time of storage. By default returns 0.

	:rtype: int
") StorageVersion;
		Standard_Integer StorageVersion ();
		%feature("compactdefaultargs") SetMetaData;
		%feature("autodoc", "	* associates database information to a document which has been stored. The name of the document is now the name which has beenused to store the data.

	:param aMetaData:
	:type aMetaData: Handle_CDM_MetaData &
	:rtype: None
") SetMetaData;
		void SetMetaData (const Handle_CDM_MetaData & aMetaData);
		%feature("compactdefaultargs") UnsetIsStored;
		%feature("autodoc", "	:rtype: None
") UnsetIsStored;
		void UnsetIsStored ();
		%feature("compactdefaultargs") MetaData;
		%feature("autodoc", "	:rtype: Handle_CDM_MetaData
") MetaData;
		Handle_CDM_MetaData MetaData ();
		%feature("compactdefaultargs") Folder;
		%feature("autodoc", "	:rtype: TCollection_ExtendedString
") Folder;
		TCollection_ExtendedString Folder ();
		%feature("compactdefaultargs") SetRequestedFolder;
		%feature("autodoc", "	* defines the folder in which the object should be stored.

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:rtype: None
") SetRequestedFolder;
		void SetRequestedFolder (const TCollection_ExtendedString & aFolder);
		%feature("compactdefaultargs") RequestedFolder;
		%feature("autodoc", "	:rtype: TCollection_ExtendedString
") RequestedFolder;
		TCollection_ExtendedString RequestedFolder ();
		%feature("compactdefaultargs") HasRequestedFolder;
		%feature("autodoc", "	:rtype: bool
") HasRequestedFolder;
		Standard_Boolean HasRequestedFolder ();
		%feature("compactdefaultargs") SetRequestedName;
		%feature("autodoc", "	* defines the name under which the object should be stored.

	:param aName:
	:type aName: TCollection_ExtendedString &
	:rtype: None
") SetRequestedName;
		void SetRequestedName (const TCollection_ExtendedString & aName);
		%feature("compactdefaultargs") RequestedName;
		%feature("autodoc", "	* determines under which the document is going to be store. By default the name of the document wil be -- used. If the document has no name its presentation will be used.

	:rtype: TCollection_ExtendedString
") RequestedName;
		TCollection_ExtendedString RequestedName ();
		%feature("compactdefaultargs") SetRequestedPreviousVersion;
		%feature("autodoc", "	:param aPreviousVersion:
	:type aPreviousVersion: TCollection_ExtendedString &
	:rtype: None
") SetRequestedPreviousVersion;
		void SetRequestedPreviousVersion (const TCollection_ExtendedString & aPreviousVersion);
		%feature("compactdefaultargs") UnsetRequestedPreviousVersion;
		%feature("autodoc", "	:rtype: None
") UnsetRequestedPreviousVersion;
		void UnsetRequestedPreviousVersion ();
		%feature("compactdefaultargs") HasRequestedPreviousVersion;
		%feature("autodoc", "	:rtype: bool
") HasRequestedPreviousVersion;
		Standard_Boolean HasRequestedPreviousVersion ();
		%feature("compactdefaultargs") RequestedPreviousVersion;
		%feature("autodoc", "	:rtype: TCollection_ExtendedString
") RequestedPreviousVersion;
		TCollection_ExtendedString RequestedPreviousVersion ();
		%feature("compactdefaultargs") SetRequestedComment;
		%feature("autodoc", "	* defines the Comment with which the object should be stored.

	:param aComment:
	:type aComment: TCollection_ExtendedString &
	:rtype: None
") SetRequestedComment;
		void SetRequestedComment (const TCollection_ExtendedString & aComment);
		%feature("compactdefaultargs") RequestedComment;
		%feature("autodoc", "	:rtype: TCollection_ExtendedString
") RequestedComment;
		TCollection_ExtendedString RequestedComment ();
		%feature("compactdefaultargs") LoadResources;
		%feature("autodoc", "	* read --or rereads-- the following resource.

	:rtype: None
") LoadResources;
		void LoadResources ();
		%feature("compactdefaultargs") FindFileExtension;
		%feature("autodoc", "	:rtype: bool
") FindFileExtension;
		Standard_Boolean FindFileExtension ();
		%feature("compactdefaultargs") FileExtension;
		%feature("autodoc", "	* gets the Desktop.Domain.Application.`FileFormat`.FileExtension resource.

	:rtype: TCollection_ExtendedString
") FileExtension;
		TCollection_ExtendedString FileExtension ();
		%feature("compactdefaultargs") FindDescription;
		%feature("autodoc", "	:rtype: bool
") FindDescription;
		Standard_Boolean FindDescription ();
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* gets the `FileFormat`.Description resource.

	:rtype: TCollection_ExtendedString
") Description;
		TCollection_ExtendedString Description ();
		%feature("compactdefaultargs") IsModified;
		%feature("autodoc", "	* returns true if the version is greater than the storage version

	:rtype: bool
") IsModified;
		Standard_Boolean IsModified ();

        %feature("autodoc", "1");
        %extend{
            std::string PrintToString() {
            std::stringstream s;
            self->Print(s);
            return s.str();}
        };
        		%feature("compactdefaultargs") IsOpened;
		%feature("autodoc", "	:rtype: bool
") IsOpened;
		Standard_Boolean IsOpened ();
		%feature("compactdefaultargs") Open;
		%feature("autodoc", "	:param anApplication:
	:type anApplication: Handle_CDM_Application &
	:rtype: None
") Open;
		void Open (const Handle_CDM_Application & anApplication);
		%feature("compactdefaultargs") CanClose;
		%feature("autodoc", "	:rtype: CDM_CanCloseStatus
") CanClose;
		CDM_CanCloseStatus CanClose ();
		%feature("compactdefaultargs") Close;
		%feature("autodoc", "	:rtype: None
") Close;
		void Close ();
		%feature("compactdefaultargs") Application;
		%feature("autodoc", "	:rtype: Handle_CDM_Application
") Application;
		Handle_CDM_Application Application ();
		%feature("compactdefaultargs") CanCloseReference;
		%feature("autodoc", "	* A referenced document may indicate through this virtual method that it does not allow the closing of aDocument which it references through the reference aReferenceIdentifier. By default returns Standard_True;;

	:param aDocument:
	:type aDocument: Handle_CDM_Document &
	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: bool
") CanCloseReference;
		virtual Standard_Boolean CanCloseReference (const Handle_CDM_Document & aDocument,const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") CloseReference;
		%feature("autodoc", "	* A referenced document may update its internal data structure when {aDocument} which it references through the reference {aReferenceIdentifier} is being closed. By default this method does nothing.

	:param aDocument:
	:type aDocument: Handle_CDM_Document &
	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: void
") CloseReference;
		virtual void CloseReference (const Handle_CDM_Document & aDocument,const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") IsOpened;
		%feature("autodoc", "	* returns true if the document corresponding to the given reference has been retrieved and opened. Otherwise returns false. This method does not retrieve the referenced document

	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: bool
") IsOpened;
		Standard_Boolean IsOpened (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") CreateReference;
		%feature("autodoc", "	:param aMetaData:
	:type aMetaData: Handle_CDM_MetaData &
	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:param anApplication:
	:type anApplication: Handle_CDM_Application &
	:param aToDocumentVersion:
	:type aToDocumentVersion: int
	:param UseStorageConfiguration:
	:type UseStorageConfiguration: bool
	:rtype: None
") CreateReference;
		void CreateReference (const Handle_CDM_MetaData & aMetaData,const Standard_Integer aReferenceIdentifier,const Handle_CDM_Application & anApplication,const Standard_Integer aToDocumentVersion,const Standard_Boolean UseStorageConfiguration);
		%feature("compactdefaultargs") CreateReference;
		%feature("autodoc", "	:param aMetaData:
	:type aMetaData: Handle_CDM_MetaData &
	:param anApplication:
	:type anApplication: Handle_CDM_Application &
	:param aDocumentVersion:
	:type aDocumentVersion: int
	:param UseStorageConfiguration:
	:type UseStorageConfiguration: bool
	:rtype: int
") CreateReference;
		Standard_Integer CreateReference (const Handle_CDM_MetaData & aMetaData,const Handle_CDM_Application & anApplication,const Standard_Integer aDocumentVersion,const Standard_Boolean UseStorageConfiguration);
		%feature("compactdefaultargs") ReferenceCounter;
		%feature("autodoc", "	:rtype: int
") ReferenceCounter;
		Standard_Integer ReferenceCounter ();
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "	* the following method should be used instead: //! Update--me:mutable; ErrorString: out ExtendedString from TCollection-- returns Boolean from Standard

	:rtype: void
") Update;
		virtual void Update ();
		%feature("compactdefaultargs") Reference;
		%feature("autodoc", "	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:rtype: Handle_CDM_Reference
") Reference;
		Handle_CDM_Reference Reference (const Standard_Integer aReferenceIdentifier);
		%feature("compactdefaultargs") SetModifications;
		%feature("autodoc", "	:param Modifications:
	:type Modifications: int
	:rtype: None
") SetModifications;
		void SetModifications (const Standard_Integer Modifications);
		%feature("compactdefaultargs") SetReferenceCounter;
		%feature("autodoc", "	:param aReferenceCounter:
	:type aReferenceCounter: int
	:rtype: None
") SetReferenceCounter;
		void SetReferenceCounter (const Standard_Integer aReferenceCounter);
};


%extend CDM_Document {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_CDM_Document(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_CDM_Document::Handle_CDM_Document %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_CDM_Document;
class Handle_CDM_Document : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_CDM_Document();
        Handle_CDM_Document(const Handle_CDM_Document &aHandle);
        Handle_CDM_Document(const CDM_Document *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_CDM_Document DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_CDM_Document {
    CDM_Document* _get_reference() {
    return (CDM_Document*)$self->get();
    }
};

%extend Handle_CDM_Document {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend CDM_Document {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDM_MessageDriver;
class CDM_MessageDriver : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	:param aString:
	:type aString: Standard_ExtString
	:rtype: void
") Write;
		virtual void Write (const Standard_ExtString aString);
};


%extend CDM_MessageDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_CDM_MessageDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_CDM_MessageDriver::Handle_CDM_MessageDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_CDM_MessageDriver;
class Handle_CDM_MessageDriver : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_CDM_MessageDriver();
        Handle_CDM_MessageDriver(const Handle_CDM_MessageDriver &aHandle);
        Handle_CDM_MessageDriver(const CDM_MessageDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_CDM_MessageDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_CDM_MessageDriver {
    CDM_MessageDriver* _get_reference() {
    return (CDM_MessageDriver*)$self->get();
    }
};

%extend Handle_CDM_MessageDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend CDM_MessageDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDM_MetaData;
class CDM_MetaData : public Standard_Transient {
	public:
		%feature("compactdefaultargs") LookUp;
		%feature("autodoc", "	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param aPath:
	:type aPath: TCollection_ExtendedString &
	:param aFileName:
	:type aFileName: TCollection_ExtendedString &
	:param ReadOnly:
	:type ReadOnly: bool
	:rtype: Handle_CDM_MetaData
") LookUp;
		static Handle_CDM_MetaData LookUp (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const TCollection_ExtendedString & aPath,const TCollection_ExtendedString & aFileName,const Standard_Boolean ReadOnly);
		%feature("compactdefaultargs") LookUp;
		%feature("autodoc", "	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param aPath:
	:type aPath: TCollection_ExtendedString &
	:param aVersion:
	:type aVersion: TCollection_ExtendedString &
	:param aFileName:
	:type aFileName: TCollection_ExtendedString &
	:param ReadOnly:
	:type ReadOnly: bool
	:rtype: Handle_CDM_MetaData
") LookUp;
		static Handle_CDM_MetaData LookUp (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const TCollection_ExtendedString & aPath,const TCollection_ExtendedString & aVersion,const TCollection_ExtendedString & aFileName,const Standard_Boolean ReadOnly);
		%feature("compactdefaultargs") IsRetrieved;
		%feature("autodoc", "	:rtype: bool
") IsRetrieved;
		Standard_Boolean IsRetrieved ();
		%feature("compactdefaultargs") Document;
		%feature("autodoc", "	:rtype: Handle_CDM_Document
") Document;
		Handle_CDM_Document Document ();
		%feature("compactdefaultargs") Folder;
		%feature("autodoc", "	* returns the folder in which the meta-data has to be created or has to be found.

	:rtype: TCollection_ExtendedString
") Folder;
		TCollection_ExtendedString Folder ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* returns the name under which the meta-data has to be created or has to be found.

	:rtype: TCollection_ExtendedString
") Name;
		TCollection_ExtendedString Name ();
		%feature("compactdefaultargs") Version;
		%feature("autodoc", "	* returns the version under which the meta-data has to be found. Warning: raises NoSuchObject from Standard if no Version has been defined

	:rtype: TCollection_ExtendedString
") Version;
		TCollection_ExtendedString Version ();
		%feature("compactdefaultargs") HasVersion;
		%feature("autodoc", "	* indicates that the version has to be taken into account when searching the corresponding meta-data.

	:rtype: bool
") HasVersion;
		Standard_Boolean HasVersion ();
		%feature("compactdefaultargs") FileName;
		%feature("autodoc", "	:rtype: TCollection_ExtendedString
") FileName;
		TCollection_ExtendedString FileName ();

        %feature("autodoc", "1");
        %extend{
            std::string PrintToString() {
            std::stringstream s;
            self->Print(s);
            return s.str();}
        };
        		%feature("compactdefaultargs") Path;
		%feature("autodoc", "	:rtype: TCollection_ExtendedString
") Path;
		TCollection_ExtendedString Path ();
		%feature("compactdefaultargs") UnsetDocument;
		%feature("autodoc", "	:rtype: None
") UnsetDocument;
		void UnsetDocument ();
		%feature("compactdefaultargs") IsReadOnly;
		%feature("autodoc", "	:rtype: bool
") IsReadOnly;
		Standard_Boolean IsReadOnly ();
		%feature("compactdefaultargs") SetIsReadOnly;
		%feature("autodoc", "	:rtype: None
") SetIsReadOnly;
		void SetIsReadOnly ();
		%feature("compactdefaultargs") UnsetIsReadOnly;
		%feature("autodoc", "	:rtype: None
") UnsetIsReadOnly;
		void UnsetIsReadOnly ();
};


%extend CDM_MetaData {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_CDM_MetaData(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_CDM_MetaData::Handle_CDM_MetaData %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_CDM_MetaData;
class Handle_CDM_MetaData : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_CDM_MetaData();
        Handle_CDM_MetaData(const Handle_CDM_MetaData &aHandle);
        Handle_CDM_MetaData(const CDM_MetaData *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_CDM_MetaData DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_CDM_MetaData {
    CDM_MetaData* _get_reference() {
    return (CDM_MetaData*)$self->get();
    }
};

%extend Handle_CDM_MetaData {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend CDM_MetaData {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDM_Reference;
class CDM_Reference : public Standard_Transient {
	public:
		%feature("compactdefaultargs") FromDocument;
		%feature("autodoc", "	:rtype: Handle_CDM_Document
") FromDocument;
		Handle_CDM_Document FromDocument ();
		%feature("compactdefaultargs") ToDocument;
		%feature("autodoc", "	:rtype: Handle_CDM_Document
") ToDocument;
		Handle_CDM_Document ToDocument ();
		%feature("compactdefaultargs") ReferenceIdentifier;
		%feature("autodoc", "	:rtype: int
") ReferenceIdentifier;
		Standard_Integer ReferenceIdentifier ();
		%feature("compactdefaultargs") DocumentVersion;
		%feature("autodoc", "	:rtype: int
") DocumentVersion;
		Standard_Integer DocumentVersion ();
		%feature("compactdefaultargs") IsReadOnly;
		%feature("autodoc", "	:rtype: bool
") IsReadOnly;
		Standard_Boolean IsReadOnly ();
};


%extend CDM_Reference {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_CDM_Reference(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_CDM_Reference::Handle_CDM_Reference %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_CDM_Reference;
class Handle_CDM_Reference : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_CDM_Reference();
        Handle_CDM_Reference(const Handle_CDM_Reference &aHandle);
        Handle_CDM_Reference(const CDM_Reference *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_CDM_Reference DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_CDM_Reference {
    CDM_Reference* _get_reference() {
    return (CDM_Reference*)$self->get();
    }
};

%extend Handle_CDM_Reference {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend CDM_Reference {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDM_ReferenceIterator;
class CDM_ReferenceIterator {
	public:
		%feature("compactdefaultargs") CDM_ReferenceIterator;
		%feature("autodoc", "	:param aDocument:
	:type aDocument: Handle_CDM_Document &
	:rtype: None
") CDM_ReferenceIterator;
		 CDM_ReferenceIterator (const Handle_CDM_Document & aDocument);
		%feature("compactdefaultargs") More;
		%feature("autodoc", "	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: None
") Next;
		void Next ();
		%feature("compactdefaultargs") Document;
		%feature("autodoc", "	:rtype: Handle_CDM_Document
") Document;
		Handle_CDM_Document Document ();
		%feature("compactdefaultargs") ReferenceIdentifier;
		%feature("autodoc", "	:rtype: int
") ReferenceIdentifier;
		Standard_Integer ReferenceIdentifier ();
		%feature("compactdefaultargs") DocumentVersion;
		%feature("autodoc", "	* returns the Document Version in the reference.

	:rtype: int
") DocumentVersion;
		Standard_Integer DocumentVersion ();
};


%extend CDM_ReferenceIterator {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDM_COutMessageDriver;
class CDM_COutMessageDriver : public CDM_MessageDriver {
	public:
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	:param aString:
	:type aString: Standard_ExtString
	:rtype: None
") Write;
		void Write (const Standard_ExtString aString);
};


%extend CDM_COutMessageDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_CDM_COutMessageDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_CDM_COutMessageDriver::Handle_CDM_COutMessageDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_CDM_COutMessageDriver;
class Handle_CDM_COutMessageDriver : public Handle_CDM_MessageDriver {

    public:
        // constructors
        Handle_CDM_COutMessageDriver();
        Handle_CDM_COutMessageDriver(const Handle_CDM_COutMessageDriver &aHandle);
        Handle_CDM_COutMessageDriver(const CDM_COutMessageDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_CDM_COutMessageDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_CDM_COutMessageDriver {
    CDM_COutMessageDriver* _get_reference() {
    return (CDM_COutMessageDriver*)$self->get();
    }
};

%extend Handle_CDM_COutMessageDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend CDM_COutMessageDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDM_NullMessageDriver;
class CDM_NullMessageDriver : public CDM_MessageDriver {
	public:
		%feature("compactdefaultargs") CDM_NullMessageDriver;
		%feature("autodoc", "	:rtype: None
") CDM_NullMessageDriver;
		 CDM_NullMessageDriver ();
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	:param aString:
	:type aString: Standard_ExtString
	:rtype: None
") Write;
		void Write (const Standard_ExtString aString);
};


%extend CDM_NullMessageDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_CDM_NullMessageDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_CDM_NullMessageDriver::Handle_CDM_NullMessageDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_CDM_NullMessageDriver;
class Handle_CDM_NullMessageDriver : public Handle_CDM_MessageDriver {

    public:
        // constructors
        Handle_CDM_NullMessageDriver();
        Handle_CDM_NullMessageDriver(const Handle_CDM_NullMessageDriver &aHandle);
        Handle_CDM_NullMessageDriver(const CDM_NullMessageDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_CDM_NullMessageDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_CDM_NullMessageDriver {
    CDM_NullMessageDriver* _get_reference() {
    return (CDM_NullMessageDriver*)$self->get();
    }
};

%extend Handle_CDM_NullMessageDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend CDM_NullMessageDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
