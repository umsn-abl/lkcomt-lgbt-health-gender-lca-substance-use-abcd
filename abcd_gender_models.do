clear all

use "C:\Users\jjardine\Desktop\ABCD\data\gender_and_sex\abcd_gender_sub.dta"

cd "C:\Users\jjardine\Desktop\ABCD\data\gender_and_sex\"

xtset src_subject_id event

* substance use models

xtgee drink_bool_b event i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg ib4.class_id_4, family(binomial) link(logit) corr(exchangeable) eform
esttab using drink_bool_b.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace

xtgee tob_bool_b event i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg ib4.class_id_4, family(binomial) link(logit) corr(exchangeable) eform
esttab using tob_bool_b.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace

xtgee mj_bool_b event i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg ib4.class_id_4, family(binomial) link(logit) corr(exchangeable) eform
esttab using mj_bool_b.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace

xtgee alc_any_curious event i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg ib4.class_id_4, family(binomial) link(logit) corr(exchangeable) eform
esttab using alc_any_curious.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace

xtgee tob_any_curious event i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg ib4.class_id_4, family(binomial) link(logit) corr(exchangeable) eform
esttab using tob_any_curious.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace

xtgee mj_any_curious event i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg ib4.class_id_4, family(binomial) link(logit) corr(exchangeable) eform
esttab using mj_any_curious.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace

xtgee alc_try_soon event i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg ib4.class_id_4, family(binomial) link(logit) corr(exchangeable) eform
esttab using alc_try_soon.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace

xtgee tob_try_soon event i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg ib4.class_id_4, family(binomial) link(logit) corr(exchangeable) eform
esttab using tob_try_soon.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace

xtgee mj_try_soon event i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg ib4.class_id_4, family(binomial) link(logit) corr(exchangeable) eform
esttab using mj_try_soon.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace

* model to predict class membership based on different covariates

keep if event==0

mlogit class_id_4 i.interview_age i.sex_at_birth i.race_ethnicity i.demo_prnt_marital_v2 i.demo_prnt_prtnr_ed_agg i.demo_prnt_prtnr_empl i.demo_comb_income_agg, baseoutcome(4) rrr
esttab using class_id_4.csv, eform ci nostar nobaselevels cell(b(fmt(2)) ci(fmt(2))) replace