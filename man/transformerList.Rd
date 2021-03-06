% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GatingSet_Methods.R
\name{transformerList}
\alias{transformerList}
\title{Constructor for transformerList object}
\usage{
transformerList(from, trans)
}
\arguments{
\item{from}{channel names}

\item{trans}{a \code{trans} object or a list of \code{trans} objects constructed by \code{trans_new} method.}
}
\description{
Similar to \code{transformList} function, it constructs a list of transformer objects generated by \code{trans_new}
method from \code{scales} so that the inverse and breaks functions are also included.
}
\examples{
library(scales)
#create tranformer object from scratch
trans <- logicleTransform(w = 0.5, t = 262144, m = 4.5, a = 0)
inv <- inverseLogicleTransform(trans = trans)
trans.obj <- flow_trans("logicle", trans, inv, n = 5, equal.space = FALSE)

#or simply use convenient constructor
#trans.obj <- logicle_trans(n = 5, equal.space = FALSE, w = 0.5, t = 262144, m = 4.5, a = 0)

transformerList(c("FL1-H", "FL2-H"), trans.obj)

#use different transformer for each channel
trans.obj2 <- asinhtGml2_trans()
transformerList(c("FL1-H", "FL2-H"), list(trans.obj, trans.obj2))
}
