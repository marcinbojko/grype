$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.74.0'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = '0088cb8969c893ae3ee9ba018e1ff8639f17a11a63c2250ad3f4c6dd48fe1d31'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
