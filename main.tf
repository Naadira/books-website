provider "null" {}

# Enable IIS feature
resource "null_resource" "enable_iis" {
  provisioner "local-exec" {
    command = "powershell.exe -Command \"Start-Process powershell.exe -ArgumentList 'Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole -All' -Verb RunAs\""
  }
}

# Enable IIS Management Console
resource "null_resource" "enable_iis_mgmt_console" {
  provisioner "local-exec" {
    command = "powershell.exe -Command \"Start-Process powershell.exe -ArgumentList 'Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerManagementTools' -Verb RunAs\""
  }
  depends_on = [null_resource.enable_iis]
}