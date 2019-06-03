
GIT_REVISION = $(shell git rev-parse --short HEAD)

Get-Content -Path md_to_pdf.json | foreach {
echo $_
  $_ = $_.replace('"', '\"')
  $_ = $_.replace('<', '\u003C')
  $_ = $_.replace('>', '\u003E')
  $json = $json + $_
}
echo $json

& md-to-pdf.cmd .\protocols\bca.md --config-file md_to_pdf.json
