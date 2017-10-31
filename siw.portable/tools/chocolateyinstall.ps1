$packageName = 'siw.portable'
$url = 'https://gtopala.net/download/siw_tech.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url64 = 'https://gtopala.net/download/siw_tech.zip'
$checksum      = 'BEF1A3222A9F55193090515DE475E2A8'
$checksumType  = 'md5'
 
Install-ChocolateyZipPackage $packageName $url $unzipLocation $url64 -Checksum $checksum -ChecksumType $checksumType

