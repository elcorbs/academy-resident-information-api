CREATE TABLE hbhousehold (
	claim_id int NULL
	constraint FK_HBHOUSEHOLD_HBMEMBER_CLAIM_ID
            primary key,
	house_id smallint NULL,
	last_upd int NULL,
	from_date timestamp NULL,
	to_date timestamp NULL,
	inc_supp_ind smallint NULL,
	claim_type_ind smallint NULL,
	addr1 varchar(35) NULL,
	addr2 varchar(35) NULL,
	addr3 varchar(32) NULL,
	addr4 varchar(32) NULL,
	post_code varchar(10) NULL,
	find_addr1 varchar(16) NULL,
	find_addr2 varchar(16) NULL,
	reassess_ind smallint NULL,
	srr_exempt smallint NULL,
	lp_protect_ind smallint NULL,
	cbl_protect_ind smallint NULL,
	bereavement_override smallint NULL,
	is_claim_date timestamp NULL,
	is_award_date timestamp NULL,
	is_reject_date timestamp NULL,
	uprn varchar(12) NULL,
	away_address_ind smallint NULL,
	shared_accom_ind smallint NULL,
	is_mid_week_split smallint NULL,
	locality_code varchar(6) NULL,
	districtmove_id int NULL,
	dmp_ind smallint NULL,
	group_id int NULL,
	ben_cap_level_ind smallint NULL,
	uc_dhp_ind smallint NULL,
	category_ind int NULL,
	fa_ind int NULL
);

CREATE TABLE hbmember (
	claim_id int NULL primary key,
	house_id smallint NULL,
	member_id smallint NULL,
	person_ref int NULL,
	name varchar(32) NULL,
	surname varchar(32) NULL,
	title varchar(4) NULL,
	forename varchar(32) NULL,
	find_name varchar(32) NULL,
	type smallint NULL,
	birth_date timestamp NULL,
	gender smallint NULL,
	carer_ind smallint NULL,
	disable_ind smallint NULL,
	hospital_ind smallint NULL,
	meals_ind smallint NULL,
	shared_percent real NULL,
	student_ind smallint NULL,
	hours_worked varchar(6) NULL,
	cared_for_ind smallint NULL,
	school_ind smallint NULL,
	nino varchar(10) NULL,
	age_ind smallint NULL,
	self_empl_ind smallint NULL,
	incapable_of_work smallint NULL,
	weeks_28 smallint NULL,
	weeks_52 smallint NULL,
	hold_risk_sub_grp_cas timestamp NULL,
	residential_acc smallint NULL,
	bereaved_date timestamp NULL,
	bea_end_date timestamp NULL,
	fepow_disregard numeric(14, 2) NULL,
	mat_leave_ccp_ind smallint NULL,
	holocaust_disregard numeric(14, 2) NULL,
	srplumpsum_disregard numeric(14, 2) NULL,
	chb_end_date timestamp NULL,
	deceased_date timestamp NULL,
	eight_week_ind smallint NULL,
	num_child_under_1 smallint NULL,
	num_child_under_16 smallint NULL,
	num_youth_16_18 smallint NULL,
	num_dis_child_prem smallint NULL,
	num_enhan_dis_child_prem smallint NULL,
	ccp_prison_hosp_ind smallint NULL,
	ccp_rem_work_ind smallint NULL,
	advantageous_change_ind smallint NULL,
	not_payable_ind smallint NULL,
	non_dep_gc_sc_ind smallint NULL,
	non_dep_easement_ind smallint NULL,
	sanction_rate numeric(14, 2) NULL,
	easement_date timestamp NULL,
	disregard_50 smallint NULL,
	non_dep_grp smallint NULL,
	party_ref int NULL,
	spd_ignore_date timestamp NULL,
	unique_pupil_num varchar(15) NULL,
	severely_mentally_impaired_ind smallint NULL,
	period_sanction int NULL,
	sanction_type int NULL,
	sanction_rate_type int NULL
);
