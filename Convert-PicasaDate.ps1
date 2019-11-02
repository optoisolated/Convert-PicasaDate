# Convert-PicasaDate.ps1
#
# This Script will convert the date format used in Picasa INI files to standard datetime format.
# Dates in Picasa are stored with an offset of 1/1/1900 0:00:00 and then the number representing
# how many days beyond this start date the folders are updated. Note: the decimal represents the
# h:m:s component of the datetime reference

param (
    [Parameter(Mandatory=$true)][double]$PicasaDate
 )
 
$dte = [datetime]"1900/1/1 0:00:00"
$dte.AddDays($PicasaDate)
