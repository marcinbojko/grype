$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.81.0'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = '871f3016c2f82f22e75d694367b1eac8ceda5e804ed9342138fd51c5dc1d403c'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
