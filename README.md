
![Screenshot 2024-02-09 152536](https://github.com/jmjustis/CampaignFinance/assets/119478875/b765f679-7223-4245-a9c7-f61b08a0d8a4)


## Introduction:

"Elections, by their nature, deviate from the concept of "Black Swan" events*. According to Nassim Nicholas Taleb, the proponent of the Black Swan theory, an event with a probability of 50/50 does not fit within this classification (La Roche, 2016). Consequently, we may contend that if elections inherently avoid categorization as Black Swan events, they could conceivably be predictable - a state perhaps better designated as 'Gray Swan' phenomena.

 ** 
 A "Black Swan" event is a term coined by Nassim Nicholas Taleb in his 2007 book "The Black Swan". A Black Swan event is defined as an event or occurrence that deviates beyond what is normally expected of a situation and is extremely difficult to predict. These events are characterized by their extreme rarity, severe impact, and the widespread insistence they were obvious in hindsight.
 **

This proposition implies that in the absence of stationarity and ergodicity, a system may yet be predictable, contingent upon the application of suitable features in machine learning methodologies. Additionally, if significant factors like campaign spending are included within these features, it could empower a data scientist to ascertain the 'optimal' or 'ideal bet size' that a campaign manager should dedicate to an election campaign to ensure victory.
In this study, we explore the influence of campaign finance on election outcomes through the application of machine learning algorithms. Our analysis transcends the boundaries of simple exploratory data analysis. We critically assess which models demonstrate the highest efficacy for these predictive tasks. Ultimately, we employ the predicted probability outcomes from the best-performing algorithms to establish the Kelly criterion, thereby determining the optimal campaign budget allocation.


## Analysis and Models:

### 	About the Data:
The data presented in the data set itself has a lot of dimensionality but does give incredible insight on how political campaigns allocate their money. Down below in Table 1.1, it can be seen the type of data that was provided.

Table 1.1
Tag	Field Name	Data Type	Description
lin_ima	Link to list of reports for the committee	URI	List of all disclosure filings for this committee
can_id	Candidate Id	Character	 
can_nam	Candidate Name	Character	Name of candidate
can_off	Candidate Office	Text	office abbreviation
can_off_sta	Candidate Office State	Character	Postal abbreviation for state
can_off_dis	Candidate Office District	Number	District number for House candidates
can_par_aff	Candidate Party Affiliation	Character	Party abbreviation
			
			
can_inc_cha_ope_sea	Candidate Incumbent Challenger Open Seat	Character	Incumbent or challenger or open seat indicator
can_str1	Candidate Street 1	Text	Street address
can_str2	Candidate Street 2	Text	 
can_cit	Candidate City	Text	City of mailing address
can_sta	Candidate State	Text	State of mailing address
can_zip	Candidate Zip	Number	Zip code of mailing address
ind_ite_con	Individual Itemized Contribution	Currency	Sum of itemized contributions from individuals
ind_uni_con	Individual Unitemized Contribution	Currency	Sum of unitemized contributions from individuals
ind_con	Individual Contribution	Currency	Total contributions from individuals
par_com_con	Party Committee Contribution	Currency	Contributions from party committees
oth_com_con	Other Committee Contribution	Currency	Contributions from other committees
can_con	Candidate Contribution	Currency	Contributions from the candidate him(her)self
tot_con	Total Contribution	Currency	Total contributions
tra_fro_oth_aut_com	Transfer from other Authorized Committee	Currency	 
can_loa	Candidate Loan	Currency	Loans received from the candidate
oth_loa	Other Loan	Currency	Other loans
tot_loa	Total Loan	Currency	 
off_to_ope_exp	Offsets to Operating Expenditure	Currency	 
off_to_fun	Offsets to Fundraising	Currency	 
off_to_leg_acc	Offsets to Legal Accounting	Currency	 
oth_rec	Other Receipts	Currency	 
tot_rec	Total Receipts	Currency	 
ope_exp	Operating Expenditure	Currency	 
exe_leg_acc_dis	Exempt Legal Accounting Disbursement	Currency	 
fun_dis	Fundraising Disbursement	Currency	 
tra_to_oth_aut_com	Transfer to Other Authorized Committee	Currency	 
can_loa_rep	Candidate Loan Repayment	Currency	Loan repayments to the candidate
oth_loa_rep	Other Loan Repayment	Currency	Loan repayments to banks or others
tot_loa_rep	Total Loan Repayment	Currency	 
ind_ref	Individual Refund	Currency	Contribution refunds made to individuals
par_com_ref	Party Committee Refund	Currency	Contribution refunds made to parties
oth_com_ref	Other Committee Refund	Currency	Contribution refunds made to other committees
tot_con_ref	Total Contribution Refund	Currency	 
oth_dis	Other Disbursement	Currency	 
tot_dis	Total Disbursement	Currency	 
cas_on_han_beg_of_per	Cash on Hand Beginning of Period	Currency	 
cas_on_han_clo_of_per	Cash on Hand Close of Period	Currency	 
net_con	Net Contribution	Currency	 
net_ope_exp	Net Operating Expenditure	Currency	 
deb_owe_by_com	Debt Owed by Committee	Currency	 
deb_owe_to_com	Debt Owed to Committee	Currency	 
cov_sta_dat	Coverage Start Date	Date	MM/DD/YYYY
cov_end_dat	Coverage End Date	Date	MM/DD/YYYY
