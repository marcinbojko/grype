$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.62.2'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = 'c6f249f6570ee43c19b8c6f0f424fc2b5d7f7f5bbddcb91c096b34d5df37c2bb'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
