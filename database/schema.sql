-- CREATE TABLE hbhousehold (
-- 	claim_id int NULL,
-- 	house_id smallint NULL,
-- 	last_upd int NULL,
-- 	from_date timestamp NULL,
-- 	to_date timestamp NULL,
-- 	inc_supp_ind smallint NULL,
-- 	claim_type_ind smallint NULL,
-- 	addr1 varchar(35) NULL,
-- 	addr2 varchar(35) NULL,
-- 	addr3 varchar(32) NULL,
-- 	addr4 varchar(32) NULL,
-- 	post_code varchar(10) NULL,
-- 	find_addr1 varchar(16) NULL,
-- 	find_addr2 varchar(16) NULL,
-- 	reassess_ind smallint NULL,
-- 	srr_exempt smallint NULL,
-- 	lp_protect_ind smallint NULL,
-- 	cbl_protect_ind smallint NULL,
-- 	bereavement_override smallint NULL,
-- 	is_claim_date timestamp NULL,
-- 	is_award_date timestamp NULL,
-- 	is_reject_date timestamp NULL,
-- 	uprn varchar(12) NULL,
-- 	away_address_ind smallint NULL,
-- 	shared_accom_ind smallint NULL,
-- 	is_mid_week_split smallint NULL,
-- 	locality_code varchar(6) NULL,
-- 	districtmove_id int NULL,
-- 	dmp_ind smallint NULL,
-- 	group_id int NULL,
-- 	ben_cap_level_ind smallint NULL,
-- 	uc_dhp_ind smallint NULL,
-- 	category_ind int NULL,
-- 	fa_ind int NULL,
-- 	-- CONSTRAINT PK_hbhousehold PRIMARY KEY (claim_id, house_id)
-- 	PRIMARY KEY (claim_id, house_id)
-- );

-- CREATE TABLE hbmember (
-- 	claim_id int NULL,
-- 	house_id smallint NULL,
-- 	member_id smallint NULL,
-- 	person_ref int NULL,
-- 	name varchar(32) NULL,
-- 	surname varchar(32) NULL,
-- 	title varchar(4) NULL,
-- 	forename varchar(32) NULL,
-- 	find_name varchar(32) NULL,
-- 	type smallint NULL,
-- 	birth_date timestamp NULL,
-- 	gender smallint NULL,
-- 	carer_ind smallint NULL,
-- 	disable_ind smallint NULL,
-- 	hospital_ind smallint NULL,
-- 	meals_ind smallint NULL,
-- 	shared_percent real NULL,
-- 	student_ind smallint NULL,
-- 	hours_worked varchar(6) NULL,
-- 	cared_for_ind smallint NULL,
-- 	school_ind smallint NULL,
-- 	nino varchar(10) NULL,
-- 	age_ind smallint NULL,
-- 	self_empl_ind smallint NULL,
-- 	incapable_of_work smallint NULL,
-- 	weeks_28 smallint NULL,
-- 	weeks_52 smallint NULL,
-- 	hold_risk_sub_grp_cas timestamp NULL,
-- 	residential_acc smallint NULL,
-- 	bereaved_date timestamp NULL,
-- 	bea_end_date timestamp NULL,
-- 	fepow_disregard numeric(14, 2) NULL,
-- 	mat_leave_ccp_ind smallint NULL,
-- 	holocaust_disregard numeric(14, 2) NULL,
-- 	srplumpsum_disregard numeric(14, 2) NULL,
-- 	chb_end_date timestamp NULL,
-- 	deceased_date timestamp NULL,
-- 	eight_week_ind smallint NULL,
-- 	num_child_under_1 smallint NULL,
-- 	num_child_under_16 smallint NULL,
-- 	num_youth_16_18 smallint NULL,
-- 	num_dis_child_prem smallint NULL,
-- 	num_enhan_dis_child_prem smallint NULL,
-- 	ccp_prison_hosp_ind smallint NULL,
-- 	ccp_rem_work_ind smallint NULL,
-- 	advantageous_change_ind smallint NULL,
-- 	not_payable_ind smallint NULL,
-- 	non_dep_gc_sc_ind smallint NULL,
-- 	non_dep_easement_ind smallint NULL,
-- 	sanction_rate numeric(14, 2) NULL,
-- 	easement_date timestamp NULL,
-- 	disregard_50 smallint NULL,
-- 	non_dep_grp smallint NULL,
-- 	party_ref int NULL,
-- 	spd_ignore_date timestamp NULL,
-- 	unique_pupil_num varchar(15) NULL,
-- 	severely_mentally_impaired_ind smallint NULL,
-- 	period_sanction int NULL,
-- 	sanction_type int NULL,
-- 	sanction_rate_type int NULL,
-- 	-- CONSTRAINT PK_hbmember PRIMARY KEY (claim_id, person_ref),
-- 	-- CONSTRAINT UC_hbmember UNIQUE (claim_id, house_id) # primary key statement enforces uniqueness?
-- 	PRIMARY KEY (claim_id, person_ref)
-- );

-- CREATE TABLE ctaccount (
-- 	division_id smallint NULL,
-- 	account_ref int NULL,
-- 	account_cd varchar(1) NULL,
-- 	lead_liab_name varchar(32) NULL,
-- 	lead_liab_pos smallint NULL,
-- 	for_addr1 varchar(32) NULL,
-- 	for_addr2 varchar(32) NULL,
-- 	for_addr3 varchar(32) NULL,
-- 	for_addr4 varchar(32) NULL,
-- 	for_postcode varchar(8) NULL,
-- 	for_district varchar(17) NULL,
-- 	paymeth_code varchar(5) NULL,
-- 	paymeth_type smallint NULL,
-- 	prev_paymeth varchar(5) NULL,
-- 	prev_paymeth_type smallint NULL,
-- 	employee_ind smallint NULL,
-- 	employee_no varchar(12) NULL,
-- 	swipe_issue_date timestamp NULL,
-- 	swipe_card_request smallint NULL,
-- 	hb_sar smallint NULL,
-- 	fast_track smallint NULL,
-- 	equal_access_code varchar(3) NULL,
-- 	sched_code varchar(6) NULL,
-- 	person_status varchar(1) NULL,
-- 	transmission_date timestamp NULL,
-- 	lead_liab_title varchar(8) NULL,
-- 	lead_liab_forename varchar(32) NULL,
-- 	lead_liab_middlename varchar(32) NULL,
-- 	lead_liab_surname varchar(32) NULL,
-- 	lead_consent_ind smallint NULL,
-- 	for_addr_last_updated int NULL,
-- 	hb_archive_ind smallint NULL,
-- 	party_ref int NULL,
-- 	for_addr_verified smallint NULL,
-- 	last_updated_int int NULL,
-- 	prohibit_code varchar(2) NULL,
-- 	prohibit_end timestamp NULL,
-- 	prohibit_set timestamp NULL,
-- 	prohibit_user varchar(8) NULL,
-- 	prohibit_online_spd smallint NULL,
-- 	for_addr_abroad smallint NULL,
-- 	documerge_excl_ind smallint NULL
-- );

-- CREATE TABLE ctproperty (
-- 	division_id smallint NULL,
-- 	property_ref varchar(18) NULL,
-- 	fund_no smallint NULL,
-- 	parish_code varchar(8) NULL,
-- 	street_code varchar(8) NULL,
-- 	house_id varchar(8) NULL,
-- 	addr1 varchar(35) NULL,
-- 	addr2 varchar(35) NULL,
-- 	addr3 varchar(32) NULL,
-- 	addr4 varchar(32) NULL,
-- 	postcode varchar(8) NULL,
-- 	grid_ref varchar(20) NULL,
-- 	old_property_ref varchar(20) NULL,
-- 	property_type varchar(40) NULL,
-- 	owner_name varchar(32) NULL,
-- 	own_addr1 varchar(32) NULL,
-- 	own_addr2 varchar(32) NULL,
-- 	own_addr3 varchar(32) NULL,
-- 	own_addr4 varchar(32) NULL,
-- 	own_postcode varchar(8) NULL,
-- 	owner_away_ind smallint NULL,
-- 	owner_liable smallint NULL,
-- 	crown_ind smallint NULL,
-- 	council_ha_ind varchar(1) NULL,
-- 	institution smallint NULL,
-- 	planning_ind smallint NULL,
-- 	planning_desc varchar(30) NULL,
-- 	planning_granted timestamp NULL,
-- 	survey_code varchar(6) NULL,
-- 	workarea varchar(6) NULL,
-- 	walking_order varchar(6) NULL,
-- 	deleted_ind smallint NULL,
-- 	deleted_eff timestamp NULL,
-- 	band_010493 varchar(1) NULL,
-- 	cc_payable numeric(14, 2) NULL,
-- 	transit_93 numeric(14, 2) NULL,
-- 	transit_94 numeric(14, 2) NULL,
-- 	transit_95 numeric(14, 2) NULL,
-- 	transit_96 numeric(14, 2) NULL,
-- 	transit_97 numeric(14, 2) NULL,
-- 	inhibit_archive smallint NULL,
-- 	owner_code varchar(4) NULL,
-- 	uprn varchar(12) NULL,
-- 	wardcode varchar(6) NULL,
-- 	owner_title varchar(8) NULL,
-- 	owner_forename varchar(32) NULL,
-- 	owner_middlename varchar(32) NULL,
-- 	owner_surname varchar(32) NULL,
-- 	inhibit_llpg smallint NULL,
-- 	llpg_xref_key varchar(14) NULL,
-- 	owner_addr_verified smallint NULL,
-- 	last_updated_int int NULL,
-- 	rented_prop smallint NULL,
-- 	own_telno varchar(20) NULL,
-- 	own_email_addr varchar(128) NULL,
-- 	no_beds smallint NULL,
-- 	annexe_ind smallint NULL,
-- 	main_prop_ref varchar(18) NULL,
-- 	own_is_charity smallint NULL,
-- 	own_addr_abroad smallint NULL
-- );
