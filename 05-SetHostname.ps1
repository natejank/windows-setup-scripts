#requires -RunAsAdministrator
# sets the hostname
# usage: 05-SetHostname.ps1 [hostname]
param([String]$hostname)

Rename-Computer -NewName $hostname