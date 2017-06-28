$packageName = 'siw.portable'
$url = 'https://www.gtopala.net/download/siw_tech.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url64 = 'https://www.gtopala.net/download/siw_tech.zip'
$checksum      = 'BC66E2BEF09D8E31353852C92FC27E27'
$checksumType  = 'md5'
 
Install-ChocolateyZipPackage $packageName $url $unzipLocation $url64 -Checksum $checksum -ChecksumType $checksumType

