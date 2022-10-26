#!/usr/bin/env bash

file="../grype.nuspec"
powershell="../tools/chocolateyinstall.ps1"
version=$(grep -oPm1 "(?<=<version>)[^<]+" "$file")
id=$(grep -oPm1 "(?<=<id>)[^<]+" "$file")
url64=https://github.com/anchore/"$id"/releases/download/v"$version"/"$id"_"$version"_windows_amd64.zip
checksum64_file=https://github.com/anchore/"$id"/releases/download/v"$version"/"$id"_"$version"_checksums.txt
checksum64=$(curl -sL "$checksum64_file" | grep windows_amd64.zip | awk '{print $1}')

if [ -n "$version" ] || [ -n "$checksum" ]; then
    echo "version and checksum are not empty"
    echo "$version"
    echo "$url64"
    echo "$checksum64"
    sed -i "s|^\$version.*|\$version            = '$version'|g" "$powershell"
    sed -i "s|^\$checksum64.*|\$checksum64         = '$checksum64'|g" "$powershell"
else
    echo "version is empty"
fi