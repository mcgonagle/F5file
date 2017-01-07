when HTTP_REQUEST {
  if { [active_members [LB::server pool]] == 0 } {
    HTTP::respond 200 content "<html><head><title>Site unavailable</title></head>
  <body><br /><br /><br /><br />
  <table width='100%'><tr><td align='center'>
  <p class=MsoNormal>
  <u>System Maintenance</u><br /><br />
  NOTICE: This site is down for maintenance.<br /><br />
  </p></table></body></html>"  
  }
}
