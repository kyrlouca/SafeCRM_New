program Safe_CRM;



uses
  Vcl.Forms,
  CodeSiteLogging,
  M_params in 'SRC\M_params.pas' {M_paramsFRM},
  U_Database in 'SRC\U_Database.pas' {U_databaseFRM: TDataModule},
  G_generalProcs in 'SRC\G_generalProcs.pas',
  G_KyrSQL in 'SRC\G_KyrSQL.pas',
  M_Main in 'SRC\M_Main.pas' {M_mainFRM},
  M_Venue in 'SRC\M_Venue.pas' {M_venuFRM},
  M_seminarType in 'SRC\M_seminarType.pas' {M_SeminarTypeFRM},
  V_Seminar in 'SRC\V_Seminar.pas' {V_SeminarFRM},
  H_Help in 'SRC\H_Help.pas' {H_HelpFRM},
  G_SFCommonProcs in 'SRC\G_SFCommonProcs.pas',
  p_attendance in 'SRC\p_attendance.pas' {P_attendanceFRM},
  M_Company in 'SRC\M_Company.pas' {M_CompanyFRM},
  L_Seminar in 'SRC\L_Seminar.pas' {L_SeminarFRM},
  V_SeminarStages in 'SRC\V_SeminarStages.pas' {V_SeminarStagesFRM},
  I_certificates in 'SRC\I_certificates.pas' {I_CertificatesFRM},
  I_invoiceSeminar in 'SRC\I_invoiceSeminar.pas' {I_InvoiceSeminarFRM},
  R_PresenceTotal in 'SRC\R_PresenceTotal.pas' {R_presenceTotalFRM},
  R_Certificate in 'SRC\R_Certificate.pas' {R_certificateFRM},
  R_Presence in 'SRC\R_Presence.pas' {R_presenceFRM},
  G_DebugUnit in 'SRC\G_DebugUnit.pas',
  L_reminders in 'SRC\L_reminders.pas' {L_RemindersFRM},
  M_CompanyNew in 'SRC\M_CompanyNew.pas' {M_companyNewFRM},
  L_Companies in 'SRC\L_Companies.pas' {L_companiesFRM},
  M_reminderComplete in 'SRC\M_reminderComplete.pas' {M_ReminderCompleteFRM},
  SN_Login in 'SRC\SN_Login.pas' {SN_LoginFRm},
  SN_User in 'SRC\SN_User.pas' {SN_UserFRM},
  SN_SecurityAccess in 'SRC\SN_SecurityAccess.pas' {SN_SecurityAccessFRM},
  SN_AddUser in 'SRC\SN_AddUser.pas' {SN_AddUserFRM},
  P_ViewPayment in 'SRC\P_ViewPayment.pas' {P_ViewPaymentFRM},
  l_listInvoices in 'SRC\l_listInvoices.pas' {L_listInvoicesFRM},
  r_certificateDates in 'SRC\r_certificateDates.pas' {R_CertificateDatesFRM},
  R_SeminarListingRevenues in 'SRC\R_SeminarListingRevenues.pas' {R_SeminarListingRevenuesFRM},
  R_SeminarRevenues in 'SRC\R_SeminarRevenues.pas' {R_SeminarRevenuesFRM},
  R_presencePerDay in 'SRC\R_presencePerDay.pas' {R_presencePErDayFRM},
  SN_ModifyPassword in 'SRC\SN_ModifyPassword.pas' {SN_ModifyPasswordFRM},
  R_invoices in 'SRC\R_invoices.pas' {R_InvoicesFRM},
  R_InvoicesUnpaid in 'SRC\R_InvoicesUnpaid.pas' {R_invoicesUnpaidFRM},
  M_reminder in 'SRC\M_reminder.pas' {M_reminderFRM},
  R_seminarAttend in 'SRC\R_seminarAttend.pas' {R_seminarsAttendFRM},
  S_updateStatus in 'SRC\S_updateStatus.pas' {S_UpdateStatusFRM},
  M_Instructor in 'SRC\M_Instructor.pas' {M_InstructorFRM},
  R_Reminders in 'SRC\R_Reminders.pas' {R_remindersFRM},
  R_AnadFIles in 'SRC\R_AnadFIles.pas' {R_AnadFilesFRM},
  m_FixMaleFemale in 'SRC\m_FixMaleFemale.pas' {M_FixMaleFemaleFRM},
  M_Student in 'SRC\M_Student.pas' {M_StudentFRM},
  R_expiry in 'SRC\R_expiry.pas' {R_ExpiryFRM},
  S_LoadPDF in 'SRC\S_LoadPDF.pas' {S_loadPdfFRM},
  S_LoadDocs in 'SRC\S_LoadDocs.pas' {S_LoadDocsFRM},
  S_backupData in 'SRC\S_backupData.pas' {M_backupDataFRM},
  t_test2 in 'SRC\t_test2.pas' {T_test2FRM},
  v_SeminarPictureTemplate in 'SRC\v_SeminarPictureTemplate.pas' {V_SeminarPictureTemplateFRM},
  V_SeminarCertificateTemplateNew in 'SRC\V_SeminarCertificateTemplateNew.pas' {V_SeminarCertificateTemplateNewFRM},
  V_SeminarTypeCertificateTemplateNew in 'SRC\V_SeminarTypeCertificateTemplateNew.pas' {V_SeminarTypeCertificateTemplateNewFRM};

//  R_PendingCertificates in 'R_PendingCertificates.pas' {R_PendingCertificatesFRM};

{$R *.res}

begin
ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  Application.Initialize;
     {$IFDEF DEBUG}
    CodeSite.Enabled := True;
    CodeSite.Clear;
 {$ELSE}
    CodeSite.Enabled := False;
 {$ENDIF}

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TU_databaseFRM, U_databaseFRM);
  Application.CreateForm(TM_mainFRM, M_mainFRM);
  Application.CreateForm(TM_StudentFRM, M_StudentFRM);
  Application.CreateForm(TR_ExpiryFRM, R_ExpiryFRM);
  Application.CreateForm(TR_ExpiryFRM, R_ExpiryFRM);
  Application.CreateForm(TS_loadPdfFRM, S_loadPdfFRM);
  Application.CreateForm(TS_LoadDocsFRM, S_LoadDocsFRM);
  Application.CreateForm(TM_backupDataFRM, M_backupDataFRM);
  Application.CreateForm(TM_backupDataFRM, M_backupDataFRM);
  Application.CreateForm(TT_test2FRM, T_test2FRM);
  Application.CreateForm(TV_SeminarCertificateTemplateNewFRM, V_SeminarCertificateTemplateNewFRM);
  Application.CreateForm(TV_SeminarPictureTemplateFRM, V_SeminarPictureTemplateFRM);
  Application.CreateForm(TV_SeminarTypeCertificateTemplateNewFRM, V_SeminarTypeCertificateTemplateNewFRM);
  //  Application.CreateForm(TV_SeminarTypeCertificateNewFRM, V_SeminarTypeCertificateNewFRM);
  //  Application.CreateForm(TV_SeminarTypeCertificateNewFRM1, V_SeminarTypeCertificateNewFRM1);
  Application.Run;
end.
