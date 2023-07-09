$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.63.1'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = '57c2a62fc062eb63407f0cb2331b9a6ef5da76cf6a7b42f50b0f11b5f73ee4d3'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
