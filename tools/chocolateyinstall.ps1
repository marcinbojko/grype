$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.116.1'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = 'a8ad864f2f06c9afcc90d417f46f5587adeaba4e1e46cc4e32a6a076dae2fda7'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
