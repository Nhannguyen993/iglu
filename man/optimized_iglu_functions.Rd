% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimized_iglu_functions.R
\name{optimized_iglu_functions}
\alias{optimized_iglu_functions}
\title{Optomized Calculations of the iglu Functions: AUC, CONGA, GVP, MODD, SD_ROC, CV_MEASURES, & SD_MEASURES}
\usage{
optimized_iglu_functions(data)
}
\arguments{
\item{data}{DataFrame object with column names "id", "time", and "gl", or numeric vector of glucose values.}
}
\value{
If a data.frame object is passed, then a tibble object with 1 row for each subject, and fourteen columns is returned:
a column for subject id,
a column for Continuous Overall Net Glycemic Action (Conga) value,
a column for Glucose Variability Percentage (GVP) value,
a column for mean difference between glucose values obtained at the same time of day (MODD) value,
a column for area under curve (AUC) value,
a column for Coefficient of Variation mean (CV_Measures_Mean) value,
a column for Coefficient of Variation standard deviation (CV_Measures_SD) value,
a column for Standard Deviation of rate of change (SD Roc) value,
a column for Standard Deviation vertical within days (SdW) value,
a column for Standard Deviation between time points (SdHHMM) value,
a column for Standard Deviation within series (SdWSH) value,
a column for horizontal Standard Deviation (SdDM) value,
a column for Standard Deviation between days, within timepoints (SdB) value,
a column for Standard Deviation between days, within timepoints value,
corrected for changes in daily means (SdBDM) value.
}
\description{
The function all_metrics_optomized optimizes the functions
AUC, CONGA, GVP, MODD, SD_ROC, CV_MEASURES, & SD_MEASURES iglu functions
by extracting the CGMS2DayByDay calculation and passing the result into each function.
Tests with microbenchmark show the optimization is 9x faster.
}
\details{
Retruns a tibble object with 1 row for each subject, and fourteen columns:
a column for subject id,
a column for Continuous Overall Net Glycemic Action (Conga) value,
a column for Glucose Variability Percentage (GVP) value,
a column for mean difference between glucose values obtained at the same time of day (MODD) value,
a column for area under curve (AUC) value,
a column for Coefficient of Variation mean (CV_Measures_Mean) value,
a column for Coefficient of Variation standard deviation (CV_Measures_SD) value,
a column for Standard Deviation of rate of change (SD Roc) value,
a column for Standard Deviation vertical within days (SdW) value,
a column for Standard Deviation between time points (SdHHMM) value,
a column for Standard Deviation within series (SdWSH) value,
a column for horizontal Standard Deviation (SdDM) value,
a column for Standard Deviation between days, within timepoints (SdB) value,
a column for Standard Deviation between days, within timepoints value,
corrected for changes in daily means (SdBDM) value.
}
\examples{
data(example_data_1_subject)
optimized_iglu_functions(example_data_1_subject)

data(example_data_5_subject)
optimized_iglu_functions(example_data_5_subject)

}
