# README

This repository contains the anonymized datasets from the evaluation of the eLectures service at the University of Münster from the following terms:

  - Winter term 2016/17 - german version
  - Summer term 2017 - german version
  - Summer term 2017 - english version
  - Winter term 2017/18 - german version
  - Winter term 2017/18 - english version

## Available files

The folder *data* contains the anonymized data sets per term. In the winter term 2016/17 the questionnaire was only administered in German. In the summer term 2017 and the winter term 2017/18 the questionnaire was administerd in German and English. The data was gathered using EvaSys and the original file format was *.sav*, after anonymizing the data is now provided as *.csv* files. Additionally, the column labels are provided as a *.csv* file. The folder *questionnaires* contains PDFs of the questionaires used per term. The folder *R* contains the R script used to anonymize the data as well as the R script used to generate the codebooks.

## Removed data

From each data set the following questions were removed:

  - Question 2.4: Which lecture(s) did you attend?
  - Question 4.3: What other experiences did you make using lecture recordings?
  - Question 5.8: What were other reasons for using the lecture recording instead of attending the lecture?
  - Question 6.2: Which other role did the lecture recordings have in your learning process?
  - Question 7.8: What were your technical problems?
  - Question 8.2: What else would you like to tell us? (Suggestions, requests, praise and critique, etc.)
  - Question 9.2: What were other reasons for not using the lecture recordings?

These questions were removed from the data sets to make it impossible to identify which lecture series the respondents were refering to. In the questionnaires the list of recorded lecture series has been blacked out. This has been done to protect the lecturers privacy.

# License

This repository is under the [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0).](https://creativecommons.org/licenses/by-nc-nd/4.0/)

# Contact

If you have any questions concerning the provided data feel free to contact me at: daniel.ebbert@uni-muenster.de
