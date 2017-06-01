library(tidyverse)
Sys.setenv(NOAWT=1)
dyn.load('/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/jre/lib/server/libjvm.dylib')
library(RNetLogo)
nl.path <- "/Applications/NetLogo 6.0.1"
nl.jarname <- "netlogo-6.0.1.jar"

NLStart(nl.path, nl.jarname=nl.jarname, gui = FALSE)
model.path <- "/Users/jason.bintz/Desktop/vellend-models/moran-realizer.nlogo"
NLLoadModel(model.path)
NLCommand("setup")
NLCommand("go")
props_list <- NLReport("props")
NLQuit()