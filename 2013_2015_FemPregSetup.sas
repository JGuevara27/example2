/*--------------------------------------------------------------------------
 |                                                                         
 |           NATIONAL SURVEY OF FAMILY GROWTH (NSFG), 2013-2015
 |
 |                      SAS Pregnancy Data Setup File 
 |
 |
 | SAS setup sections are provided for the ASCII version of this data
 | collection.  These sections are listed below:
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions. Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set.
 |
 | INFILE:  identifies the input file to be read with the input statement.
 | Users must replace the "data-filename" with a filename specifying the
 | directory on the user's computer system in which the downloaded and
 | unzipped data file is physically located (e.g., "c:\temp\data.dat").
 |
 | INPUT:  assigns the name, type, decimal specification (if any), and
 | specifies the beginning and ending column locations for each variable
 | in the data file.
 |
 | LABEL:  assigns descriptive labels to all variables. Variable labels
 | and variable names may be identical for some variables.
 |
 | MISSING VALUE NOTE:  To maintain the original meaning of missing codes,
 | users may want to take advantage of the SAS missing values (the letters
 | A-Z or an underscore preceded by a period).
 |
 | An example of a standard missing value recode:
 |
 |   IF (RELATION = 98 OR RELATION = 99) THEN RELATION = .; 
 |
 | The same example using special missing value recodes:
 |
 |    IF RELATION = 98 THEN RELATION = .A;
 |    IF RELATION = 99 THEN RELATION = .B;
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables named in the INPUT statement.
 |
 | Users should modify this setup file to suit their specific needs.
 | To include these sections in the final SAS setup, users should remove the
 | SAS comment indicators from the desired section(s).
 |
 |-------------------------------------------------------------------------*/

* SAS PROC FORMAT;

/*
PROC FORMAT;
   value AGEENDF
      LOW-19="UNDER 20 YEARS"
      98="Refused"
      99="Don't know" ;
   value AGEQTNP_F
      1="Months"
      2="Weeks"
      3="Days"
      8="Refused"
      9="Don't know" ;
   value AGEQTNUR
      0="LESS THAN 1 MONTH OLD"
      1="1 MONTH OLD"
      2="2 MONTHS OLD"
      3="3 MONTHS OLD"
      98="Refused"
      99="Don't know" ;
   value AGER
      15="15 YEARS"
      16="16 YEARS"
      17="17 YEARS"
      18="18 YEARS"
      19="19 YEARS"
      20="20 YEARS"
      21="21 YEARS"
      22="22 YEARS"
      23="23 YEARS"
      24="24 YEARS"
      25="25 YEARS"
      26="26 YEARS"
      27="27 YEARS"
      28="28 YEARS"
      29="29 YEARS"
      30="30 YEARS"
      31="31 YEARS"
      32="32 YEARS"
      33="33 YEARS"
      34="34 YEARS"
      35="35 YEARS"
      36="36 YEARS"
      37="37 YEARS"
      38="38 YEARS"
      39="39 YEARS"
      40="40 YEARS"
      41="41 YEARS"
      42="42 YEARS"
      43="43 YEARS" ;
   value AGESCRN
      15="15 years"
      16="16 years"
      17="17 years"
      18="18 years"
      19="19 years"
      20="20 years"
      21="21 years"
      22="22 years"
      23="23 years"
      24="24 years"
      25="25 years"
      26="26 years"
      27="27 years"
      28="28 years"
      29="29 years"
      30="30 years"
      31="31 years"
      32="32 years"
      33="33 years"
      34="34 years"
      35="35 years"
      36="36 years"
      37="37 years"
      38="38 years"
      39="39 years"
      40="40 years"
      41="41 years"
      42="42 years"
      43="43 years"
      44="44 years"
      97="Not ascertained" ;
   value BFEEDWKS
      0="Less than 1 week"
      994="STILL BREASTFEEDING THIS CHILD"
      995="NEVER BREAST-FED THIS CHILD" ;
   value BIRTHORD
      1="1ST BIRTH"
      2="2ND BIRTH"
      3="3RD BIRTH"
      4="4TH BIRTH"
      5="5TH BIRTH"
      6="6TH BIRTH"
      7="7TH BIRTH"
      8="8TH BIRTH"
      9="9TH BIRTH"
      10="10TH BIRTH"
      11="11TH BIRTH" ;
   value BIRTHPLC
      1="In a hospital"
      2="In a birthing center"
      3="In your home"
      4="Some other place"
      8="Refused"
      9="Don't know" ;
   value BPABDS
      0="Baby born alive and named"
      1="Baby unnamed and placed for adoption"
      2="Baby unnamed and died soon after birth" ;
   value CMFMT
      9997="Not ascertained"
      9998="Refused"
      9999="Don't know" ;
   value CORINCF
      1="Correct"
      2="Incorrect"
      8="Refused"
      9="Don't know" ;
   value CSECMEDF
      1="Labor was taking too long"
      2="Maternity care provider concerned that baby was too big"
      3="Baby was in the wrong position (e.g, breech)"
      4="Maternity care provider concerned about your health"
      5="Maternity care provider concerned about your baby's health"
      6="Some other medical reason"
      7="There was no medical reason"
      8="Refused"
      9="Don't know" ;
   value CURR_INS
      1="Currently covered by private health insurance or Medi-Gap"
      2="Currently covered by Medicaid, CHIP, or a state-sponsored health plan"
      3="Currently covered by Medicare, military health care, or other government health care"
      4="Currently covered only by a single-service plan, only by the Indian Health Service, or currently not covered by health insurance" ;
   value DK1GEST
      1="Less than 6 months"
      2="6 months or more"
      8="Refused"
      9="Don't know" ;
   value DK3GEST
      1="Less than 3 months"
      2="3 months or more, but less than 6 months"
      3="6 months or more"
      8="Refused"
      9="Don't know" ;
   value EDUCAT
      9="9TH GRADE OR LESS"
      10="10TH GRADE"
      11="11TH GRADE"
      12="12TH GRADE"
      13="1 YEAR OF COLLEGE/GRAD SCHOOL"
      14="2 YEARS OF COLLEGE/GRAD SCHOOL"
      15="3 YEARS OF COLLEGE/GRAD SCHOOL"
      16="4 YEARS OF COLLEGE/GRAD SCHOOL"
      17="5 YEARS OF COLLEGE/GRAD SCHOOL"
      18="6 YEARS OF COLLEGE/GRAD SCHOOL"
      19="7+ YEARS OF COLLEGE/GRAD SCHOOL" ;
   value FEELINGF
      0="VERY UNHAPPY"
      1="1"
      2="2"
      3="3"
      4="4"
      5="5"
      6="6"
      7="7"
      8="8"
      9="9"
      10="VERY HAPPY"
      98="REFUSED"
      99="DON'T KNOW" ;
   value FRSTEATD_NF
      998="Refused"
      999="Don't know" ;
   value FRSTEATD_PF
      1="Months"
      2="Weeks"
      3="Days"
      8="Refused"
      9="Don't know" ;
   value FRSTEATDF
      0="LESS THAN 1 MONTH"
      1="1 MONTH"
      2="2 MONTHS"
      3="3 MONTHS"
      4="4 MONTHS"
      5="5 MONTHS"
      6="6 MONTHS"
      98="Refused"
      99="Don't know" ;
   value GESTM
      98="Refused"
      99="Don't know" ;
   value GESTW
      98="Refused"
      99="Don't know" ;
   value HAGEENDF
      LOW-19="UNDER 20 YEARS"
      98="Refused"
      99="Don't know" ;
   value HIEDUC
      5="9TH GRADE OR LESS"
      6="10TH GRADE"
      7="11TH GRADE"
      8="12TH GRADE, NO DIPLOMA (NOR GED)"
      9="HIGH SCHOOL GRADUATE (DIPLOMA OR GED)"
      10="SOME COLLEGE BUT NO DEGREE"
      11="ASSOCIATE DEGREE IN COLLEGE/UNIVERSITY"
      12="BACHELOR'S DEGREE"
      13="MASTER'S DEGREE"
      14="DOCTORATE DEGREE"
      15="PROFESSIONAL DEGREE" ;
   value HISPANIC
      1="HISPANIC"
      2="NON-HISPANIC" ;
   value HISPRACE
      1="Hispanic"
      2="Non-Hispanic White"
      3="Non-Hispanic Black"
      4="Non-Hispanic Other" ;
   value HISPRACE2F
      1="Hispanic"
      2="Non-Hispanic White, Single Race"
      3="Non-Hispanic Black, Single Race"
      4="Non-Hispanic Other or Multiple Race" ;
   value HOWENDDK
      1="Live birth"
      5="Some other way"
      8="Refused"
      9="Don't know" ;
   value HOWPRGF
      98="Refused"
      99="Don't know" ;
   value HOWPRGWM
      1="Weeks"
      2="Months"
      8="Refused"
      9="Don't know" ;
   value IMPFLG
      0="QUESTIONNAIRE DATA (NOT IMPUTED)"
      1="MULTIPLE REGRESSION IMPUTATION"
      2="LOGICAL IMPUTATION" ;
   value KNEWPREG
      98="Refused"
      99="Don't know" ;
   value LABORFOR
      1="WORKING FULL-TIME"
      2="WORKING PART-TIME"
      3="WORKING-TEMP ILL/ETC"
      4="WORKING-MATERNITY OR FAMILY LEAVE"
      5="NOT WORKING BUT LOOKING FOR WORK"
      6="SCHOOL"
      7="KEEPING HOUSE"
      8="CARING FOR FAMILY"
      9="OTHER" ;
   value LBFMT
      6="6 POUNDS"
      7="7 POUNDS"
      8="8 POUNDS"
      98="Refused"
      99="Don't know" ;
   value LBWF
      1="YES, LOW BIRTH WEIGHT"
      2="NO, NOT LOW BIRTH WEIGHT" ;
   value LIVCHILDR
      1="Child lives with R"
      2="Child is dead"
      3="Child lives with adoptive parents/family"
      4="Child lives with biological father"
      5="Child lives with other relatives"
      6="Child's living arrangements are other or unknown" ;
   value LOBTHWGTF
      1="5 1/2 pounds or more"
      2="Less than 5 1/2 pounds"
      8="Refused"
      9="Don't know" ;
   value LTRIMESF
      1="Less than 3 months"
      2="3 or more months"
      8="Refused"
      9="Don't know" ;
   value MAINOUSE
      1="You did not expect to have sex"
      2="You did not think you could get pregnant"
      3="You didn't really mind if you got pregnant"
      4="You were worried about the side effects of birth control"
      5="Your male partner did not want you to use a birth control method"
      6="Your male partner himself did not want to use a birth control method"
      8="You could not get a method"
      9="You were not taking, or using, your method consistently"
      98="Refused"
      99="Don't know" ;
   value MALFEMF
      1="Male"
      2="Female"
      8="Refused"
      9="Don't know" ;
   value MARN1FMT
      1="MARRIED"
      2="DIVORCED"
      3="WIDOWED"
      4="SEPARATED"
      5="NEVER MARRIED" ;
   value METRO
      1="PRINCIPAL CITY OF MSA"
      2="OTHER MSA"
      3="NOT MSA" ;
   value MNTHFMT
      13="Winter"
      14="Spring"
      15="Summer"
      16="Fall"
      98="Refused"
      99="Don't know" ;
   value MOSPRGF
      98="Refused"
      99="Don't know" ;
   value NBRNALIV
      1="1 BABY"
      2="2 BABIES"
      3="3 OR MORE BABIES"
      8="Refused"
      9="Don't know" ;
   value NBRNLV_S
      1="1 BABY"
      2="2 BABIES"
      3="3 BABIES"
      8="Refused"
      9="Don't know" ;
   value NEWWANTR
      1="Later, overdue"
      2="Right time"
      3="Too soon: by less than 2 years"
      4="Too soon: by 2 years or more"
      5="Didn't care, indifferent"
      6="Unwanted"
      7="Don't know, not sure" ;
   value NOWPRGDK
      1="First trimester"
      2="Second trimester"
      3="Third trimester"
      8="Refused"
      9="Don't know" ;
   value NPOSTSMK
      1="About one cigarette a day or less"
      2="Just a few cigarettes a day (2-4)"
      3="About half a pack a day (5-14)"
      4="About a pack a day (15-24)"
      5="About 1 1/2 packs a day (25-34)"
      6="About 2 packs a day (35-44)"
      7="More than 2 packs a day (45 or more)"
      8="Refused"
      9="Don't know" ;
   value NUMFMT
      996="Still breastfeeding this child"
      998="Refused"
      999="Don't know" ;
   value NUMFMT2F
      996="Still breastfeeding this child"
      997="Not ascertained"
      998="Refused"
      999="Don't know" ;
   value OLDWANTP
      1="LATER, OVERDUE"
      2="RIGHT TIME"
      3="TOO SOON, MISTIMED"
      4="DIDN'T CARE, INDIFFERENT"
      5="UNWANTED"
      6="DON'T KNOW, NOT SURE" ;
   value OUTCOME
      1="LIVE BIRTH"
      2="INDUCED ABORTION"
      3="STILLBIRTH"
      4="MISCARRIAGE"
      5="ECTOPIC PREGNANCY"
      6="CURRENT PREGNANCY" ;
   value OZFMT
      98="Refused"
      99="Don't know" ;
   value PARITY
      0="0 BABIES"
      1="1 BABY"
      2="2 BABIES"
      3="3 BABIES"
      4="4 BABIES" ;
   value PAYBIRTHF
      1="Insurance"
      2="Co-payment or out-of-pocket payment"
      3="Medicaid"
      4="No payment required"
      5="Some other way"
      8="Refused"
      9="Don't know" ;
   value PAYDELIV
      1="OWN INCOME ONLY"
      2="INSURANCE ONLY"
      3="OWN INCOME & INSURANCE ONLY"
      4="MEDICAID/GOVT ASSISTANCE MENTIONED AT ALL"
      5="ALL OTHER COMBINATIONS OF PAYMENT METHODS" ;
   value PMARPREG
      1="YES"
      2="No" ;
   value PNCAREWK
      95="NO PRENATAL CARE FOR THIS PREGNANCY" ;
   value POVERTY
      500="500 PERCENT OF POVERTY LEVEL OR GREATER" ;
   value PREGENDF
      1="Miscarriage"
      2="Stillbirth"
      3="Abortion"
      4="Ectopic or tubal pregnancy"
      5="Live birth by Cesarean section"
      6="Live birth by vaginal delivery"
      8="Refused"
      9="Don't know" ;
   value PREGNUMF
      0="NONE"
      1="1 PREGNANCY"
      2="2 PREGNANCIES"
      3="3 PREGNANCIES"
      4="4 PREGNANCIES"
      5="5 PREGNANCIES"
      6="6 PREGNANCIES" ;
   value PREGORDR
      1="1ST PREGNANCY"
      2="2ND PREGNANCY"
      3="3RD PREGNANCY"
      4="4TH PREGNANCY"
      5="5TH PREGNANCY"
      6="6TH PREGNANCY"
      7="7TH PREGNANCY"
      8="8TH PREGNANCY"
      9="9TH PREGNANCY"
      10="10TH PREGNANCY"
      11="11TH PREGNANCY"
      12="12TH PREGNANCY"
      13="13TH PREGNANCY"
      14="14TH PREGNANCY"
      15="15TH PREGNANCY"
      16="16TH PREGNANCY"
      17="17TH PREGNANCY"
      18="18TH PREGNANCY"
      19="19TH PREGNANCY"
      20="20TH PREGNANCY" ;
   value PRGLNGTH
      98="Refused"
      99="Don't know" ;
   value PRGOUTF
      1="LIVE BIRTH"
      2="PREGNANCY LOSS OR ABORTION"
      3="CURRENT PREGNANCY"
      8="Refused"
      9="Don't know" ;
   value PRIORSMK
      0="None"
      1="About one cigarette a day or less"
      2="Just a few cigarettes a day (2-4)"
      3="About half a pack a day (5-14)"
      4="About a pack a day (15-24)"
      5="About 1 1/2 packs a day (25-34)"
      6="About 2 packs a day (35-44)"
      7="More than 2 packs a day (45 or more)"
      8="Refused"
      9="Don't know" ;
   value PROBBABE
      1="Probably yes"
      5="Probably not"
      6="Didn't care"
      8="Refused"
      9="Don't know" ;
   value PUBASSIS
      1="YES (RECEIVED PUBLIC ASSISTANCE IN [INTERVIEW YEAR -1])"
      2="NO (DID NOT RECEIVE PUBLIC ASSISTANCE IN [INTERVIEW YEAR -1])" ;
   value RACE
      1="BLACK"
      2="WHITE"
      3="OTHER" ;
   value RCURPREG
      1="YES (CURRENTLY PREGNANT)"
      2="NO (NOT CURRENTLY PREGNANT)" ;
   value RELIGION
      1="NO RELIGION"
      2="CATHOLIC"
      3="PROTESTANT"
      4="OTHER RELIGIONS" ;
   value RMAR6FMT
      1="MARRIED"
      2="DIVORCED"
      3="WIDOWED"
      4="SEPARATED"
      5="COHABITING"
      6="NEVER MARRIED, NOT COHABITING" ;
   value RMARITAL
      1="CURRENTLY MARRIED"
      2="NOT MARRIED BUT LIVING WITH OPP SEX PARTNER"
      3="WIDOWED"
      4="DIVORCED"
      5="SEPARATED FOR REASONS OF MARITAL DISCORD"
      6="NEVER BEEN MARRIED" ;
   value SCALEF
      0="0"
      1="1"
      2="2"
      3="3"
      4="4"
      5="5"
      6="6"
      7="7"
      8="8"
      9="9"
      10="10"
      98="Refused"
      99="Don't know" ;
   value TIMINGF
      1="Sooner"
      2="Right time"
      3="Later"
      4="Didn't care"
      8="Refused"
      9="Don't know" ;
   value TOOSOON
      998="Refused"
      999="Don't know" ;
   value TOOSOONN
      998="Refused"
      999="Don't know" ;
   value TOOSOONP
      1="Months"
      2="Years"
      8="Refused"
      9="Don't know" ;
   value TRIMESTRF
      1="Less than 3 months,"
      2="At least 3 months , but less than 6 months"
      3="6 or more months"
      8="Refused"
      9="Don't know" ;
   value WANTBLD2F
      1="Yes"
      2="No"
      6="Not sure, Don't know"
      7="Didn't care"
      8="Refused"
      9="Don't know" ;
   value WANTBOLD
      1="Yes"
      5="No"
      6="Not sure, Don't know"
      8="Refused"
      9="Don't know" ;
   value WHATMETHF
      1="No method used"
      3="Birth control pills"
      4="Condom"
      5="Partner's vasectomy"
      6="Female sterilizing operation, such as tubal sterilization and hysterectomy"
      7="Withdrawal, pulling out"
      8="Depo-Provera, injectables"
      9="Hormonal implant (Norplant, Implanon, or Nexplanon)"
      10="Calendar rhythm, Standard Days, or Cycle Beads method"
      11="Safe period by temperature or cervical mucus test (Two Day, Billings Ovulation, or Sympto-thermal Method)"
      12="Diaphragm"
      13="Female condom, vaginal pouch"
      14="Foam"
      15="Jelly or cream"
      16="Cervical cap"
      17="Suppository, insert"
      18="Today sponge"
      19="IUD, coil, or loop"
      20="Emergency contraception"
      21="Other method"
      22="Respondent was sterile"
      23="Respondent's partner was sterile"
      24="Lunelle injectable (monthly shot)"
      25="Contraceptive patch"
      26="Vaginal contraceptive ring"
      98="Refused"
      99="Don't know" ;
   value WHENTELL
      1="During the pregnancy"
      2="After the [pregnancy ended/baby was born]"
      8="Refused"
      9="Don't know" ;
   value WHERENOWF
      1="With biological father"
      2="With other relatives"
      3="With adoptive family"
      4="Away at school/college"
      5="Living on own"
      6="Other"
      8="Refused"
      9="Don't know" ;
   value WHYNOPGF
      1="Diagnosis of repro problems/condition"
      2="Prior preg or attempt: problems with or treatments/ART needed"
      3="Prior unprotected sex, no preg"
      4="Just didn't think would get preg/misunderstood risk"
      5="Just didn't think could get preg"
      6="Don't know why/didn't think about it/naive/mistake"
      7="Thought method was still working (still in her system)"
      8="Prior/recent miscarriage(s)"
      9="Menstrual cycle problems/irregularity"
      10="Had birth recently"
      11="Perceive infertile or difficult getting preg/carrying to term"
      12="Lack of education/knowledge"
      13="Endometriosis"
      14="Age (too old)"
      15="Breastfeeding"
      16="Believed partner subfecund/infertile/sterile"
      17="Withdrawal failed"
      18="Thought it was safe period in cycle"
      19="Method failure (pill, condom, tubal, IUD)"
      20="Other"
      97="Not ascertained"
      98="Refused"
      99="Don't know" ;
   value WHYNOUSEF
      1="You did not expect to have sex"
      2="You did not think you could get pregnant"
      3="You didn't really mind if you got pregnant"
      4="You were worried about the side effects of birth control"
      5="Your male partner did not want you to use a birth control method"
      6="Your male partner himself did not want to use a birth control method"
      7="(IF VOLUNTEERED:)Respondent was using a method"
      8="You could not get a method"
      9="You were not taking, or using, your method consistently"
      98="Refused"
      99="Don't know" ;
   value WHYPRGF
      1="Your birth control method failed"
      2="You did not use your birth control method properly"
      3="Respondent wasn't using a method"
      8="Refused"
      9="Don't know" ;
   value WKSGEST
      98="Refused"
      99="Don't know" ;
   value WNTBLDNAF
      1="Yes"
      5="No"
      6="Not sure, Don't know"
      7="Not ascertained"
      8="Refused"
      9="Don't know" ;
   value WTHPARTF
      1="Definitely yes"
      2="Probably yes"
      3="Probably no"
      4="Definitely no"
      8="Refused"
      9="Don't know" ;
   value Y1N51D
      1="Yes"
      5="No"
      8="Refused"
      9="Don't know" ;
   value Y1N5NRD
      1="Yes"
      5="No"
      7="Not ascertained"
      8="Refused"
      9="Don't know" ;
   value YEARFMT
      9997="Not ascertained"
      9998="Refused"
      9999="Don't know" ;
   value YRSTRUS
      .="Born in US" ;
   value $QUARTER
      9="9"
      10="10"
      11="11"
      12="12"
      13="13"
      14="14"
      15="15"
      16="16" ;
   value $PHASE
      1="First 10 weeks of quarter"
      2="Last 2 weeks of quarter (double sample)" ;
   value $YEARF
      2013="2013"
      2014="2014"
      2015="2015" ;
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=477;
INPUT
   CASEID  1-5              PREGORDR  6-7            HOWPREG_N  8-9        
   HOWPREG_P  10            MOSCURRP  11             NOWPRGDK  12          
   PREGEND1  13             PREGEND2  14             HOWENDDK  15          
   NBRNALIV  16             MULTBRTH  17             BORNALIV  18          
   DATPRGEN_M  19-20        DATPRGEN_Y  21-24        CMOTPREG  25-28       
   AGEATEND  29-30          HPAGEEND  31-32          GESTASUN_M  33-34     
   GESTASUN_W  35-36        WKSGEST  37-38           MOSGEST  39-40        
   DK1GEST  41              DK2GEST  42              DK3GEST  43           
   BPA_BDSCHECK1  44        BABYSEX1  45             BIRTHWGT_LB1  46-47   
   BIRTHWGT_OZ1  48-49      LOBTHWGT1  50            BABYSEX2  51          
   BIRTHWGT_LB2  52-53      BIRTHWGT_OZ2  54-55      LOBTHWGT2  56         
   BABYSEX3  57             BIRTHWGT_LB3  58         BIRTHWGT_OZ3  59-60   
   LOBTHWGT3  61            BABYDOB_M  62-63         BABYDOB_Y  64-67      
   CMBABDOB  68-71          KIDAGE  72-74            HPAGELB  75-76        
   BIRTHPLC  77             PAYBIRTH1  78            PAYBIRTH2  79         
   PAYBIRTH3  80            CSECPRIM  81             CSECMED1  82          
   CSECMED2  83             CSECMED3  84             CSECMED4  85          
   CSECPLAN  86             KNEWPREG  87-88          TRIMESTR  89          
   LTRIMEST  90             PRIORSMK  91             POSTSMKS  92          
   NPOSTSMK  93             GETPRENA  94             BGNPRENA  95-96       
   PNCTRIM  97              LPNCTRI  98              LIVEHERE1  99         
   ALIVENOW1  100           WHENDIED_M1  101-102     WHENDIED_Y1  103-106  
   CMKIDIED1  107-110       WHENLEFT_M1  111-112     WHENLEFT_Y1  113-116  
   CMKIDLFT1  117-120       LASTAGE1  121-123        WHERENOW1  124        
   LEGAGREE1  125           PARENEND1  126           ANYNURSE1  127        
   FEDSOLID1  128           FRSTEATD_N1  129-131     FRSTEATD_P1  132      
   FRSTEATD1  133-134       QUITNURS1  135           AGEQTNUR_N1  136-138  
   AGEQTNUR_P1  139         AGEQTNUR1  140-141       LIVEHERE2  142        
   ALIVENOW2  143           WHENDIED_M2  144         WHENDIED_Y2  145-148  
   CMKIDIED2  149-152       WHENLEFT_M2  153         WHENLEFT_Y2  154-157  
   CMKIDLFT2  158-161       LASTAGE2  162-164        WHERENOW2  165        
   LEGAGREE2  166           PARENEND2  167           ANYNURSE2  168        
   FEDSOLID2  169           FRSTEATD_N2  170         FRSTEATD_P2  171      
   FRSTEATD2  172           QUITNURS2  173           AGEQTNUR_N2  174-175  
   AGEQTNUR_P2  176         AGEQTNUR2  177-178       LIVEHERE3  179        
   ALIVENOW3  180           WHENDIED_M3  181         WHENDIED_Y3  182      
   CMKIDIED3  183           WHENLEFT_M3  184         WHENLEFT_Y3  185      
   CMKIDLFT3  186           LASTAGE3  187            WHERENOW3  188        
   LEGAGREE3  189           PARENEND3  190           ANYNURSE3  191        
   FEDSOLID3  192           FRSTEATD_N3  193         FRSTEATD_P3  194      
   FRSTEATD3  195           QUITNURS3  196           AGEQTNUR_N3  197      
   AGEQTNUR_P3  198         AGEQTNUR3  199           PRGOUTCOME  200       
   OUTCOM_S  201            NBRNLV_S  202            CMPRGEND  203-206     
   CMENDP_S  207-210        CMPRGBEG  211-214        CMPBEG_S  215-218     
   CMLASTLB  219-222        CMLSTPRG  223-226        CMFSTPRG  227-230     
   CMPG1BEG  231-234        CMINTSTR  235-238        CMINTFIN  239-242     
   CMINTSTROP  243-246      CMINTFINOP  247-250      CMINTSTRCR  251-254   
   CMINTFINCR  255-258      ANYUSINT  259            EVUSEINT  260         
   STOPDUSE  261            WHYSTOPD  262            WHATMETH01  263-264   
   WHATMETH02  265-266      WHATMETH03  267-268      WHATMETH04  269-270   
   RESNOUSE  271            WANTBOLD  272            PROBBABE  273         
   CNFRMNO  274             WANTBLD2  275            TIMINGOK  276         
   TOOSOON_N  277-279       TOOSOON_P  280           WTHPART1  281         
   WTHPART2  282            FEELINPG  283-284        HPWNOLD  285          
   TIMOKHP  286             COHPBEG  287             COHPEND  288          
   TELLFATH  289            WHENTELL  290            TRYSCALE  291-292     
   WANTSCAL  293-294        WHYPRG1  295             WHYPRG2  296          
   WHYNOUSE1  297-298       WHYNOUSE2  299           WHYNOUSE3  300        
   WHYNOUSE4  301           WHYNOUSE5  302           WHYNOPG1  303-304     
   WHYNOPG2  305-306        MAINOUSE  307-308        PRGLNGTH  309-310     
   OUTCOME  311             BIRTHORD  312-313        DATEND  314-317       
   AGEPREG  318-321         DATECON  322-325         AGECON  326-329       
   FMAROUT5  330            PMARPREG  331            RMAROUT6  332         
   FMARCON5  333            RMARCON6  334            LEARNPRG  335-336     
   PNCAREWK  337-338        PAYDELIV  339            LBW1  340             
   LIVCHILD  341            BFEEDWKS  342-344        OLDWANTR  345         
   OLDWANTP  346            WANTRESP  347            WANTPART  348         
   TOOSOON  349-351         NEWWANTR  352            CMBIRTH  353-356      
   AGER  357-358            AGESCRN  359-360         FMARITAL  361         
   RMARITAL  362            EDUCAT  363-364          HIEDUC  365-366       
   RACE  367                HISPANIC  368            HISPRACE  369         
   HISPRACE2  370           RCURPREG  371            PREGNUM  372-373      
   PARITY  374-375          CURR_INS  376            PUBASSIS  377         
   POVERTY  378-380         LABORFOR  381            RELIGION  382         
   METRO  383               BRNOUT  384              YRSTRUS  385-388      
   PRGLNGTH_I  389          OUTCOME_I  390           BIRTHORD_I  391       
   DATEND_I  392            AGEPREG_I  393           DATECON_I  394        
   AGECON_I  395            FMAROUT5_I  396          PMARPREG_I  397       
   RMAROUT6_I  398          FMARCON5_I  399          RMARCON6_I  400       
   LEARNPRG_I  401          PNCAREWK_I  402          PAYDELIV_I  403       
   LBW1_I  404              LIVCHILD_I  405          BFEEDWKS_I  406       
   OLDWANTR_I  407          OLDWANTP_I  408          WANTRESP_I  409       
   WANTPART_I  410          TOOSOON_I  411           NEWWANTR_I  412       
   AGER_I  413              FMARITAL_I  414          RMARITAL_I  415       
   EDUCAT_I  416            HIEDUC_I  417            RACE_I  418           
   HISPANIC_I  419          HISPRACE_I  420          HISPRACE2_I  421      
   RCURPREG_I  422          PREGNUM_I  423           PARITY_I  424         
   CURR_INS_I  425          PUBASSIS_I  426          POVERTY_I  427        
   LABORFOR_I  428          RELIGION_I  429          METRO_I  430          
   WGT2013_2015  431-446    SECU  447                SEST  448-450         
   CMINTVW  451-454         CMLSTYR  455-458         CMJAN3YR  459-462     
   CMJAN4YR  463-466        CMJAN5YR  467-470        QUARTER $ 471-472     
   PHASE $ 473              INTVWYEAR $ 474-477    ;                       


* SAS LABEL STATEMENT;

LABEL
   CASEID = "Case identification number"
   PREGORDR = "Pregnancy order (number)"
   HOWPREG_N = "BB-2 # of Weeks or Months Currently Pregnant"
   HOWPREG_P = "BB-2 Current pregnancy length reported in months or weeks"
   MOSCURRP = "Number of Months Currently Pregnant"
   NOWPRGDK = "BB-3 Which Trimester -- Current Pregnancy"
   PREGEND1 = "BC-1 How Pregnancy Ended - 1st mention"
   PREGEND2 = "BC-1 How Pregnancy Ended - 2nd mention"
   HOWENDDK = "BC-1b Did pregnancy result in a baby/babies born alive or did it end in some other way?"
   NBRNALIV = "BC-2 Number of babies born alive from this pregnancy"
   MULTBRTH = "BC-3 Was this a multiple birth"
   BORNALIV = "Number of babies born alive from this pregnancy"
   DATPRGEN_M = "BC-4a Month when pregnancy ended (if nonlivebirth)"
   DATPRGEN_Y = "BC-4a Year when pregnancy ended (if nonlivebirth)"
   CMOTPREG = "CM for Pregnancy End Date (if nonlivebirth)"
   AGEATEND = "BC-4b R's age at pregnancy's end date"
   HPAGEEND = "BC-4c Father's age at pregnancy's end date"
   GESTASUN_M = "BC-5 Gestational Length of Pregnancy in Months"
   GESTASUN_W = "BC-5 Gestational Length of Pregnancy in Weeks"
   WKSGEST = "Gestational length of completed pregnancy (in weeks)"
   MOSGEST = "Gestational length of completed pregnancy (in months)"
   DK1GEST = "BC-6 DK followup for gestational length of a stillbirth"
   DK2GEST = "BC-7 DK followup for gestational length of a livebirth"
   DK3GEST = "BC-8 DK followup for gestational length of a miscarr/abor/ectop"
   BPA_BDSCHECK1 = "Whether 1st liveborn baby from this pregnancy was BPA or BDS"
   BABYSEX1 = "BD-2 Sex of 1st Liveborn Baby from This Pregnancy"
   BIRTHWGT_LB1 = "BD-3 Birthweight in Pounds - 1st baby from this pregnancy"
   BIRTHWGT_OZ1 = "BD-3 Birthweight in Ounces - 1st baby from this pregnancy"
   LOBTHWGT1 = "BD-4 Is Baby Low Birthweight- 1st baby from this pregnancy"
   BABYSEX2 = "BD-2 Sex of 2nd Liveborn Baby from This Pregnancy"
   BIRTHWGT_LB2 = "BD-3 Birthweight in Pounds - 2nd baby from this pregnancy"
   BIRTHWGT_OZ2 = "BD-3 Birthweight in Ounces - 2nd baby from this pregnancy"
   LOBTHWGT2 = "BD-4 Is Baby Low Birthweight- 2nd baby from this pregnancy"
   BABYSEX3 = "BD-2 Sex of 3rd Liveborn Baby from This Pregnancy"
   BIRTHWGT_LB3 = "BD-3 Birthweight in Pounds - 3rd baby from this pregnancy"
   BIRTHWGT_OZ3 = "BD-3 Birthweight in Ounces - 3rd baby from this pregnancy"
   LOBTHWGT3 = "BD-4 Is Baby Low Birthweight- 3rd baby from this pregnancy"
   BABYDOB_M = "BD-5 Month of delivery for this pregnancy"
   BABYDOB_Y = "BD-5 Year of delivery for this pregnancy"
   CMBABDOB = "CM for baby's or babies' date of birth (delivery date)"
   KIDAGE = "Current Age (in mos) of R's child(ren) from this pregnancy"
   HPAGELB = "BD-6 Father's age at time of child(ren) s birth"
   BIRTHPLC = "BD-7 Place where R gave birth"
   PAYBIRTH1 = "BD-8 Payment for delivery - 1st mention"
   PAYBIRTH2 = "BD-8 Payment for delivery - 2nd mention"
   PAYBIRTH3 = "BD-8 Payment for delivery - 3rd mention"
   CSECPRIM = "BD-9 Is this R's first c-section?"
   CSECMED1 = "BD-10 Medical reasons reported for this C-section - 1st mention"
   CSECMED2 = "BD-10 Medical reasons reported for this C-section - 2nd mention"
   CSECMED3 = "BD-10 Medical reasons reported for this C-section - 3rd mention"
   CSECMED4 = "BD-10 Medical reasons reported for this C-section - 4th mention"
   CSECPLAN = "BD-11 Was this c-section planned for by R?"
   KNEWPREG = "BE-1 Weeks pregnant when R learned she was pregnant"
   TRIMESTR = "BE-2a DK followup for KNEWPREG when gestation >= 6 mos"
   LTRIMEST = "BE-2b DK followup for KNEWPREG when gestation < 6 mos"
   PRIORSMK = "BE-3 Amount R smoked in 6 mos before R knew she was pregnant"
   POSTSMKS = "BE-4 R smoked at all after R knew she was pregnant"
   NPOSTSMK = "BE-5 Amount R smoked during pregnancy after R knew she was preg"
   GETPRENA = "BE-6 Any prenatal care for this pregnancy"
   BGNPRENA = "BE-7 Weeks pregnant at first prenatal care visit"
   PNCTRIM = "BE-8a DK followup for BGNPRENA when gestation >= 6 mos"
   LPNCTRI = "BE-8b DK followup for BGNPRENA when gestation < 6 mos"
   LIVEHERE1 = "BG-1 Whether child lives with R - 1st from this pregnancy"
   ALIVENOW1 = "BG-2 Whether child is still alive - 1st from this pregnancy"
   WHENDIED_M1 = "BG-3 Month when child died - 1st from this pregnancy"
   WHENDIED_Y1 = "BG-3 Year when child died - 1st from this pregnancy"
   CMKIDIED1 = "CM for child's date of death - 1st from this pregnancy"
   WHENLEFT_M1 = "BG-4 Month when child stopped living with R- 1st from this preg"
   WHENLEFT_Y1 = "BG-4 Year when child stopped living with R- 1st from this preg"
   CMKIDLFT1 = "CM for date child stopped living w/R - 1st from this pregnancy"
   LASTAGE1 = "Age (in mos) when child last lived w/R-1st from this pregnancy"
   WHERENOW1 = "BG-5 Where child lives now - 1st from this pregnancy"
   LEGAGREE1 = "BG-6 Legal agreement for where child lives - 1st from this preg"
   PARENEND1 = "BG-7 Is R still legal mother of child - 1st from this pregnancy"
   ANYNURSE1 = "BH-1 Whether R breastfed this child at all - 1st from this preg"
   FEDSOLID1 = "BH-2 Has R fed this child anything other than breastmilk - 1st from this preg"
   FRSTEATD_N1 = "BH-3 Age (mos/wks/day) when 1st fed non-breastmilk - 1st from this preg"
   FRSTEATD_P1 = "BH-3 Units (mos/wks/days) for FRSTEATD_N - 1st from this preg"
   FRSTEATD1 = "Age (in mos) when 1st fed non-breastmilk - 1st from this preg"
   QUITNURS1 = "BH-4 Has R stopped breastfeeding child - 1st from this preg"
   AGEQTNUR_N1 = "BH-5 Age (mos/wks/day) when stopped breastfeeding - 1st from this preg"
   AGEQTNUR_P1 = "BH-5 Units (mos/wks/days) for AGEQTNUR_N - 1st from this preg"
   AGEQTNUR1 = "Age (in mos) when R stopped nursing child - 1st from this preg"
   LIVEHERE2 = "BG-1 Whether child lives with R - 2nd from this pregnancy"
   ALIVENOW2 = "BG-2 Whether child is still alive - 2nd from this pregnancy"
   WHENDIED_M2 = "BG-3 Month when child died - 2nd from this pregnancy"
   WHENDIED_Y2 = "BG-3 Year when child died - 2nd from this pregnancy"
   CMKIDIED2 = "CM for child's date of death - 2nd from this pregnancy"
   WHENLEFT_M2 = "BG-4 Month when child stopped living with R - 2nd from this preg"
   WHENLEFT_Y2 = "BG-4 Year when child stopped living with R - 2nd from this preg"
   CMKIDLFT2 = "CM for date child stopped living w/R - 2nd from this pregnancy"
   LASTAGE2 = "Age (in mos) when child last lived w/R - 2nd from this pregnancy"
   WHERENOW2 = "BG-5 Where child lives now - 2nd from this pregnancy"
   LEGAGREE2 = "BG-6 Legal agreement for where child lives - 2nd from this preg"
   PARENEND2 = "BG-7 Is R still legal mother of child - 2nd from this pregnancy"
   ANYNURSE2 = "BH-1 Whether R breastfed this child at all - 2nd from this preg"
   FEDSOLID2 = "BH-2 Has R fed this child anything other than breastmilk - 2nd from this preg"
   FRSTEATD_N2 = "BH-3 Age (mos/wks/day) when 1st fed non-breastmilk - 2nd from this preg"
   FRSTEATD_P2 = "BH-3 Units (mos/wks/days) for FRSTEATD_N - 2nd from this preg"
   FRSTEATD2 = "Age (in mos) when 1st fed non-breastmilk - 2nd from this preg"
   QUITNURS2 = "BH-4 Has R stopped breastfeeding child - 2nd from this preg"
   AGEQTNUR_N2 = "BH-5 Age (mos/wks/day) when stopped breastfeeding - 2nd from this preg"
   AGEQTNUR_P2 = "BH-5 Units (mos/wks/days) for AGEQTNUR_N - 2nd from this preg"
   AGEQTNUR2 = "Age (in mos) when R stopped nursing child - 2nd from this preg"
   LIVEHERE3 = "BG-1 Whether child lives with R - 3rd from this pregnancy"
   ALIVENOW3 = "BG-2 Whether child is still alive - 3rd from this pregnancy"
   WHENDIED_M3 = "BG-3 Month when child died - 3rd from this pregnancy"
   WHENDIED_Y3 = "BG-3 Year when child died - 3rd from this pregnancy"
   CMKIDIED3 = "CM for child's date of death - 3rd from this pregnancy"
   WHENLEFT_M3 = "BG-4 Month when child stopped living with R - 3rd from this preg"
   WHENLEFT_Y3 = "BG-4 Year when child stopped living with R - 3rd from this preg"
   CMKIDLFT3 = "CM for date child stopped living w/R - 3rd from this pregnancy"
   LASTAGE3 = "Age (in mos) when child last lived w/R - 3rd from this pregnancy"
   WHERENOW3 = "BG-5 Where child lives now - 3rd from this pregnancy"
   LEGAGREE3 = "BG-6 Legal agreement for where child lives - 3rd from this preg"
   PARENEND3 = "BG-7 Is R still legal mother of child - 3rd from this pregnancy"
   ANYNURSE3 = "BH-1 Whether R breastfed this child at all - 3rd from this preg"
   FEDSOLID3 = "BH-2 Has R fed this child anything other than breastmilk - 3rd from this preg"
   FRSTEATD_N3 = "BH-3 Age (mos/wks/day) when 1st fed non-breastmilk - 3rd from this preg"
   FRSTEATD_P3 = "BH-3 Units (mos/wks/days) for FRSTEATD_N - 3rd from this preg"
   FRSTEATD3 = "Age (in mos) when 1st fed non-breastmilk - 3rd from this preg"
   QUITNURS3 = "BH-4 Has R stopped breastfeeding child - 3rd from this preg"
   AGEQTNUR_N3 = "BH-5 Age (mos/wks/day) when stopped breastfeeding - 3rd from this preg"
   AGEQTNUR_P3 = "BH-5 Units (mos/wks/days) for AGEQTNUR_N - 3rd from this preg"
   AGEQTNUR3 = "Age (in mos) when R stopped nursing child - 3rd from this preg"
   PRGOUTCOME = "Outcome of Pregnancy (based on priority ordering)"
   OUTCOM_S = "Outcome of pregnancy (based on corrected/chron sorted data)"
   NBRNLV_S = "# of babies born alive from this preg (based on CCSD)"
   CMPRGEND = "CM for Pregnancy End Date (regardless of outcome)"
   CMENDP_S = "CM date when pregnancy ended (based on CCSD)"
   CMPRGBEG = "CM for Pregnancy Start Date"
   CMPBEG_S = "CM date when pregnancy began (based on CCSD)"
   CMLASTLB = "CM for R's most recent live birth (based on CCSD)"
   CMLSTPRG = "CM for R's most recent completed pregnancy (based on CCSD)"
   CMFSTPRG = "CM for R's first completed pregnancy (based on CCSD)"
   CMPG1BEG = "CM date when R's 1st pregnancy began (based on CCSD)"
   CMINTSTR = "CM for date of beginning of pregnancy interval"
   CMINTFIN = "CM for date of end of pregnancy interval"
   CMINTSTROP = "Open interval: CM of date of beginning"
   CMINTFINOP = "Open interval: CM of date of end (mon of interview)"
   CMINTSTRCR = "Currently pregnant: CM of date of beginning of interval"
   CMINTFINCR = "Currently pregnant: CM of date of end of interval (mon of interview)"
   ANYUSINT = "Any method use in pregnancy interval"
   EVUSEINT = "EG-1 Use any method in pregnancy interval?"
   STOPDUSE = "EG-2 Before you became preg, stop using all methods?"
   WHYSTOPD = "EG-3 Stop using methods before preg because wanted preg?"
   WHATMETH01 = "EG-4 Method(s) using when became preg - 1st mention"
   WHATMETH02 = "EG-4 Method(s) using when became preg - 2nd mention"
   WHATMETH03 = "EG-4 Method(s) using when became preg - 3rd mention"
   WHATMETH04 = "EG-4 Method(s) using when became preg - 4th mention"
   RESNOUSE = "EG-5 Reason not using/had stopped using method bec. wanted preg?"
   WANTBOLD = "EG-6 Right bef preg, want to have baby at any time in future?"
   PROBBABE = "EG-7 probably want baby at any time in future or not?"
   CNFRMNO = "EG-8 Verify didn't want baby at any time in future"
   WANTBLD2 = "EG-9 Right before preg, want to have baby at any time in future? (2nd asking)"
   TIMINGOK = "EG-10 Become preg too soon, right time, or later than you wanted?"
   TOOSOON_N = "EG-11 How much sooner than wanted became preg (months or years)"
   TOOSOON_P = "EG-11 Choose mons or yrs for how much sooner became preg than wanted"
   WTHPART1 = "EG-12a Right before preg, want to have baby with that partner?"
   WTHPART2 = "EG-12b Right bef. preg, think might ever want to have baby w/that partner?"
   FEELINPG = "EG-13 How happy to be preg. scale (0-10)"
   HPWNOLD = "EG-16 Right bef preg, did the father want R to have baby at any time in future?"
   TIMOKHP = "EG-17 R became preg sooner, right time, or later than father of preg wanted"
   COHPBEG = "EG-18a Was R living w/father of preg at beginning of preg"
   COHPEND = "EG-18b Was R living w/father of preg when preg ended/baby was born"
   TELLFATH = "EG-19 Did R tell father of preg that she was pregnant"
   WHENTELL = "EG-20 When did R tell father of preg about pregnancy: during or after?"
   TRYSCALE = "EG-21 How hard trying to get/avoid pregnancy (0-10 scale)"
   WANTSCAL = "EG-22 How much wanted to get/avoid pregnancy (0-10 scale)"
   WHYPRG1 = "EG-23 (unintended preg): method fail or R wasn't using properly-1st mention"
   WHYPRG2 = "EG-23 (unintended preg): method fail or R wasn't using properly-2nd mention"
   WHYNOUSE1 = "EG-24 (unintended preg) Reason didn't use contraceptn - 1st"
   WHYNOUSE2 = "EG-24 (unintended preg) Reason didn't use contraceptn - 2nd"
   WHYNOUSE3 = "EG-24 (unintended preg) Reason didn't use contraceptn - 3rd"
   WHYNOUSE4 = "EG-24 (unintended preg) Reason didn't use contraceptn - 4th"
   WHYNOUSE5 = "EG-24 (unintended preg) Reason didn't use contraceptn - 5th"
   WHYNOPG1 = "EG-24aa open-ended response: reason didn't think could get preg - 1st"
   WHYNOPG2 = "EG-24aa open-ended response: reason didn't think could get preg - 2nd"
   MAINOUSE = "EG-24a (unintended preg) Main reason didn't use contraception"
   PRGLNGTH = "Duration of completed pregnancy in weeks"
   OUTCOME = "Pregnancy outcome"
   BIRTHORD = "Birth order"
   DATEND = "CM date pregnancy ended"
   AGEPREG = "Age at pregnancy outcome"
   DATECON = "CM date of conception"
   AGECON = "Age at time of conception"
   FMAROUT5 = "Formal marital status at pregnancy outcome"
   PMARPREG = "Whether pregnancy ended before R's 1st marriage (premaritally)"
   RMAROUT6 = "Informal marital status at pregnancy outcome - 6 categories"
   FMARCON5 = "Formal marital status at conception - 5 categories"
   RMARCON6 = "Informal marital status at conception - 6 categories"
   LEARNPRG = "Number of weeks pregnant when R learned she was pregnant"
   PNCAREWK = "Number of weeks pregnant at first prenatal care"
   PAYDELIV = "Payment for delivery"
   LBW1 = "Low birthweight - 1st baby from this preg"
   LIVCHILD = "Living arrangements for 1st liveborn child from this pregnancy"
   BFEEDWKS = "Duration of breastfeeding in weeks"
   OLDWANTR = "Wantedness of pregnancy - respondent - Cycle 4 version"
   OLDWANTP = "Wantedness of preg - R's partner (father of pregnancy) - Cycle 4 version"
   WANTRESP = "Wantedness of pregnancy -- Respondent (RECODE)"
   WANTPART = "Wantedness of pregnancy -- R's partner (RECODE)"
   TOOSOON = "Number of months too soon pregnancy occurred"
   NEWWANTR = "Detailed wantedness of pregnancy - respondent"
   CMBIRTH = "Century month of R's birth"
   AGER = "Age at interview"
   AGESCRN = "R's age at screener"
   FMARITAL = "Formal marital status"
   RMARITAL = "Informal Marital Status"
   EDUCAT = "Education (completed years of schooling)"
   HIEDUC = "Highest completed year of school or degree"
   RACE = "Race"
   HISPANIC = "Hispanic origin"
   HISPRACE = "Race & Hispanic origin of respondent - 1977 OMB standards (respondent recode)"
   HISPRACE2 = "Race & Hispanic origin of respondent - 1997 OMB standards (respondent recode)"
   RCURPREG = "Pregnant at time of interview"
   PREGNUM = "CAPI-based total number of pregnancies"
   PARITY = "Total number of live births"
   CURR_INS = "Current health insurance coverage"
   PUBASSIS = "Whether R received public assistance in prior calendar year"
   POVERTY = "Poverty level income"
   LABORFOR = "Labor force status"
   RELIGION = "Current religious affiliation"
   METRO = "Place of residence (Metropolitan / Nonmetropolitan)"
   BRNOUT = "IB-8 R born outside of US"
   YRSTRUS = "Year R came to the United States"
   PRGLNGTH_I = "PRGLNGTH Imputation Flag"
   OUTCOME_I = "OUTCOME Imputation Flag"
   BIRTHORD_I = "BIRTHORD Imputation Flag"
   DATEND_I = "DATEND Imputation Flag"
   AGEPREG_I = "AGEPREG Imputation Flag"
   DATECON_I = "DATECON Imputation Flag"
   AGECON_I = "AGECON Imputation Flag"
   FMAROUT5_I = "FMAROUT5 Imputation Flag"
   PMARPREG_I = "PMARPREG Imputation Flag"
   RMAROUT6_I = "RMAROUT6 Imputation Flag"
   FMARCON5_I = "FMARCON5 Imputation Flag"
   RMARCON6_I = "RMARCON6 Imputation Flag"
   LEARNPRG_I = "LEARNPRG Imputation Flag"
   PNCAREWK_I = "PNCAREWK Imputation Flag"
   PAYDELIV_I = "PAYDELIV Imputation Flag"
   LBW1_I = "LBW1 Imputation Flag"
   LIVCHILD_I = "LIVCHILD Imputation Flag"
   BFEEDWKS_I = "BFEEDWKS Imputation Flag"
   OLDWANTR_I = "OLDWANTR Imputation Flag"
   OLDWANTP_I = "OLDWANTP Imputation Flag"
   WANTRESP_I = "WANTRESP Imputation Flag"
   WANTPART_I = "WANTPART Imputation Flag"
   TOOSOON_I = "TOOSOON Imputation Flag"
   NEWWANTR_I = "NEWWANTR Imputation Flag"
   AGER_I = "AGER Imputation Flag"
   FMARITAL_I = "FMARITAL Imputation Flag"
   RMARITAL_I = "RMARITAL Imputation Flag"
   EDUCAT_I = "EDUCAT Imputation Flag"
   HIEDUC_I = "HIEDUC Imputation Flag"
   RACE_I = "RACE Imputation Flag"
   HISPANIC_I = "HISPANIC Imputation Flag"
   HISPRACE_I = "HISPRACE Imputation Flag"
   HISPRACE2_I = "HISPRACE2 Imputation Flag"
   RCURPREG_I = "RCURPREG Imputation Flag"
   PREGNUM_I = "PREGNUM Imputation Flag"
   PARITY_I = "PARITY Imputation Flag"
   CURR_INS_I = "CURR_INS Imputation Flag"
   PUBASSIS_I = "PUBASSIS Imputation Flag"
   POVERTY_I = "POVERTY Imputation Flag"
   LABORFOR_I = "LABORFOR Imputation Flag"
   RELIGION_I = "RELIGION Imputation Flag"
   METRO_I = "METRO Imputation Flag"
   WGT2013_2015 = "Final weight for the 2013-2015 NSFG"
   SECU = "Randomized version of the sampling error computational unit"
   SEST = "Randomized version of the stratum"
   CMINTVW = "Century month for date of interview  (Computed in Flow Check A-1)"
   CMLSTYR = "Century month for month/year of interview minus one year (Computed in Flow Check A-1)"
   CMJAN3YR = "Century month of January Three Years Prior to Year of interview (Computed in Flow Check A-1)"
   CMJAN4YR = "Century month of January Four Years Prior to Year of Interview (Computed in Flow Check A-1)"
   CMJAN5YR = "Century month of January Five Years Prior to Year of Interview (Computed in Flow Check A-1)"
   QUARTER = "Quarter when case was sampled"
   PHASE = "Regular- or double-sample portion of the quarter"
   INTVWYEAR = "Calendar year when interview occurred" ;


* SAS FORMAT STATEMENT;

/*
FORMAT
   PREGORDR        PREGORDR.
   HOWPREG_N       HOWPRGF.
   HOWPREG_P       HOWPRGWM.
   MOSCURRP        MOSPRGF.
   NOWPRGDK        NOWPRGDK.
   PREGEND1        PREGENDF.
   PREGEND2        PREGENDF.
   HOWENDDK        HOWENDDK.
   NBRNALIV        NBRNALIV.
   MULTBRTH        Y1N51D.
   BORNALIV        NBRNALIV.
   DATPRGEN_M      MNTHFMT.
   DATPRGEN_Y      YEARFMT.
   CMOTPREG        CMFMT.
   AGEATEND        AGEENDF.
   HPAGEEND        HAGEENDF.
   GESTASUN_M      GESTM.
   GESTASUN_W      GESTW.
   WKSGEST         WKSGEST.
   MOSGEST         GESTM.
   DK1GEST         DK1GEST.
   DK2GEST         Y1N51D.
   DK3GEST         DK3GEST.
   BPA_BDSCHECK1   BPABDS.
   BABYSEX1        MALFEMF.
   BIRTHWGT_LB1    LBFMT.
   BIRTHWGT_OZ1    OZFMT.
   LOBTHWGT1       LOBTHWGTF.
   BABYSEX2        MALFEMF.
   BIRTHWGT_LB2    LBFMT.
   BIRTHWGT_OZ2    OZFMT.
   LOBTHWGT2       LOBTHWGTF.
   BABYSEX3        MALFEMF.
   BIRTHWGT_LB3    LBFMT.
   BIRTHWGT_OZ3    OZFMT.
   LOBTHWGT3       LOBTHWGTF.
   BABYDOB_M       MNTHFMT.
   BABYDOB_Y       YEARFMT.
   CMBABDOB        CMFMT.
   KIDAGE          NUMFMT.
   HPAGELB         HAGEENDF.
   BIRTHPLC        BIRTHPLC.
   PAYBIRTH1       PAYBIRTHF.
   PAYBIRTH2       PAYBIRTHF.
   PAYBIRTH3       PAYBIRTHF.
   CSECPRIM        Y1N51D.
   CSECMED1        CSECMEDF.
   CSECMED2        CSECMEDF.
   CSECMED3        CSECMEDF.
   CSECMED4        CSECMEDF.
   CSECPLAN        Y1N51D.
   KNEWPREG        KNEWPREG.
   TRIMESTR        TRIMESTRF.
   LTRIMEST        LTRIMESF.
   PRIORSMK        PRIORSMK.
   POSTSMKS        Y1N51D.
   NPOSTSMK        NPOSTSMK.
   GETPRENA        Y1N51D.
   BGNPRENA        KNEWPREG.
   PNCTRIM         TRIMESTRF.
   LPNCTRI         LTRIMESF.
   LIVEHERE1       Y1N51D.
   ALIVENOW1       Y1N51D.
   WHENDIED_M1     MNTHFMT.
   WHENDIED_Y1     YEARFMT.
   CMKIDIED1       CMFMT.
   WHENLEFT_M1     MNTHFMT.
   WHENLEFT_Y1     YEARFMT.
   CMKIDLFT1       CMFMT.
   LASTAGE1        NUMFMT2F.
   WHERENOW1       WHERENOWF.
   LEGAGREE1       Y1N51D.
   PARENEND1       Y1N51D.
   ANYNURSE1       Y1N51D.
   FEDSOLID1       Y1N51D.
   FRSTEATD_N1     FRSTEATD_NF.
   FRSTEATD_P1     FRSTEATD_PF.
   FRSTEATD1       FRSTEATDF.
   QUITNURS1       Y1N51D.
   AGEQTNUR_N1     NUMFMT.
   AGEQTNUR_P1     AGEQTNP_F.
   AGEQTNUR1       AGEQTNUR.
   LIVEHERE2       Y1N51D.
   ALIVENOW2       Y1N51D.
   WHENDIED_M2     MNTHFMT.
   WHENDIED_Y2     YEARFMT.
   CMKIDIED2       CMFMT.
   WHENLEFT_M2     MNTHFMT.
   WHENLEFT_Y2     YEARFMT.
   CMKIDLFT2       CMFMT.
   LASTAGE2        NUMFMT2F.
   WHERENOW2       WHERENOWF.
   LEGAGREE2       Y1N51D.
   PARENEND2       Y1N51D.
   ANYNURSE2       Y1N51D.
   FEDSOLID2       Y1N51D.
   FRSTEATD_N2     FRSTEATD_NF.
   FRSTEATD_P2     FRSTEATD_PF.
   FRSTEATD2       FRSTEATDF.
   QUITNURS2       Y1N51D.
   AGEQTNUR_N2     NUMFMT.
   AGEQTNUR_P2     AGEQTNP_F.
   AGEQTNUR2       AGEQTNUR.
   LIVEHERE3       Y1N51D.
   ALIVENOW3       Y1N51D.
   WHENDIED_M3     MNTHFMT.
   WHENDIED_Y3     YEARFMT.
   CMKIDIED3       CMFMT.
   WHENLEFT_M3     MNTHFMT.
   WHENLEFT_Y3     YEARFMT.
   CMKIDLFT3       CMFMT.
   LASTAGE3        NUMFMT2F.
   WHERENOW3       WHERENOWF.
   LEGAGREE3       Y1N51D.
   PARENEND3       Y1N51D.
   ANYNURSE3       Y1N51D.
   FEDSOLID3       Y1N51D.
   FRSTEATD_N3     FRSTEATD_NF.
   FRSTEATD_P3     FRSTEATD_PF.
   FRSTEATD3       FRSTEATDF.
   QUITNURS3       Y1N51D.
   AGEQTNUR_N3     NUMFMT.
   AGEQTNUR_P3     AGEQTNP_F.
   AGEQTNUR3       AGEQTNUR.
   PRGOUTCOME      PRGOUTF.
   OUTCOM_S        PRGOUTF.
   NBRNLV_S        NBRNLV_S.
   CMPRGEND        CMFMT.
   CMENDP_S        CMFMT.
   CMPRGBEG        CMFMT.
   CMPBEG_S        CMFMT.
   CMLASTLB        CMFMT.
   CMLSTPRG        CMFMT.
   CMFSTPRG        CMFMT.
   CMPG1BEG        CMFMT.
   CMINTSTR        CMFMT.
   CMINTFIN        CMFMT.
   CMINTSTROP      CMFMT.
   CMINTFINOP      CMFMT.
   CMINTSTRCR      CMFMT.
   CMINTFINCR      CMFMT.
   ANYUSINT        Y1N5NRD.
   EVUSEINT        Y1N51D.
   STOPDUSE        Y1N51D.
   WHYSTOPD        Y1N51D.
   WHATMETH01      WHATMETHF.
   WHATMETH02      WHATMETHF.
   WHATMETH03      WHATMETHF.
   WHATMETH04      WHATMETHF.
   RESNOUSE        Y1N51D.
   WANTBOLD        WANTBOLD.
   PROBBABE        PROBBABE.
   CNFRMNO         CORINCF.
   WANTBLD2        WANTBLD2F.
   TIMINGOK        TIMINGF.
   TOOSOON_N       TOOSOONN.
   TOOSOON_P       TOOSOONP.
   WTHPART1        WTHPARTF.
   WTHPART2        WTHPARTF.
   FEELINPG        FEELINGF.
   HPWNOLD         WNTBLDNAF.
   TIMOKHP         TIMINGF.
   COHPBEG         Y1N51D.
   COHPEND         Y1N51D.
   TELLFATH        Y1N51D.
   WHENTELL        WHENTELL.
   TRYSCALE        SCALEF.
   WANTSCAL        SCALEF.
   WHYPRG1         WHYPRGF.
   WHYPRG2         WHYPRGF.
   WHYNOUSE1       WHYNOUSEF.
   WHYNOUSE2       WHYNOUSEF.
   WHYNOUSE3       WHYNOUSEF.
   WHYNOUSE4       WHYNOUSEF.
   WHYNOUSE5       WHYNOUSEF.
   WHYNOPG1        WHYNOPGF.
   WHYNOPG2        WHYNOPGF.
   MAINOUSE        MAINOUSE.
   PRGLNGTH        PRGLNGTH.
   OUTCOME         OUTCOME.
   BIRTHORD        BIRTHORD.
   DATEND          CMFMT.
   DATECON         CMFMT.
   FMAROUT5        MARN1FMT.
   PMARPREG        PMARPREG.
   RMAROUT6        RMAR6FMT.
   FMARCON5        MARN1FMT.
   RMARCON6        RMAR6FMT.
   PNCAREWK        PNCAREWK.
   PAYDELIV        PAYDELIV.
   LBW1            LBWF.
   LIVCHILD        LIVCHILDR.
   BFEEDWKS        BFEEDWKS.
   OLDWANTR        OLDWANTP.
   OLDWANTP        OLDWANTP.
   WANTRESP        OLDWANTP.
   WANTPART        OLDWANTP.
   TOOSOON         TOOSOON.
   NEWWANTR        NEWWANTR.
   CMBIRTH         CMFMT.
   AGER            AGER.
   AGESCRN         AGESCRN.
   FMARITAL        MARN1FMT.
   RMARITAL        RMARITAL.
   EDUCAT          EDUCAT.
   HIEDUC          HIEDUC.
   RACE            RACE.
   HISPANIC        HISPANIC.
   HISPRACE        HISPRACE.
   HISPRACE2       HISPRACE2F.
   RCURPREG        RCURPREG.
   PREGNUM         PREGNUMF.
   PARITY          PARITY.
   CURR_INS        CURR_INS.
   PUBASSIS        PUBASSIS.
   POVERTY         POVERTY.
   LABORFOR        LABORFOR.
   RELIGION        RELIGION.
   METRO           METRO.
   BRNOUT          Y1N51D.
   YRSTRUS         YRSTRUS.
   PRGLNGTH_I      IMPFLG.
   OUTCOME_I       IMPFLG.
   BIRTHORD_I      IMPFLG.
   DATEND_I        IMPFLG.
   AGEPREG_I       IMPFLG.
   DATECON_I       IMPFLG.
   AGECON_I        IMPFLG.
   FMAROUT5_I      IMPFLG.
   PMARPREG_I      IMPFLG.
   RMAROUT6_I      IMPFLG.
   FMARCON5_I      IMPFLG.
   RMARCON6_I      IMPFLG.
   LEARNPRG_I      IMPFLG.
   PNCAREWK_I      IMPFLG.
   PAYDELIV_I      IMPFLG.
   LBW1_I          IMPFLG.
   LIVCHILD_I      IMPFLG.
   BFEEDWKS_I      IMPFLG.
   OLDWANTR_I      IMPFLG.
   OLDWANTP_I      IMPFLG.
   WANTRESP_I      IMPFLG.
   WANTPART_I      IMPFLG.
   TOOSOON_I       IMPFLG.
   NEWWANTR_I      IMPFLG.
   AGER_I          IMPFLG.
   FMARITAL_I      IMPFLG.
   RMARITAL_I      IMPFLG.
   EDUCAT_I        IMPFLG.
   HIEDUC_I        IMPFLG.
   RACE_I          IMPFLG.
   HISPANIC_I      IMPFLG.
   HISPRACE_I      IMPFLG.
   HISPRACE2_I     IMPFLG.
   RCURPREG_I      IMPFLG.
   PREGNUM_I       IMPFLG.
   PARITY_I        IMPFLG.
   CURR_INS_I      IMPFLG.
   PUBASSIS_I      IMPFLG.
   POVERTY_I       IMPFLG.
   LABORFOR_I      IMPFLG.
   RELIGION_I      IMPFLG.
   METRO_I         IMPFLG.
   CMINTVW         CMFMT.
   CMLSTYR         CMFMT.
   CMJAN3YR        CMFMT.
   CMJAN4YR        CMFMT.
   CMJAN5YR        CMFMT.
   QUARTER         $QUARTER.
   PHASE           $PHASE.
   INTVWYEAR       $YEARF. ;
*/


* SAS LENGTH STATEMENT;

LENGTH
   CASEID 6                 PREGORDR 3               HOWPREG_N 3           
   HOWPREG_P 3              MOSCURRP 3               NOWPRGDK 3            
   PREGEND1 3               PREGEND2 3               HOWENDDK 3            
   NBRNALIV 3               MULTBRTH 3               BORNALIV 3            
   DATPRGEN_M 3             DATPRGEN_Y 4             CMOTPREG 4            
   AGEATEND 3               HPAGEEND 3               GESTASUN_M 3          
   GESTASUN_W 3             WKSGEST 3                MOSGEST 3             
   DK1GEST 3                DK2GEST 3                DK3GEST 3             
   BPA_BDSCHECK1 3          BABYSEX1 3               BIRTHWGT_LB1 3        
   BIRTHWGT_OZ1 3           LOBTHWGT1 3              BABYSEX2 3            
   BIRTHWGT_LB2 3           BIRTHWGT_OZ2 3           LOBTHWGT2 3           
   BABYSEX3 3               BIRTHWGT_LB3 3           BIRTHWGT_OZ3 3        
   LOBTHWGT3 3              BABYDOB_M 3              BABYDOB_Y 4           
   CMBABDOB 4               KIDAGE 4                 HPAGELB 3             
   BIRTHPLC 3               PAYBIRTH1 3              PAYBIRTH2 3           
   PAYBIRTH3 3              CSECPRIM 3               CSECMED1 3            
   CSECMED2 3               CSECMED3 3               CSECMED4 3            
   CSECPLAN 3               KNEWPREG 3               TRIMESTR 3            
   LTRIMEST 3               PRIORSMK 3               POSTSMKS 3            
   NPOSTSMK 3               GETPRENA 3               BGNPRENA 3            
   PNCTRIM 3                LPNCTRI 3                LIVEHERE1 3           
   ALIVENOW1 3              WHENDIED_M1 3            WHENDIED_Y1 4         
   CMKIDIED1 4              WHENLEFT_M1 3            WHENLEFT_Y1 4         
   CMKIDLFT1 4              LASTAGE1 4               WHERENOW1 3           
   LEGAGREE1 3              PARENEND1 3              ANYNURSE1 3           
   FEDSOLID1 3              FRSTEATD_N1 4            FRSTEATD_P1 3         
   FRSTEATD1 3              QUITNURS1 3              AGEQTNUR_N1 4         
   AGEQTNUR_P1 3            AGEQTNUR1 3              LIVEHERE2 3           
   ALIVENOW2 3              WHENDIED_M2 3            WHENDIED_Y2 4         
   CMKIDIED2 4              WHENLEFT_M2 3            WHENLEFT_Y2 4         
   CMKIDLFT2 4              LASTAGE2 4               WHERENOW2 3           
   LEGAGREE2 3              PARENEND2 3              ANYNURSE2 3           
   FEDSOLID2 3              FRSTEATD_N2 3            FRSTEATD_P2 3         
   FRSTEATD2 3              QUITNURS2 3              AGEQTNUR_N2 3         
   AGEQTNUR_P2 3            AGEQTNUR2 3              LIVEHERE3 3           
   ALIVENOW3 3              WHENDIED_M3 3            WHENDIED_Y3 3         
   CMKIDIED3 3              WHENLEFT_M3 3            WHENLEFT_Y3 3         
   CMKIDLFT3 3              LASTAGE3 3               WHERENOW3 3           
   LEGAGREE3 3              PARENEND3 3              ANYNURSE3 3           
   FEDSOLID3 3              FRSTEATD_N3 3            FRSTEATD_P3 3         
   FRSTEATD3 3              QUITNURS3 3              AGEQTNUR_N3 3         
   AGEQTNUR_P3 3            AGEQTNUR3 3              PRGOUTCOME 3          
   OUTCOM_S 3               NBRNLV_S 3               CMPRGEND 4            
   CMENDP_S 4               CMPRGBEG 4               CMPBEG_S 4            
   CMLASTLB 4               CMLSTPRG 4               CMFSTPRG 4            
   CMPG1BEG 4               CMINTSTR 4               CMINTFIN 4            
   CMINTSTROP 4             CMINTFINOP 4             CMINTSTRCR 4          
   CMINTFINCR 4             ANYUSINT 3               EVUSEINT 3            
   STOPDUSE 3               WHYSTOPD 3               WHATMETH01 3          
   WHATMETH02 3             WHATMETH03 3             WHATMETH04 3          
   RESNOUSE 3               WANTBOLD 3               PROBBABE 3            
   CNFRMNO 3                WANTBLD2 3               TIMINGOK 3            
   TOOSOON_N 4              TOOSOON_P 3              WTHPART1 3            
   WTHPART2 3               FEELINPG 3               HPWNOLD 3             
   TIMOKHP 3                COHPBEG 3                COHPEND 3             
   TELLFATH 3               WHENTELL 3               TRYSCALE 3            
   WANTSCAL 3               WHYPRG1 3                WHYPRG2 3             
   WHYNOUSE1 3              WHYNOUSE2 3              WHYNOUSE3 3           
   WHYNOUSE4 3              WHYNOUSE5 3              WHYNOPG1 3            
   WHYNOPG2 3               MAINOUSE 3               PRGLNGTH 3            
   OUTCOME 3                BIRTHORD 3               DATEND 4              
   AGEPREG 4                DATECON 4                AGECON 4              
   FMAROUT5 3               PMARPREG 3               RMAROUT6 3            
   FMARCON5 3               RMARCON6 3               LEARNPRG 3            
   PNCAREWK 3               PAYDELIV 3               LBW1 3                
   LIVCHILD 3               BFEEDWKS 4               OLDWANTR 3            
   OLDWANTP 3               WANTRESP 3               WANTPART 3            
   TOOSOON 4                NEWWANTR 3               CMBIRTH 4             
   AGER 3                   AGESCRN 3                FMARITAL 3            
   RMARITAL 3               EDUCAT 3                 HIEDUC 3              
   RACE 3                   HISPANIC 3               HISPRACE 3            
   HISPRACE2 3              RCURPREG 3               PREGNUM 3             
   PARITY 3                 CURR_INS 3               PUBASSIS 3            
   POVERTY 4                LABORFOR 3               RELIGION 3            
   METRO 3                  BRNOUT 3                 YRSTRUS 4             
   PRGLNGTH_I 3             OUTCOME_I 3              BIRTHORD_I 3          
   DATEND_I 3               AGEPREG_I 3              DATECON_I 3           
   AGECON_I 3               FMAROUT5_I 3             PMARPREG_I 3          
   RMAROUT6_I 3             FMARCON5_I 3             RMARCON6_I 3          
   LEARNPRG_I 3             PNCAREWK_I 3             PAYDELIV_I 3          
   LBW1_I 3                 LIVCHILD_I 3             BFEEDWKS_I 3          
   OLDWANTR_I 3             OLDWANTP_I 3             WANTRESP_I 3          
   WANTPART_I 3             TOOSOON_I 3              NEWWANTR_I 3          
   AGER_I 3                 FMARITAL_I 3             RMARITAL_I 3          
   EDUCAT_I 3               HIEDUC_I 3               RACE_I 3              
   HISPANIC_I 3             HISPRACE_I 3             HISPRACE2_I 3         
   RCURPREG_I 3             PREGNUM_I 3              PARITY_I 3            
   CURR_INS_I 3             PUBASSIS_I 3             POVERTY_I 3           
   LABORFOR_I 3             RELIGION_I 3             METRO_I 3             
   SECU 3                   SEST 4                   CMINTVW 4             
   CMLSTYR 4                CMJAN3YR 4               CMJAN4YR 4            
   CMJAN5YR 4 ;

RUN ;
