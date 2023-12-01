$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.73.2'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = 'c4b6e6b5dbcf0c4fb6266a9bf83c606ae17cdd03aa3052d2f3aedc46c7fed2e7'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
