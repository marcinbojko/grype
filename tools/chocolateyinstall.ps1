﻿$ErrorActionPreference = 'Stop';

$packageName        = 'grype'
$version            = '0.77.0'
$url64              = "https://github.com/anchore/grype/releases/download/v"+$version+"/grype_"+$version+"_windows_amd64.zip"
$checksum64         = '09c72ce2c355ea358f79e5978bb354dfabb0e6b8ffe0fd6dfe5edfa58e41b33e'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
