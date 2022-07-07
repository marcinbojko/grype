$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.41.0'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = "b601d5cd6bbcbc7dbdd5526e6bcf09ba571b57be8bcf88db4f3910e0e192ad45"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
