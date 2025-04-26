$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.91.2'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = '8335d011cc7a6dca2900c5d12d1bc70a2e810edd0bb6a905dfa6efa1ce5e7074'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
