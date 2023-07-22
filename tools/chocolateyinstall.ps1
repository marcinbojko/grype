$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.64.2'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = '93653df47e6483223f17b5c4b4111de1963979795ab5b5dbc0374cfe382b658a'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
