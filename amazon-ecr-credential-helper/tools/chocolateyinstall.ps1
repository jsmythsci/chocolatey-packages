$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$binFileName = 'docker-credential-ecr-login'
$fileFullPath = Join-Path $toolsDir "$binFileName.exe"

$packageArgs = @{
    packageName  = 'amazon-ecr-credential-helper'
    FileFullPath = $fileFullPath

    # 64-bit
    url64          = 'https://amazon-ecr-credential-helper-releases.s3.us-east-2.amazonaws.com/0.7.1/windows-amd64/docker-credential-ecr-login.exe'
    checksum64     = '60dd759f6c333ac12b5447470a4e26553d39c9288765771e5e264daa135f46b2'
    checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
