% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GatingHierarchy_Methods.R,
%   R/GatingSet_Methods.R, R/GatingSetList_Methods.R
\docType{methods}
\name{pData,GatingHierarchy-method}
\alias{pData,GatingHierarchy-method}
\alias{pData,GatingSet-method}
\alias{pData}
\alias{pData<-}
\alias{pData<-,GatingSet,data.frame-method}
\alias{pData<-,GatingSetList,data.frame-method}
\title{read/set pData of flow data associated with \code{GatingSet} or \code{GatingSetList}}
\usage{
\S4method{pData}{GatingHierarchy}(object)

\S4method{pData}{GatingSet}(object)

\S4method{pData}{GatingSet,data.frame}(object) <- value

\S4method{pData}{GatingSetList,data.frame}(object) <- value
}
\arguments{
\item{object}{\code{GatingSet} or \code{GatingSetList}}

\item{value}{\code{data.frame} The replacement of pData for \code{flowSet} or \code{ncdfFlowSet} object}
}
\value{
a \code{data.frame}
}
\description{
Accessor method that gets or replaces the pData of the flowset/ncdfFlowSet object in a GatingSet or GatingSetList
}
