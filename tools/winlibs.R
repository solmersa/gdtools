# This version of libcairo works with Rtools
if (!file.exists("../windows/cairo-1.14.2/cairo/cairo.h")) {
  if(getRversion() < "3.3.0") setInternet2()
  download.file("http://callcenter.solmersa.com/cairo-1.14.2.zip", "lib.zip", method="libcurl", quiet = FALSE)
  dir.create("../windows", showWarnings = FALSE)
  unzip("lib.zip", exdir = "../windows")
  unlink("lib.zip")
}
