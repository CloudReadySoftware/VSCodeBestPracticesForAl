$AppJSON = Get-ObjectFromJSON -Path '.\app.json'
$LaunchJSON = Get-ObjectFromJSON -Path '.\.vscode\launch.json'

$DockerHost = 'waldocorevm'

$DockerImage = 'microsoft/dynamics-nav:devpreview'

$DEVServer = 'devpreview'
$IPDEVServer = '172.21.31.8'
$TESTServer = 'testpreview'
$IPTESTServer = '172.21.31.9'
$TESTDatabaseServer = "$TESTServer\SQLEXPRESS"
$DatabaseName = 'CRONUS'
$LicenseFile = 'C:\ProgramData\navcontainerhelper\NAV2018License.flf'

#Credentials
$username = 'waldo'
$password = 'waldo1234'
$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($username, $secpasswd)


$LastAppFile = (Get-ChildItem . -Filter '*.app' | 
        Sort-Object LastWriteTime -Descending |
        Select-Object -First 1).Fullname

$TESTmainPageId = 50100
$TESTmainPageUrl = "http://$TESTServer/nav/?tenant=default&Page=$TESTmainPageId"

