$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.90.0'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = 'd295f6933dade7758bbfea1ebc29e34ce2e90df30988a2fd4f3416bc7ac59c8c'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
