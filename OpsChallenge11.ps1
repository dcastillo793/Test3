# Configuration Automation Script
# Daniel Castillo
# 9 August 2021
# Learning


# Enables file and printer sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True -Profile Any

# This allows ICMP traffic
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol="icmpv6:8,any" dir=in action=allow

# This enables remote management
Enable-PSRemoting

# This removes bloatware. In this case, the Xbox app.
Get-AppPackage *xboxapp* | Remove-AppPackage

# This enables Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName:Microsoft-Hyper-V -All

# This disables SMBv1
Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol