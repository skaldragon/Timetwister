function Time-Twister{
<#
	.SYNOPSIS
		This function has the capability to modify timestamps with either custom or blended timestamps
	.PARAMETER FilePath
		The local or UNC folder/file path that you would like to change.
	.PARAMETER $a,$w,$c
		-a Change the AccessTime of the file/folder
        -w Change the WriteAccessTime of the file/folder
        -c Change the CreationTime of the file/folder
	.PARAMETER (Switch)Blend
	Blends the file/folder's timestamp with the earlier timestamp in the directory
	.PARAMETER (Switch)custom
	Changes the file/folder's timestamp with a custom timestamp via $timeformat
	.PARAMETER Timeformat
	-timeformat Add a custom time format to a file/folder "Day Month Year"
	
		#>
[CmdletBinding(DefaultParameterSetName="Set1")]
param(
[Parameter(Mandatory=$true, ParameterSetName="Set1")][Parameter(ParameterSetName="Set2")][string]$FilePath,
[Parameter(Mandatory=$false, ParameterSetName="Set1")][Parameter(ParameterSetName="Set2")][switch]$a,
[Parameter(Mandatory=$false, ParameterSetName="Set1")][Parameter(ParameterSetName="Set2")][switch]$c,
[Parameter(Mandatory=$false, ParameterSetName="Set1")][Parameter(ParameterSetName="Set2")][switch]$w,
[Parameter(Mandatory=$false, ParameterSetName="Set2")][switch]$blend,
[Parameter(Mandatory=$false, ParameterSetName="Set1")][switch]$custom,
[Parameter(Mandatory=$false, ParameterSetName="Set1")][string]$timeformat
)

$1="January"
$2= "February"
$3="March"
$4= "April"
$5= "May"
$6= "June"
$7= "July"
$8= "August"
$9= "September"
$10= "October"
$11= "November"
$12="December"

if($custom){
if($a){
(Get-Item -Path $FilePath).LastAccessTime=($timeformat)
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=($timeformat)
}
if($c){
(Get-Item -Path $FilePath).CreationTime=($timeformat)
}
}#End custom
if($blend){
dir | get-date | sort -Descending | select day | select -Last 1 -OutVariable camoday | out-null
dir | get-date | sort -Descending | select year | select -Last 1 -OutVariable camoyear | out-null
dir | get-date | sort -Descending | select month | select -Last 1 -OutVariable camomonth | out-null
$camoday=($camoday).day
$camoyear=($camoyear).year
$camomonth=($camomonth).month
if($camomonth -eq "1"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $1 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $1 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $1 $camoyear")
}
}
if($camomonth -eq "2"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $2 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $2 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $2 $camoyear")
}
}
if($camomonth -eq "3"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $3 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $3 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $3 $camoyear")
}
}
if($camomonth -eq "4"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $4 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $4 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $4 $camoyear")
}
}
if($camomonth -eq "5"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $5 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $5 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $5 $camoyear")
}
}
if($camomonth -eq "6"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $6 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $6 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $6 $camoyear")
}
}
if($camomonth -eq "7"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $7 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $7 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $7 $camoyear")
}
}
if($camomonth -eq "8"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $8 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $8 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $8 $camoyear")
}
}
if($camomonth -eq "9"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $9 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $9 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $9 $camoyear")
}
}
if($camomonth -eq "10"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $10 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $10 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $10 $camoyear")
}
}
if($camomonth -eq "11"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $11 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $11 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $11 $camoyear")
}
}
if($camomonth -eq "12"){
if($c){
(Get-Item -Path $FilePath).CreationTime=("$camoday $12 $camoyear")
}
if($a){
(Get-Item -Path $FilePath).LastAccessTime=("$camoday $12 $camoyear")
}
if($w){
(Get-Item -Path $FilePath).LastWriteTime=("$camoday $12 $camoyear")
}
}
}#End Blend
}#End TwistTime