Write-Host @"

***********************************************************
     _       _    __ _ _                 _               
    | |     | |  / _(_) |               | |              
  __| | ___ | |_| |_ _| | ___   ___  ___| |_ _   _ _ __  
 / _` |/ _ \| __|  _| | |/ _ \ / __|/ _ \ __| | | | '_ \ 
| (_| | (_) | |_| | | | |  __/ \__ \  __/ |_| |_| | |_) |
 \__,_|\___/ \__|_| |_|_|\___| |___/\___|\__|\__,_| .__/ 
                                                  | |    
                                                  |_|   
***********************************************************

"@                                                                  

echo 'Install Choco'
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

echo 'Disable UAC'
Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0

echo 'Install posh-git'
choco install poshgit -y

echo 'Install vscode'
choco install vscode -y

echo 'Install neovim'
choco install neovim -y

echo 'Install notepad++'
choco install notepadplusplus -y

echo 'Install postman'
choco install postman -y

echo 'Install node'
choco install nodejs -y

echo 'Install dotnet'
choco install dotnet -y

echo 'Install dotnet SDK'
choco install dotnetcore-sdk -y

# echo 'Install spacemonger'
# choco install spacemonger -y

echo 'Refresh env vars'
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
