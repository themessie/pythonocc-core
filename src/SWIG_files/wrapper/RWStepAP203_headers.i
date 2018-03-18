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
%{
#include<RWStepAP203_RWStartRequest.hxx>
#include<RWStepAP203_RWCcDesignCertification.hxx>
#include<RWStepAP203_RWCcDesignSecurityClassification.hxx>
#include<RWStepAP203_RWCcDesignDateAndTimeAssignment.hxx>
#include<RWStepAP203_RWStartWork.hxx>
#include<RWStepAP203_RWCcDesignSpecificationReference.hxx>
#include<RWStepAP203_RWCcDesignApproval.hxx>
#include<RWStepAP203_RWCcDesignContract.hxx>
#include<RWStepAP203_RWCcDesignPersonAndOrganizationAssignment.hxx>
#include<RWStepAP203_RWChange.hxx>
#include<RWStepAP203_RWChangeRequest.hxx>
#include<Standard.hxx>
#include<Standard_Byte.hxx>
#include<Standard_GUID.hxx>
#include<Standard_MultiplyDefined.hxx>
#include<Standard_Persistent.hxx>
#include<Standard_PCharacter.hxx>
#include<Standard_ImmutableObject.hxx>
#include<Standard_PErrorHandler.hxx>
#include<Standard_ExtCharacter.hxx>
#include<Standard_CString.hxx>
#include<Standard_NumericError.hxx>
#include<Standard_UUID.hxx>
#include<Standard_Assert.hxx>
#include<Standard_IStream.hxx>
#include<Standard_Macro.hxx>
#include<Standard_SStream.hxx>
#include<Standard_Integer.hxx>
#include<Standard_AbortiveTransaction.hxx>
#include<Standard_DomainError.hxx>
#include<Standard_NullValue.hxx>
#include<Standard_Underflow.hxx>
#include<Standard_PrimitiveTypes.hxx>
#include<Standard_Address.hxx>
#include<Standard_DimensionError.hxx>
#include<Standard_Time.hxx>
#include<Standard_OutOfRange.hxx>
#include<Standard_Stream.hxx>
#include<Standard_HandlerStatus.hxx>
#include<Standard_PExtCharacter.hxx>
#include<Standard_Overflow.hxx>
#include<Standard_NotImplemented.hxx>
#include<Standard_OStream.hxx>
#include<Standard_MMgrOpt.hxx>
#include<Standard_Size.hxx>
#include<Standard_ShortReal.hxx>
#include<Standard_Transient.hxx>
#include<Standard_Mutex.hxx>
#include<Standard_Atomic.hxx>
#include<Standard_Boolean.hxx>
#include<Standard_DefineException.hxx>
#include<Standard_math.hxx>
#include<Standard_Failure.hxx>
#include<Standard_MMgrRaw.hxx>
#include<Standard_ArrayStreamBuffer.hxx>
#include<Standard_DefineHandle.hxx>
#include<Standard_PByte.hxx>
#include<Standard_TypeMismatch.hxx>
#include<Standard_Version.hxx>
#include<Standard_LicenseNotFound.hxx>
#include<Standard_NoMoreObject.hxx>
#include<Standard_ExtString.hxx>
#include<Standard_NegativeValue.hxx>
#include<Standard_Type.hxx>
#include<Standard_Handle.hxx>
#include<Standard_MMgrTBBalloc.hxx>
#include<Standard_JmpBuf.hxx>
#include<Standard_ProgramError.hxx>
#include<Standard_NullObject.hxx>
#include<Standard_DefineAlloc.hxx>
#include<Standard_DivideByZero.hxx>
#include<Standard_TypeDef.hxx>
#include<Standard_DimensionMismatch.hxx>
#include<Standard_RangeError.hxx>
#include<Standard_OutOfMemory.hxx>
#include<Standard_ThreadId.hxx>
#include<Standard_MMgrRoot.hxx>
#include<Standard_ErrorHandler.hxx>
#include<Standard_NoSuchObject.hxx>
#include<Standard_TooManyUsers.hxx>
#include<Standard_LicenseError.hxx>
#include<Standard_Character.hxx>
#include<Standard_Real.hxx>
#include<Standard_ConstructionError.hxx>
#include<Standard_values.h>
#include<NCollection_Array1.hxx>
#include<NCollection_AccAllocator.hxx>
#include<NCollection_UtfString.hxx>
#include<NCollection_DefineHArray1.hxx>
#include<NCollection_Lerp.hxx>
#include<NCollection_DefineArray2.hxx>
#include<NCollection_DefineList.hxx>
#include<NCollection_DefineIndexedMap.hxx>
#include<NCollection_WinHeapAllocator.hxx>
#include<NCollection_Mat4.hxx>
#include<NCollection_AlignedAllocator.hxx>
#include<NCollection_DefineVector.hxx>
#include<NCollection_TypeDef.hxx>
#include<NCollection_LocalArray.hxx>
#include<NCollection_Comparator.hxx>
#include<NCollection_DefineMap.hxx>
#include<NCollection_HArray2.hxx>
#include<NCollection_TListNode.hxx>
#include<NCollection_DefineAlloc.hxx>
#include<NCollection_ListNode.hxx>
#include<NCollection_DefineDoubleMap.hxx>
#include<NCollection_DefineDataMap.hxx>
#include<NCollection_Vector.hxx>
#include<NCollection_UtfIterator.hxx>
#include<NCollection_DefineSequence.hxx>
#include<NCollection_HSequence.hxx>
#include<NCollection_Vec3.hxx>
#include<NCollection_UBTree.hxx>
#include<NCollection_DefineHArray2.hxx>
#include<NCollection_Vec4.hxx>
#include<NCollection_Handle.hxx>
#include<NCollection_CellFilter.hxx>
#include<NCollection_HArray1.hxx>
#include<NCollection_BaseList.hxx>
#include<NCollection_SparseArray.hxx>
#include<NCollection_DefineArray1.hxx>
#include<NCollection_BaseVector.hxx>
#include<NCollection_IncAllocator.hxx>
#include<NCollection_BaseAllocator.hxx>
#include<NCollection_SparseArrayBase.hxx>
#include<NCollection_Vec2.hxx>
#include<NCollection_List.hxx>
#include<NCollection_TListIterator.hxx>
#include<NCollection_BaseMap.hxx>
#include<NCollection_Buffer.hxx>
#include<NCollection_StdAllocator.hxx>
#include<NCollection_DefineHSequence.hxx>
#include<NCollection_UBTreeFiller.hxx>
#include<NCollection_DefineIndexedDataMap.hxx>
#include<NCollection_DefaultHasher.hxx>
#include<NCollection_String.hxx>
#include<NCollection_Sequence.hxx>
#include<NCollection_Array2.hxx>
#include<NCollection_Shared.hxx>
#include<NCollection_HeapAllocator.hxx>
#include<StepData.hxx>
#include<StepData_GlobalNodeOfWriterLib.hxx>
#include<StepData_GeneralModule.hxx>
#include<StepData_SelectArrReal.hxx>
#include<StepData_FieldList1.hxx>
#include<StepData_FieldList.hxx>
#include<StepData_SelectMember.hxx>
#include<StepData_DescrGeneral.hxx>
#include<StepData_StepReaderTool.hxx>
#include<StepData_Array1OfField.hxx>
#include<StepData_Protocol.hxx>
#include<StepData_FileRecognizer.hxx>
#include<StepData_StepWriter.hxx>
#include<StepData_Simple.hxx>
#include<StepData_WriterLib.hxx>
#include<StepData_Described.hxx>
#include<StepData_SelectInt.hxx>
#include<StepData_SelectType.hxx>
#include<StepData_FieldListN.hxx>
#include<StepData_UndefinedEntity.hxx>
#include<StepData_HeaderTool.hxx>
#include<StepData_Logical.hxx>
#include<StepData_HArray1OfField.hxx>
#include<StepData_SelectNamed.hxx>
#include<StepData_ESDescr.hxx>
#include<StepData_NodeOfWriterLib.hxx>
#include<StepData_DescrReadWrite.hxx>
#include<StepData_ReadWriteModule.hxx>
#include<StepData_DescrProtocol.hxx>
#include<StepData_ECDescr.hxx>
#include<StepData_PDescr.hxx>
#include<StepData_StepDumper.hxx>
#include<StepData_FieldListD.hxx>
#include<StepData_Field.hxx>
#include<StepData_Plex.hxx>
#include<StepData_StepReaderData.hxx>
#include<StepData_EDescr.hxx>
#include<StepData_SelectReal.hxx>
#include<StepData_FreeFormEntity.hxx>
#include<StepData_DefaultGeneral.hxx>
#include<StepData_StepModel.hxx>
#include<StepData_FileProtocol.hxx>
#include<StepData_EnumTool.hxx>
#include<Interface_CheckFailure.hxx>
#include<Interface_EntityList.hxx>
#include<Interface_ReportEntity.hxx>
#include<Interface_ReaderLib.hxx>
#include<Interface_HArray1OfHAsciiString.hxx>
#include<Interface_GTool.hxx>
#include<Interface_CopyTool.hxx>
#include<Interface_FileParameter.hxx>
#include<Interface_InterfaceModel.hxx>
#include<Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include<Interface_VectorOfFileParameter.hxx>
#include<Interface_Version.hxx>
#include<Interface_GlobalNodeOfGeneralLib.hxx>
#include<Interface_Array1OfFileParameter.hxx>
#include<Interface_Translates.hxx>
#include<Interface_ParamList.hxx>
#include<Interface_NodeOfGeneralLib.hxx>
#include<Interface_CopyMap.hxx>
#include<Interface_GraphContent.hxx>
#include<Interface_GeneralModule.hxx>
#include<Interface_HGraph.hxx>
#include<Interface_Statics.hxx>
#include<Interface_ParamType.hxx>
#include<Interface_Category.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_IntVal.hxx>
#include<Interface_GeneralLib.hxx>
#include<Interface_Macros.hxx>
#include<Interface_Array1OfHAsciiString.hxx>
#include<Interface_Graph.hxx>
#include<Interface_CopyControl.hxx>
#include<Interface_ValueSatisfies.hxx>
#include<Interface_FloatWriter.hxx>
#include<Interface_CheckTool.hxx>
#include<Interface_CheckIterator.hxx>
#include<Interface_InterfaceMismatch.hxx>
#include<Interface_LineBuffer.hxx>
#include<Interface_SignLabel.hxx>
#include<Interface_Check.hxx>
#include<Interface_SequenceOfCheck.hxx>
#include<Interface_EntityIterator.hxx>
#include<Interface_MapAsciiStringHasher.hxx>
#include<Interface_GlobalNodeOfReaderLib.hxx>
#include<Interface_ParamSet.hxx>
#include<Interface_Protocol.hxx>
#include<Interface_InterfaceError.hxx>
#include<Interface_ShareFlags.hxx>
#include<Interface_DataState.hxx>
#include<Interface_UndefinedContent.hxx>
#include<Interface_NodeOfReaderLib.hxx>
#include<Interface_BitMap.hxx>
#include<Interface_CheckStatus.hxx>
#include<Interface_FileReaderTool.hxx>
#include<Interface_IntList.hxx>
#include<Interface_HSequenceOfCheck.hxx>
#include<Interface_DataMapOfTransientInteger.hxx>
#include<Interface_Static.hxx>
#include<Interface_MSG.hxx>
#include<Interface_SignType.hxx>
#include<Interface_IndexedMapOfAsciiString.hxx>
#include<Interface_FileReaderData.hxx>
#include<Interface_TypedValue.hxx>
#include<Interface_EntityCluster.hxx>
#include<Interface_StaticSatisfies.hxx>
#include<Interface_ReaderModule.hxx>
#include<StepAP203_Array1OfPersonOrganizationItem.hxx>
#include<StepAP203_Array1OfChangeRequestItem.hxx>
#include<StepAP203_Array1OfDateTimeItem.hxx>
#include<StepAP203_ClassifiedItem.hxx>
#include<StepAP203_CcDesignPersonAndOrganizationAssignment.hxx>
#include<StepAP203_HArray1OfSpecifiedItem.hxx>
#include<StepAP203_WorkItem.hxx>
#include<StepAP203_HArray1OfPersonOrganizationItem.hxx>
#include<StepAP203_Change.hxx>
#include<StepAP203_HArray1OfChangeRequestItem.hxx>
#include<StepAP203_Array1OfStartRequestItem.hxx>
#include<StepAP203_Array1OfCertifiedItem.hxx>
#include<StepAP203_DateTimeItem.hxx>
#include<StepAP203_PersonOrganizationItem.hxx>
#include<StepAP203_ChangeRequest.hxx>
#include<StepAP203_Array1OfWorkItem.hxx>
#include<StepAP203_CertifiedItem.hxx>
#include<StepAP203_HArray1OfContractedItem.hxx>
#include<StepAP203_HArray1OfCertifiedItem.hxx>
#include<StepAP203_CcDesignSecurityClassification.hxx>
#include<StepAP203_ChangeRequestItem.hxx>
#include<StepAP203_StartRequest.hxx>
#include<StepAP203_StartRequestItem.hxx>
#include<StepAP203_HArray1OfStartRequestItem.hxx>
#include<StepAP203_CcDesignDateAndTimeAssignment.hxx>
#include<StepAP203_Array1OfSpecifiedItem.hxx>
#include<StepAP203_CcDesignCertification.hxx>
#include<StepAP203_CcDesignContract.hxx>
#include<StepAP203_StartWork.hxx>
#include<StepAP203_ApprovedItem.hxx>
#include<StepAP203_CcDesignSpecificationReference.hxx>
#include<StepAP203_Array1OfApprovedItem.hxx>
#include<StepAP203_ContractedItem.hxx>
#include<StepAP203_CcDesignApproval.hxx>
#include<StepAP203_HArray1OfDateTimeItem.hxx>
#include<StepAP203_HArray1OfApprovedItem.hxx>
#include<StepAP203_SpecifiedItem.hxx>
#include<StepAP203_HArray1OfWorkItem.hxx>
#include<StepAP203_HArray1OfClassifiedItem.hxx>
#include<StepAP203_Array1OfContractedItem.hxx>
#include<StepAP203_Array1OfClassifiedItem.hxx>
#include<Message.hxx>
#include<Message_Msg.hxx>
#include<Message_Status.hxx>
#include<Message_Gravity.hxx>
#include<Message_PrinterOStream.hxx>
#include<Message_Report.hxx>
#include<Message_Alert.hxx>
#include<Message_ListOfMsg.hxx>
#include<Message_ExecStatus.hxx>
#include<Message_ProgressIndicator.hxx>
#include<Message_Algorithm.hxx>
#include<Message_SequenceOfPrinters.hxx>
#include<Message_ProgressSentry.hxx>
#include<Message_MsgFile.hxx>
#include<Message_Printer.hxx>
#include<Message_SequenceOfProgressScale.hxx>
#include<Message_Messenger.hxx>
#include<Message_StatusType.hxx>
#include<Message_ProgressScale.hxx>
#include<Message_HArrayOfMsg.hxx>
#include<Message_ListOfAlert.hxx>
#include<Message_ListIteratorOfListOfMsg.hxx>
#include<StepBasic_Action.hxx>
#include<StepBasic_ContractType.hxx>
#include<StepBasic_SiUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_Approval.hxx>
#include<StepBasic_PersonalAddress.hxx>
#include<StepBasic_VolumeUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndAreaUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx>
#include<StepBasic_EulerAngles.hxx>
#include<StepBasic_Array1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_MeasureValueMember.hxx>
#include<StepBasic_DerivedUnitElement.hxx>
#include<StepBasic_Array1OfDerivedUnitElement.hxx>
#include<StepBasic_CharacterizedObject.hxx>
#include<StepBasic_Source.hxx>
#include<StepBasic_RatioMeasureWithUnit.hxx>
#include<StepBasic_ProductRelatedProductCategory.hxx>
#include<StepBasic_ProductCategoryRelationship.hxx>
#include<StepBasic_PersonAndOrganization.hxx>
#include<StepBasic_ActionRequestAssignment.hxx>
#include<StepBasic_ProductDefinitionWithAssociatedDocuments.hxx>
#include<StepBasic_ExternalIdentificationAssignment.hxx>
#include<StepBasic_Product.hxx>
#include<StepBasic_ProductContext.hxx>
#include<StepBasic_ApplicationContext.hxx>
#include<StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx>
#include<StepBasic_ActionAssignment.hxx>
#include<StepBasic_ConversionBasedUnitAndTimeUnit.hxx>
#include<StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx>
#include<StepBasic_IdentificationRole.hxx>
#include<StepBasic_ProductDefinitionFormation.hxx>
#include<StepBasic_ProductDefinitionEffectivity.hxx>
#include<StepBasic_DocumentRelationship.hxx>
#include<StepBasic_Contract.hxx>
#include<StepBasic_DimensionalExponents.hxx>
#include<StepBasic_DocumentType.hxx>
#include<StepBasic_OrganizationalAddress.hxx>
#include<StepBasic_NamedUnit.hxx>
#include<StepBasic_DocumentRepresentationType.hxx>
#include<StepBasic_ProductConceptContext.hxx>
#include<StepBasic_HArray1OfOrganization.hxx>
#include<StepBasic_OrganizationRole.hxx>
#include<StepBasic_RoleAssociation.hxx>
#include<StepBasic_ApprovalRole.hxx>
#include<StepBasic_DocumentProductAssociation.hxx>
#include<StepBasic_SecurityClassification.hxx>
#include<StepBasic_DigitalDocument.hxx>
#include<StepBasic_DateTimeRole.hxx>
#include<StepBasic_ConversionBasedUnitAndVolumeUnit.hxx>
#include<StepBasic_HArray1OfProductDefinition.hxx>
#include<StepBasic_PersonAndOrganizationAssignment.hxx>
#include<StepBasic_SiUnit.hxx>
#include<StepBasic_SolidAngleUnit.hxx>
#include<StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx>
#include<StepBasic_ProductDefinitionContext.hxx>
#include<StepBasic_DateAndTimeAssignment.hxx>
#include<StepBasic_ApplicationProtocolDefinition.hxx>
#include<StepBasic_DocumentProductEquivalence.hxx>
#include<StepBasic_IdentificationAssignment.hxx>
#include<StepBasic_UncertaintyMeasureWithUnit.hxx>
#include<StepBasic_PlaneAngleUnit.hxx>
#include<StepBasic_Array1OfProductContext.hxx>
#include<StepBasic_HArray1OfDerivedUnitElement.hxx>
#include<StepBasic_DerivedUnit.hxx>
#include<StepBasic_GroupRelationship.hxx>
#include<StepBasic_VersionedActionRequest.hxx>
#include<StepBasic_OrdinalDate.hxx>
#include<StepBasic_SiUnitAndLengthUnit.hxx>
#include<StepBasic_RatioUnit.hxx>
#include<StepBasic_ProductDefinitionOrReference.hxx>
#include<StepBasic_ConversionBasedUnitAndMassUnit.hxx>
#include<StepBasic_ProductDefinitionReference.hxx>
#include<StepBasic_DateAndTime.hxx>
#include<StepBasic_SiUnitAndRatioUnit.hxx>
#include<StepBasic_Array1OfApproval.hxx>
#include<StepBasic_DocumentReference.hxx>
#include<StepBasic_SizeMember.hxx>
#include<StepBasic_SiUnitAndTimeUnit.hxx>
#include<StepBasic_HArray1OfPerson.hxx>
#include<StepBasic_CalendarDate.hxx>
#include<StepBasic_Certification.hxx>
#include<StepBasic_PersonOrganizationSelect.hxx>
#include<StepBasic_ApprovalStatus.hxx>
#include<StepBasic_SizeSelect.hxx>
#include<StepBasic_AheadOrBehind.hxx>
#include<StepBasic_SiUnitAndSolidAngleUnit.hxx>
#include<StepBasic_PhysicallyModeledProductDefinition.hxx>
#include<StepBasic_ApplicationContextElement.hxx>
#include<StepBasic_SiUnitAndAreaUnit.hxx>
#include<StepBasic_SolidAngleMeasureWithUnit.hxx>
#include<StepBasic_ApprovalRelationship.hxx>
#include<StepBasic_ExternalSource.hxx>
#include<StepBasic_ConversionBasedUnitAndLengthUnit.hxx>
#include<StepBasic_ConversionBasedUnit.hxx>
#include<StepBasic_ProductOrFormationOrDefinition.hxx>
#include<StepBasic_MechanicalContext.hxx>
#include<StepBasic_WeekOfYearAndDayDate.hxx>
#include<StepBasic_ProductDefinition.hxx>
#include<StepBasic_DateAssignment.hxx>
#include<StepBasic_HArray1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_Person.hxx>
#include<StepBasic_PlaneAngleMeasureWithUnit.hxx>
#include<StepBasic_TimeMeasureWithUnit.hxx>
#include<StepBasic_MassUnit.hxx>
#include<StepBasic_ApprovalPersonOrganization.hxx>
#include<StepBasic_Address.hxx>
#include<StepBasic_Unit.hxx>
#include<StepBasic_SecurityClassificationAssignment.hxx>
#include<StepBasic_LengthUnit.hxx>
#include<StepBasic_Array1OfProductDefinition.hxx>
#include<StepBasic_SiUnitName.hxx>
#include<StepBasic_AreaUnit.hxx>
#include<StepBasic_LengthMeasureWithUnit.hxx>
#include<StepBasic_GeneralProperty.hxx>
#include<StepBasic_HArray1OfApproval.hxx>
#include<StepBasic_ThermodynamicTemperatureUnit.hxx>
#include<StepBasic_CertificationAssignment.hxx>
#include<StepBasic_SourceItem.hxx>
#include<StepBasic_Effectivity.hxx>
#include<StepBasic_Array1OfDocument.hxx>
#include<StepBasic_HArray1OfNamedUnit.hxx>
#include<StepBasic_Array1OfOrganization.hxx>
#include<StepBasic_SiPrefix.hxx>
#include<StepBasic_ConversionBasedUnitAndRatioUnit.hxx>
#include<StepBasic_DocumentUsageConstraint.hxx>
#include<StepBasic_ActionRequestSolution.hxx>
#include<StepBasic_DateTimeSelect.hxx>
#include<StepBasic_CertificationType.hxx>
#include<StepBasic_ApprovalAssignment.hxx>
#include<StepBasic_TimeUnit.hxx>
#include<StepBasic_HArray1OfProductContext.hxx>
#include<StepBasic_ObjectRole.hxx>
#include<StepBasic_PersonAndOrganizationRole.hxx>
#include<StepBasic_ApprovalDateTime.hxx>
#include<StepBasic_CoordinatedUniversalTimeOffset.hxx>
#include<StepBasic_ProductType.hxx>
#include<StepBasic_SiUnitAndVolumeUnit.hxx>
#include<StepBasic_SecurityClassificationLevel.hxx>
#include<StepBasic_RoleSelect.hxx>
#include<StepBasic_DesignContext.hxx>
#include<StepBasic_MassMeasureWithUnit.hxx>
#include<StepBasic_ActionMethod.hxx>
#include<StepBasic_Organization.hxx>
#include<StepBasic_GroupAssignment.hxx>
#include<StepBasic_OrganizationAssignment.hxx>
#include<StepBasic_ProductDefinitionRelationship.hxx>
#include<StepBasic_HArray1OfDocument.hxx>
#include<StepBasic_Date.hxx>
#include<StepBasic_ProductDefinitionFormationRelationship.hxx>
#include<StepBasic_ContractAssignment.hxx>
#include<StepBasic_Array1OfProduct.hxx>
#include<StepBasic_MeasureWithUnit.hxx>
#include<StepBasic_Document.hxx>
#include<StepBasic_EffectivityAssignment.hxx>
#include<StepBasic_Array1OfNamedUnit.hxx>
#include<StepBasic_DateRole.hxx>
#include<StepBasic_LocalTime.hxx>
#include<StepBasic_Array1OfPerson.hxx>
#include<StepBasic_Group.hxx>
#include<StepBasic_SiUnitAndMassUnit.hxx>
#include<StepBasic_HArray1OfProduct.hxx>
#include<StepBasic_DocumentFile.hxx>
#include<StepBasic_ExternallyDefinedItem.hxx>
#include<StepBasic_NameAssignment.hxx>
#include<StepBasic_ProductCategory.hxx>
#include<StepData.hxx>
#include<StepData_GlobalNodeOfWriterLib.hxx>
#include<StepData_GeneralModule.hxx>
#include<StepData_SelectArrReal.hxx>
#include<StepData_FieldList1.hxx>
#include<StepData_FieldList.hxx>
#include<StepData_SelectMember.hxx>
#include<StepData_DescrGeneral.hxx>
#include<StepData_StepReaderTool.hxx>
#include<StepData_Array1OfField.hxx>
#include<StepData_Protocol.hxx>
#include<StepData_FileRecognizer.hxx>
#include<StepData_StepWriter.hxx>
#include<StepData_Simple.hxx>
#include<StepData_WriterLib.hxx>
#include<StepData_Described.hxx>
#include<StepData_SelectInt.hxx>
#include<StepData_SelectType.hxx>
#include<StepData_FieldListN.hxx>
#include<StepData_UndefinedEntity.hxx>
#include<StepData_HeaderTool.hxx>
#include<StepData_Logical.hxx>
#include<StepData_HArray1OfField.hxx>
#include<StepData_SelectNamed.hxx>
#include<StepData_ESDescr.hxx>
#include<StepData_NodeOfWriterLib.hxx>
#include<StepData_DescrReadWrite.hxx>
#include<StepData_ReadWriteModule.hxx>
#include<StepData_DescrProtocol.hxx>
#include<StepData_ECDescr.hxx>
#include<StepData_PDescr.hxx>
#include<StepData_StepDumper.hxx>
#include<StepData_FieldListD.hxx>
#include<StepData_Field.hxx>
#include<StepData_Plex.hxx>
#include<StepData_StepReaderData.hxx>
#include<StepData_EDescr.hxx>
#include<StepData_SelectReal.hxx>
#include<StepData_FreeFormEntity.hxx>
#include<StepData_DefaultGeneral.hxx>
#include<StepData_StepModel.hxx>
#include<StepData_FileProtocol.hxx>
#include<StepData_EnumTool.hxx>
#include<TColgp_Array2OfXYZ.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<TColgp_Array1OfCirc2d.hxx>
#include<TColgp_Array1OfLin2d.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TColgp_HArray2OfLin2d.hxx>
#include<TColgp_HArray2OfVec.hxx>
#include<TColgp_HSequenceOfXY.hxx>
#include<TColgp_SequenceOfVec2d.hxx>
#include<TColgp_HArray1OfVec.hxx>
#include<TColgp_HArray2OfCirc2d.hxx>
#include<TColgp_HArray2OfPnt2d.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<TColgp_HArray2OfDir2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_HSequenceOfPnt2d.hxx>
#include<TColgp_HArray1OfXY.hxx>
#include<TColgp_HArray1OfCirc2d.hxx>
#include<TColgp_Array1OfDir2d.hxx>
#include<TColgp_SequenceOfDir2d.hxx>
#include<TColgp_Array2OfVec2d.hxx>
#include<TColgp_Array2OfXY.hxx>
#include<TColgp_Array2OfLin2d.hxx>
#include<TColgp_HSequenceOfPnt.hxx>
#include<TColgp_HSequenceOfXYZ.hxx>
#include<TColgp_HArray1OfPnt2d.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_Array1OfXYZ.hxx>
#include<TColgp_HSequenceOfVec2d.hxx>
#include<TColgp_Array2OfPnt2d.hxx>
#include<TColgp_HArray2OfDir.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColgp_SequenceOfAx1.hxx>
#include<TColgp_SequenceOfDir.hxx>
#include<TColgp_HSequenceOfDir2d.hxx>
#include<TColgp_HArray1OfDir.hxx>
#include<TColgp_HArray2OfPnt.hxx>
#include<TColgp_HArray1OfLin2d.hxx>
#include<TColgp_HArray1OfPnt.hxx>
#include<TColgp_HArray2OfVec2d.hxx>
#include<TColgp_HArray2OfXYZ.hxx>
#include<TColgp_SequenceOfArray1OfPnt2d.hxx>
#include<TColgp_HSequenceOfVec.hxx>
#include<TColgp_HSequenceOfDir.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_HArray2OfXY.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColgp_Array2OfVec.hxx>
#include<TColgp_Array2OfCirc2d.hxx>
#include<TColgp_HArray1OfXYZ.hxx>
#include<TColgp_Array1OfXY.hxx>
#include<TColgp_Array2OfDir2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_SequenceOfXYZ.hxx>
#include<TColgp_HArray1OfVec2d.hxx>
#include<TColgp_HArray1OfDir2d.hxx>
#include<TColgp_Array2OfDir.hxx>
#include<TColStd_Array2OfBoolean.hxx>
#include<TColStd_HArray1OfExtendedString.hxx>
#include<TColStd_HArray2OfBoolean.hxx>
#include<TColStd_HArray1OfCharacter.hxx>
#include<TColStd_HSequenceOfHAsciiString.hxx>
#include<TColStd_HArray1OfBoolean.hxx>
#include<TColStd_DataMapOfIntegerTransient.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TColStd_SequenceOfAddress.hxx>
#include<TColStd_DataMapOfIntegerInteger.hxx>
#include<TColStd_HArray2OfTransient.hxx>
#include<TColStd_Array2OfCharacter.hxx>
#include<TColStd_HArray1OfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfTransient.hxx>
#include<TColStd_IndexedMapOfTransient.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_HSequenceOfTransient.hxx>
#include<TColStd_HSequenceOfAsciiString.hxx>
#include<TColStd_MapIteratorOfPackedMapOfInteger.hxx>
#include<TColStd_MapOfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<TColStd_SequenceOfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfTransient.hxx>
#include<TColStd_Array1OfByte.hxx>
#include<TColStd_ListOfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfReal.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColStd_MapOfTransient.hxx>
#include<TColStd_ListOfTransient.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerReal.hxx>
#include<TColStd_HArray1OfReal.hxx>
#include<TColStd_SequenceOfTransient.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<TColStd_Array1OfBoolean.hxx>
#include<TColStd_SequenceOfBoolean.hxx>
#include<TColStd_HArray1OfInteger.hxx>
#include<TColStd_DataMapOfTransientTransient.hxx>
#include<TColStd_Array1OfListOfInteger.hxx>
#include<TColStd_Array2OfInteger.hxx>
#include<TColStd_PackedMapOfInteger.hxx>
#include<TColStd_SequenceOfHExtendedString.hxx>
#include<TColStd_IndexedDataMapOfStringString.hxx>
#include<TColStd_ListIteratorOfListOfInteger.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TColStd_MapOfReal.hxx>
#include<TColStd_HSequenceOfHExtendedString.hxx>
#include<TColStd_MapIteratorOfMapOfAsciiString.hxx>
#include<TColStd_ListOfReal.hxx>
#include<TColStd_MapIntegerHasher.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array2OfTransient.hxx>
#include<TColStd_DataMapOfIntegerReal.hxx>
#include<TColStd_DataMapOfIntegerListOfInteger.hxx>
#include<TColStd_HArray2OfReal.hxx>
#include<TColStd_HArray1OfListOfInteger.hxx>
#include<TColStd_HPackedMapOfInteger.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfAsciiString.hxx>
#include<TColStd_MapTransientHasher.hxx>
#include<TColStd_HSequenceOfInteger.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_HArray1OfTransient.hxx>
#include<TColStd_HArray2OfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedDataMapOfTransientTransient.hxx>
#include<TColStd_Array1OfTransient.hxx>
#include<TColStd_HSequenceOfExtendedString.hxx>
#include<TColStd_SequenceOfHAsciiString.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfStringInteger.hxx>
#include<TColStd_Array1OfCharacter.hxx>
#include<TColStd_HArray2OfCharacter.hxx>
#include<TColStd_Array1OfAsciiString.hxx>
#include<TColStd_MapOfAsciiString.hxx>
#include<TColStd_MapRealHasher.hxx>
#include<TColStd_DataMapOfStringInteger.hxx>
#include<TColStd_IndexedMapOfReal.hxx>
#include<TColStd_HArray1OfByte.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerInteger.hxx>
#include<TColStd_HSequenceOfReal.hxx>
#include<TColStd_Array1OfExtendedString.hxx>
#include<TColStd_DataMapOfAsciiStringInteger.hxx>
#include<TColStd_ListIteratorOfListOfReal.hxx>
#include<TCollection.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_Side.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_AsciiString.hxx>
#include<Storage.hxx>
#include<Storage_BucketOfPersistent.hxx>
#include<Storage_SolveMode.hxx>
#include<Storage_RootData.hxx>
#include<Storage_HArrayOfSchema.hxx>
#include<Storage_TypeData.hxx>
#include<Storage_Root.hxx>
#include<Storage_PType.hxx>
#include<Storage_Error.hxx>
#include<Storage_Schema.hxx>
#include<Storage_PArray.hxx>
#include<Storage_StreamTypeMismatchError.hxx>
#include<Storage_StreamExtCharParityError.hxx>
#include<Storage_DataMapIteratorOfMapOfPers.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Storage_ArrayOfCallBack.hxx>
#include<Storage_MapOfPers.hxx>
#include<Storage_DefaultCallBack.hxx>
#include<Storage_HPArray.hxx>
#include<Storage_Macros.hxx>
#include<Storage_OpenMode.hxx>
#include<Storage_HSeqOfRoot.hxx>
#include<Storage_TypedCallBack.hxx>
#include<Storage_StreamFormatError.hxx>
#include<Storage_StreamModeError.hxx>
#include<Storage_StreamReadError.hxx>
#include<Storage_CallBack.hxx>
#include<Storage_Position.hxx>
#include<Storage_HArrayOfCallBack.hxx>
#include<Storage_MapOfCallBack.hxx>
#include<Storage_StreamWriteError.hxx>
#include<Storage_DataMapIteratorOfMapOfCallBack.hxx>
#include<Storage_HeaderData.hxx>
#include<Storage_ArrayOfSchema.hxx>
#include<Storage_SeqOfRoot.hxx>
#include<Storage_BaseDriver.hxx>
#include<Storage_InternalData.hxx>
#include<Storage_Data.hxx>
%};
%import Standard.i
%import NCollection.i
%import StepData.i
%import Interface.i
%import StepAP203.i
