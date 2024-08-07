% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_data.R
\name{prepare_rle_data}
\alias{prepare_rle_data}
\title{Prepare data for a relative log expression plot}
\usage{
prepare_rle_data(
  data = NULL,
  meta_data = NULL,
  sampleid_raw_col = NULL,
  sampleid_meta_col = NULL,
  order_col = NULL,
  batch_col = NULL,
  id_samples = NULL
)
}
\arguments{
\item{data}{data.frame in wide format.}

\item{meta_data}{data.frame with the meta data.}

\item{sampleid_raw_col}{character(1), name of the sample id column in the raw data.}

\item{sampleid_meta_col}{character(1), name of the sample id column in the meta data.}

\item{order_col}{character(1), name of the acquisition order column in the meta data.}

\item{batch_col}{character(1), name of the batch column.}

\item{id_samples}{character() vector with the names of the sample samples id's.}
}
\value{
data.frame
}
\description{
Prepare data for a relative log expression plot.
}
\author{
Rico Derks
}
