
CREATE NONCLUSTERED INDEX [ACT_ICD10CM_DX_V41_APPLIEDPATH] ON [ACT_ICD10CM_DX_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

CREATE NONCLUSTERED INDEX [ACT_ICD10CM_DX_V41_CBASECODE] ON [ACT_ICD10CM_DX_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_ICD10CM_DX_V41_OMOP_FULLNAME] ON [ACT_ICD10CM_DX_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

CREATE NONCLUSTERED INDEX [ACT_ICD10PCS_PX_V41_APPLIEDPATH] ON [ACT_ICD10PCS_PX_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_ICD10PCS_PX_V41_CBASECODE] ON [ACT_ICD10PCS_PX_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_ICD10PCS_PX_V41_FULLNAME] ON [ACT_ICD10PCS_PX_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;



CREATE NONCLUSTERED INDEX [ACT_ICD9CM_DX_V41_APPLIEDPATH] ON [ACT_ICD9CM_DX_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_ICD9CM_DX_V41_CBASECODE] ON [ACT_ICD9CM_DX_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_ICD9CM_DX_V41_FULLNAME] ON [ACT_ICD9CM_DX_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;


CREATE NONCLUSTERED INDEX [ACT_ICD9CM_PX_V41_APPLIEDPATH] ON [ACT_ICD9CM_PX_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_ICD9CM_PX_V41_CBASECODE] ON [ACT_ICD9CM_PX_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_ICD9CM_PX_V41_FULLNAME] ON [ACT_ICD9CM_PX_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;


CREATE NONCLUSTERED INDEX [ACT_CPT4_PX_V41_OMOP_APPLIEDPATH] ON [ACT_CPT4_PX_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_CPT4_PX_V41_OMOP_CBASECODE] ON [ACT_CPT4_PX_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_CPT4_PX_V41_OMOP_FULLNAME] ON [ACT_CPT4_PX_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

CREATE NONCLUSTERED INDEX [ACT_HCPCS_PX_V41_OMOP_APPLIEDPATH] ON [ACT_HCPCS_PX_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_HCPCS_PX_V41_OMOP_CBASECODE] ON [ACT_HCPCS_PX_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_HCPCS_PX_V41_OMOP_FULLNAME] ON [ACT_HCPCS_PX_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;


CREATE NONCLUSTERED INDEX [ACT_MED_ALPHA_V41_OMOP_APPLIEDPATH] ON [ACT_MED_ALPHA_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_MED_ALPHA_V41_OMOP_CBASECODE] ON [ACT_MED_ALPHA_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_MED_ALPHA_V41_OMOP_FULLNAME] ON [ACT_MED_ALPHA_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

CREATE NONCLUSTERED INDEX [ACT_MED_VA_V41_OMOP_APPLIEDPATH] ON [ACT_MED_VA_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_MED_VA_V41_OMOP_CBASECODE] ON [ACT_MED_VA_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_MED_VA_V41_OMOP_FULLNAME] ON [ACT_MED_VA_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

CREATE NONCLUSTERED INDEX [ACT_LOINC_LAB_V41_OMOP_APPLIEDPATH] ON [ACT_LOINC_LAB_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_LOINC_LAB_V41_OMOP_CBASECODE] ON [ACT_LOINC_LAB_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_LOINC_LAB_V41_OMOP_FULLNAME] ON [ACT_LOINC_LAB_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_LOINC_LAB_PROV_V41_OMOP_APPLIEDPATH] ON [ACT_LOINC_LAB_PROV_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_LOINC_LAB_PROV_V41_OMOP_CBASECODE] ON [ACT_LOINC_LAB_PROV_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_LOINC_LAB_PROV_V41_OMOP_FULLNAME] ON [ACT_LOINC_LAB_PROV_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

CREATE NONCLUSTERED INDEX [ACT_SDOH_V41_OMOP_APPLIEDPATH] ON [ACT_SDOH_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_SDOH_V41_OMOP_CBASECODE] ON [ACT_SDOH_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_SDOH_V41_OMOP_FULLNAME] ON [ACT_SDOH_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_VITAL_SIGNS_V41_OMOP_APPLIEDPATH] ON [ACT_VITAL_SIGNS_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_VITAL_SIGNS_V41_OMOP_CBASECODE] ON [ACT_VITAL_SIGNS_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_VITAL_SIGNS_V41_OMOP_FULLNAME] ON [ACT_VITAL_SIGNS_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_VISIT_DETAILS_V41_OMOP_APPLIEDPATH] ON [ACT_VISIT_DETAILS_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_VISIT_DETAILS_V41_OMOP_CBASECODE] ON [ACT_VISIT_DETAILS_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_VISIT_DETAILS_V41_OMOP_FULLNAME] ON [ACT_VISIT_DETAILS_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_COVID_V41_OMOP_APPLIEDPATH] ON [ACT_COVID_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_COVID_V41_OMOP_CBASECODE] ON [ACT_COVID_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_COVID_V41_OMOP_FULLNAME] ON [ACT_COVID_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_DEM_V41_OMOP_APPLIEDPATH] ON [ACT_DEM_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_DEM_V41_OMOP_CBASECODE] ON [ACT_DEM_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_DEM_V41_OMOP_FULLNAME] ON [ACT_DEM_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_ICD10_ICD9_DX_V41_OMOP_APPLIEDPATH] ON [ACT_ICD10_ICD9_DX_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_ICD10_ICD9_DX_V41_OMOP_CBASECODE] ON [ACT_ICD10_ICD9_DX_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_ICD10_ICD9_DX_V41_OMOP_FULLNAME] ON [ACT_ICD10_ICD9_DX_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_ZIPCODE_V41_OMOP_APPLIEDPATH] ON [ACT_ZIPCODE_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_ZIPCODE_V41_OMOP_CBASECODE] ON [ACT_ZIPCODE_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_ZIPCODE_V41_OMOP_FULLNAME] ON [ACT_ZIPCODE_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;


CREATE NONCLUSTERED INDEX [ACT_VAX_V41_OMOP_APPLIEDPATH] ON [ACT_VAX_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_VAX_V41_OMOP_CBASECODE] ON [ACT_VAX_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_VAX_V41_OMOP_FULLNAME] ON [ACT_VAX_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_RESEARCH_V41_OMOP_APPLIEDPATH] ON [ACT_RESEARCH_V41_OMOP]
(
	[M_APPLIED_PATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX [ACT_RESEARCH_V41_OMOP_CBASECODE] ON [ACT_RESEARCH_V41_OMOP]
(
	[C_BASECODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
CREATE CLUSTERED INDEX [ACT_RESEARCH_V41_OMOP_FULLNAME] ON [ACT_RESEARCH_V41_OMOP]
(
	[C_FULLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;