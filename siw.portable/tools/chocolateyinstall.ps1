﻿$packageName = 'siw.portable'
$url = 'https://www.gtopala.net/download/siw_tech.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url64 = 'https://www.gtopala.net/download/siw_tech.zip'
$checksum      = '4C68524409179B228A86AA1CD072EF15'
$checksumType  = 'md5'
 
Install-ChocolateyZipPackage $packageName $url $unzipLocation $url64 -Checksum $checksum -ChecksumType $checksumType

