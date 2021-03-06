% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hydrus.r
\name{hydrus_sm}
\alias{hydrus_sm}
\title{Data preparation for HYDRUS}
\usage{
hydrus_sm(date.in, date.out, name, datacol, freq = "hour", aszoo = F)
}
\arguments{
\item{date.in}{starting date (POSIXct)}

\item{date.out}{ending date (POSIXct)}

\item{name}{name of groundwater well to use. Possible so far "BK1", "BK2", "BK3", "BK14".}

\item{freq}{frequency of data. Possible values are "day", "hour", "min", "sec".}

\item{aszoo}{output either in data.frame (aszoo=F) or zoo (aszoo=T). Default value is FALSE.}

\item{depthLB}{depths of lower model boundary. All groundwater level values will be subtracted from this value.}

\item{aprox}{if the time series has some NA-values, they can be approximized. Default value is TRUE.}
}
\description{
soil moisture TS
}
\details{
missing
}
\references{
Marvin Reich (2014), mreich@gfz-potsdam.de
}
