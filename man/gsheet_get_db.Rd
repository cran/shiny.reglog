% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated_database.R
\name{gsheet_get_db}
\alias{gsheet_get_db}
\title{Function to read googlesheets shiny.reglog database}
\usage{
gsheet_get_db(gsheet_db)
}
\arguments{
\item{gsheet_db}{ID of your 'googlesheets' database}
}
\value{
list containing \code{user_db} and \code{reset_db} dataframes
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}

As the new version of RegLog system allows for much more flexibility
old functionalities for reading data is deprecated. Please use functions
from adequate package: in this instance, 'googlesheets4' package.
}
\seealso{
create_sqlite_db
}
\keyword{internal}
