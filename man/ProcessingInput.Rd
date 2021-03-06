% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/processing.R
\name{ProcessingInput}
\alias{ProcessingInput}
\title{ProcessingInput Class}
\description{
Accepts parameters that specify an Amazon S3 input for a processing job and
             provides a method to turn those parameters into a dictionary.
}
\seealso{
Other Processor: 
\code{\link{ProcessingJob}},
\code{\link{ProcessingOutput}},
\code{\link{Processor}},
\code{\link{ScriptProcessor}}
}
\concept{Processor}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{ProcessingInput$new()}}
\item \href{#method-to_request_list}{\code{ProcessingInput$to_request_list()}}
\item \href{#method-print}{\code{ProcessingInput$print()}}
\item \href{#method-clone}{\code{ProcessingInput$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Initializes a ``ProcessingInput`` instance. ``ProcessingInput`` accepts parameters
             that specify an Amazon S3 input for a processing job and provides a method
             to turn those parameters into a dictionary.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProcessingInput$new(
  source,
  destination,
  input_name = NULL,
  s3_data_type = c("S3Prefix", "ManifestFile"),
  s3_input_mode = c("File", "Pipe"),
  s3_data_distribution_type = c("FullyReplicated", "ShardedByS3Key"),
  s3_compression_type = c("None", "Gzip")
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{source}}{(str): The source for the input. If a local path is provided, it will
automatically be uploaded to S3 under:
"s3://<default-bucket-name>/<job-name>/input/<input-name>".}

\item{\code{destination}}{(str): The destination of the input.}

\item{\code{input_name}}{(str): The name for the input. If a name
is not provided, one will be generated (eg. "input-1").}

\item{\code{s3_data_type}}{(str): Valid options are "ManifestFile" or "S3Prefix".}

\item{\code{s3_input_mode}}{(str): Valid options are "Pipe" or "File".}

\item{\code{s3_data_distribution_type}}{(str): Valid options are "FullyReplicated"
or "ShardedByS3Key".}

\item{\code{s3_compression_type}}{(str): Valid options are "None" or "Gzip".}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-to_request_list"></a>}}
\if{latex}{\out{\hypertarget{method-to_request_list}{}}}
\subsection{Method \code{to_request_list()}}{
Generates a request dictionary using the parameters provided to the class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProcessingInput$to_request_list()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\if{latex}{\out{\hypertarget{method-print}{}}}
\subsection{Method \code{print()}}{
Printer.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProcessingInput$print(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{(ignored).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProcessingInput$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
