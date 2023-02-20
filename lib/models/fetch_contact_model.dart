class FetchContactsModel {
  late int? contactID;
  late String? contactCode;
  late String? title;
  late String? firstName;
  late String? middleName;
  late String? lastName;
  late String? contactName;
  late String? contactIdentifier;
  late int? accountID;
  late String? contactCategoryID;
  late String? departmentName;
  late String? designation;
  late String? rolesAndResponsibilities;
  late String? reportingManager;
  late String? reportingContactID;
  late String? mobileNumber;
  late String? alternateMobileNumber;
  late String? workPhone;
  late String? residencePhone;
  late String? email;
  late String? alternateEmail;
  late String? addressLine1;
  late String? addressLine2;
  late String? addressLine3;
  late String? city;
  late String? state;
  late String? country;
  late String? pIN;
  late String? gPSCoordinates;
  late String? linkedIn;
  late String? pastAccounts;
  late String? pastDesignations;
  late String? dateOfBirth;
  late bool? remindBirthday;
  late String? contactAlignmentID;
  late String? remarks;
  late String? referenceHistory;
  late bool? isPrimaryContact;
  late String? tags;
  late String? freeTextField1;
  late String? freeTextField2;
  late String? freeTextField3;
  late String? companyName;
  late String? taxPayerIdentificationNumber;
  late String? socialSecurityNumber;
  late String? passportNumber;
  late String? drivingLicenseNumber;
  late String? voterIDCardNumber;
  late String? marketingContactID;
  late String? createdBy;
  late String? createdOn;
  late String? modifiedBy;
  late String? modifiedOn;
  late String? deviceIdentifier;
  late String? referenceIdentifier;
  late bool? isActive;
  late String? uid;
  late int? appUserID;
  late String? assignedByAppUserID;
  late int? appUserGroupID;
  late bool? isArchived;
  late bool? isDeleted;
  late String? leadQualificationID;
  late String? accountName;
  late String? contactCategoryName;
  late String? accountLocation;
  late String? reportingContactName;
  late String? contactAlignmentName;
  late String? appUserName;
  late String? assignedByAppUserName;
  late String? appUserGroupName;
  late String? iD;
  late String? userLoginName;
  late String? deviceAndLocation;
  late String? userInput;
  late String? appUserUid;
  late String? appUserGroupUid;
  late String? createdForUser;
  late int? rowNum;

  FetchContactsModel(
      {
       this.contactID,
      required this.accountName,
      required this.contactName,
      this.contactCode,
      this.title,
      this.firstName,
      this.middleName,
      this.lastName,
      this.contactIdentifier,
      this.accountID,
      this.contactCategoryID,
      this.departmentName,
      this.designation,
      this.rolesAndResponsibilities,
      this.reportingManager,
      this.reportingContactID,
      this.mobileNumber,
      this.alternateMobileNumber,
      this.workPhone,
      this.residencePhone,
      this.email,
      this.alternateEmail,
      this.addressLine1,
      this.addressLine2,
      this.addressLine3,
      this.city,
      this.state,
      this.country,
      this.pIN,
      this.gPSCoordinates,
      this.linkedIn,
      this.pastAccounts,
      this.pastDesignations,
      this.dateOfBirth,
      this.remindBirthday,
      this.contactAlignmentID,
      this.remarks,
      this.referenceHistory,
      this.isPrimaryContact,
      this.tags,
      this.freeTextField1,
      this.freeTextField2,
      this.freeTextField3,
      this.companyName,
      this.taxPayerIdentificationNumber,
      this.socialSecurityNumber,
      this.passportNumber,
      this.drivingLicenseNumber,
      this.voterIDCardNumber,
      this.marketingContactID,
      this.createdBy,
      this.createdOn,
      this.modifiedBy,
      this.modifiedOn,
      this.deviceIdentifier,
      this.referenceIdentifier,
      this.isActive,
      this.uid,
      this.appUserID,
      this.assignedByAppUserID,
      this.appUserGroupID,
      this.isArchived,
      this.isDeleted,
      this.leadQualificationID,
      this.contactCategoryName,
      this.accountLocation,
      this.reportingContactName,
      this.contactAlignmentName,
      this.appUserName,
      this.assignedByAppUserName,
      this.appUserGroupName,
      this.iD,
      this.userLoginName,
      this.deviceAndLocation,
      this.userInput,
      this.appUserUid,
      this.appUserGroupUid,
      this.createdForUser,
      this.rowNum});

  FetchContactsModel.fromJson(Map<String, dynamic> json) {
    contactID = json['ContactID'];
    contactCode = json['ContactCode'];
    title = json['Title'];
    firstName = json['FirstName'];
    middleName = json['MiddleName'];
    lastName = json['LastName'];
    contactName = json['ContactName'];
    contactIdentifier = json['ContactIdentifier'];
    accountID = json['AccountID'];
    contactCategoryID = json['ContactCategoryID'];
    departmentName = json['DepartmentName'];
    designation = json['Designation'];
    rolesAndResponsibilities = json['RolesAndResponsibilities'];
    reportingManager = json['ReportingManager'];
    reportingContactID = json['ReportingContactID'];
    mobileNumber = json['MobileNumber'];
    alternateMobileNumber = json['AlternateMobileNumber'];
    workPhone = json['WorkPhone'];
    residencePhone = json['ResidencePhone'];
    email = json['Email'];
    alternateEmail = json['AlternateEmail'];
    addressLine1 = json['AddressLine1'];
    addressLine2 = json['AddressLine2'];
    addressLine3 = json['AddressLine3'];
    city = json['City'];
    state = json['State'];
    country = json['Country'];
    pIN = json['PIN'];
    gPSCoordinates = json['GPSCoordinates'];
    linkedIn = json['LinkedIn'];
    pastAccounts = json['PastAccounts'];
    pastDesignations = json['PastDesignations'];
    dateOfBirth = json['DateOfBirth'];
    remindBirthday = json['RemindBirthday'];
    contactAlignmentID = json['ContactAlignmentID'];
    remarks = json['Remarks'];
    referenceHistory = json['ReferenceHistory'];
    isPrimaryContact = json['IsPrimaryContact'];
    tags = json['Tags'];
    freeTextField1 = json['FreeTextField1'];
    freeTextField2 = json['FreeTextField2'];
    freeTextField3 = json['FreeTextField3'];
    companyName = json['CompanyName'];
    taxPayerIdentificationNumber = json['TaxPayerIdentificationNumber'];
    socialSecurityNumber = json['SocialSecurityNumber'];
    passportNumber = json['PassportNumber'];
    drivingLicenseNumber = json['DrivingLicenseNumber'];
    voterIDCardNumber = json['VoterIDCardNumber'];
    marketingContactID = json['MarketingContactID'];
    createdBy = json['CreatedBy'];
    createdOn = json['CreatedOn'];
    modifiedBy = json['ModifiedBy'];
    modifiedOn = json['ModifiedOn'];
    deviceIdentifier = json['DeviceIdentifier'];
    referenceIdentifier = json['ReferenceIdentifier'];
    isActive = json['IsActive'];
    uid = json['Uid'];
    appUserID = json['AppUserID'];
    assignedByAppUserID = json['AssignedByAppUserID'];
    appUserGroupID = json['AppUserGroupID'];
    isArchived = json['IsArchived'];
    isDeleted = json['IsDeleted'];
    leadQualificationID = json['LeadQualificationID'];
    accountName = json['AccountName'];
    contactCategoryName = json['ContactCategoryName'];
    accountLocation = json['AccountLocation'];
    reportingContactName = json['ReportingContactName'];
    contactAlignmentName = json['ContactAlignmentName'];
    appUserName = json['AppUserName'];
    assignedByAppUserName = json['AssignedByAppUserName'];
    appUserGroupName = json['AppUserGroupName'];
    iD = json['ID'];
    userLoginName = json['UserLoginName'];
    deviceAndLocation = json['DeviceAndLocation'];
    userInput = json['UserInput'];
    appUserUid = json['AppUserUid'];
    appUserGroupUid = json['AppUserGroupUid'];
    createdForUser = json['CreatedForUser'];
    rowNum = json['RowNum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ContactID'] = contactID;
    data['ContactCode'] = contactCode;
    data['Title'] = title;
    data['FirstName'] = firstName;
    data['MiddleName'] = middleName;
    data['LastName'] = lastName;
    data['ContactName'] = contactName;
    data['ContactIdentifier'] = contactIdentifier;
    data['AccountID'] = accountID;
    data['ContactCategoryID'] = contactCategoryID;
    data['DepartmentName'] = departmentName;
    data['Designation'] = designation;
    data['RolesAndResponsibilities'] = rolesAndResponsibilities;
    data['ReportingManager'] = reportingManager;
    data['ReportingContactID'] = reportingContactID;
    data['MobileNumber'] = mobileNumber;
    data['AlternateMobileNumber'] = alternateMobileNumber;
    data['WorkPhone'] = workPhone;
    data['ResidencePhone'] = residencePhone;
    data['Email'] = email;
    data['AlternateEmail'] = alternateEmail;
    data['AddressLine1'] = addressLine1;
    data['AddressLine2'] = addressLine2;
    data['AddressLine3'] = addressLine3;
    data['City'] = city;
    data['State'] = state;
    data['Country'] = country;
    data['PIN'] = pIN;
    data['GPSCoordinates'] = gPSCoordinates;
    data['LinkedIn'] = linkedIn;
    data['PastAccounts'] = pastAccounts;
    data['PastDesignations'] = pastDesignations;
    data['DateOfBirth'] = dateOfBirth;
    data['RemindBirthday'] = remindBirthday;
    data['ContactAlignmentID'] = contactAlignmentID;
    data['Remarks'] = remarks;
    data['ReferenceHistory'] = referenceHistory;
    data['IsPrimaryContact'] = isPrimaryContact;
    data['Tags'] = tags;
    data['FreeTextField1'] = freeTextField1;
    data['FreeTextField2'] = freeTextField2;
    data['FreeTextField3'] = freeTextField3;
    data['CompanyName'] = companyName;
    data['TaxPayerIdentificationNumber'] = taxPayerIdentificationNumber;
    data['SocialSecurityNumber'] = socialSecurityNumber;
    data['PassportNumber'] = passportNumber;
    data['DrivingLicenseNumber'] = drivingLicenseNumber;
    data['VoterIDCardNumber'] = voterIDCardNumber;
    data['MarketingContactID'] = marketingContactID;
    data['CreatedBy'] = createdBy;
    data['CreatedOn'] = createdOn;
    data['ModifiedBy'] = modifiedBy;
    data['ModifiedOn'] = modifiedOn;
    data['DeviceIdentifier'] = deviceIdentifier;
    data['ReferenceIdentifier'] = referenceIdentifier;
    data['IsActive'] = isActive;
    data['Uid'] = uid;
    data['AppUserID'] = appUserID;
    data['AssignedByAppUserID'] = assignedByAppUserID;
    data['AppUserGroupID'] = appUserGroupID;
    data['IsArchived'] = isArchived;
    data['IsDeleted'] = isDeleted;
    data['LeadQualificationID'] = leadQualificationID;
    data['AccountName'] = accountName;
    data['ContactCategoryName'] = contactCategoryName;
    data['AccountLocation'] = accountLocation;
    data['ReportingContactName'] = reportingContactName;
    data['ContactAlignmentName'] = contactAlignmentName;
    data['AppUserName'] = appUserName;
    data['AssignedByAppUserName'] = assignedByAppUserName;
    data['AppUserGroupName'] = appUserGroupName;
    data['ID'] = iD;
    data['UserLoginName'] = userLoginName;
    data['DeviceAndLocation'] = deviceAndLocation;
    data['UserInput'] = userInput;
    data['AppUserUid'] = appUserUid;
    data['AppUserGroupUid'] = appUserGroupUid;
    data['CreatedForUser'] = createdForUser;
    data['RowNum'] = rowNum;
    return data;
  }
}
