$packageName = 'siw.portable'
$url = 'https://www.gtopala.net/download/siw_tech.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url64 = 'https://www.gtopala.net/download/siw_tech.zip'
$checksum      = '3C53B77D69FC834C30A6B2348696C3CB'
$checksumType  = 'md5'
 
Install-ChocolateyZipPackage $packageName $url $unzipLocation $url64 -Checksum $checksum -ChecksumType $checksumType

