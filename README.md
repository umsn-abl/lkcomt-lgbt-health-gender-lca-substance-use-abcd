# lkcomt-lgbt-health-gender-lca-substance-use-abcd

## description

This code uses ABCD Release 5.1 data to perform a latent class analysis using measures of gender identity and expression. Multinomial and binary logistic regression models are used to identify the demographic predictors of latent class membership and to assess the association between latent class membership and substance use cognitions and substance use.  

## files

[abcd_master.Rmd](abcd_master.Rmd) is an R Markdown script that performs general data munging.  
[abcd_gender_and_sex_tables.Rmd](abcd_gender_and_sex_tables.Rmd) is an R Markdown script that prepares the data for analysis, estimates descriptive statistics, and generates tables and plots.  
[mplus_gender_lca.inp](mplus_gender_lca.inp) is an Mplus script that performs a latent class analysis using the gender identity and expression measures.  
[abcd_gender_models.do](abcd_gender_models.do) is a Stata do file that performs multinomial logistic regression and binary logistic regression (with GEE).  

## doi

Please refer to the following link for the accompanying manuscript: [DOI Placeholder](https://www.doi.org/)  

## data

The data used for this analysis came from the Adolescent Brain Cognitive Development Study (ABCD) 5.1 Release, which can be accessed at the following link: dx.doi.org/10.15154/z563-zd24
