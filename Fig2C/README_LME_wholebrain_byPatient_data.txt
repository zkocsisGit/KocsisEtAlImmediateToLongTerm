"roi_patient_average.csv" is the file that is analyzed, by the R script "LME_wholebrain_byPatients.R".
File contains 5 columns:
1. Patient number (P1-3)
2. Time factor (-1: pre-surgery, 0: post2mo, 1: post6+mo)
3. ROI (contains 150 ROIs based on automatic parcellation a2009s, 75 in each hemisphere)
4. Hemisphere (-1: ipsilateral, 1: contralateral to the resection of the patient)
5. dSPM value (the average of the absolute value for each region, between 140 to 165 ms post-target word onset)

