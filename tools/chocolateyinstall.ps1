$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.59.1'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = 'a6175572e2a3af07719c6daf288b82898ebe9748eeecb295afdb392438ba929c'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
