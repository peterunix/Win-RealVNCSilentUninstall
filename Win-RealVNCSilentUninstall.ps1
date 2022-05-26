if ($env:VNCServer){
  $realVNC = Get-CimInstance -ClassName Win32_Product | Where {$_.Name -like "VNC Server*"}
  $productID = $realVNC.identifyingnumber
  msiexec.exe /x "$productID" /qn
}
if ($env:VNCViewer){
  $realVNCViewer = Get-CimInstance -ClassName Win32_Product | Where {$_.Name -like "VNC Viewer*"}
  $productID = $realVNCViewer.identifyingnumber
  msiexec.exe /x "$productID" /qn
}
