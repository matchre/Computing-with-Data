# PowerShell - Pipes

Piping in PowerShell has the same syntax like Command Prompt and the Linux
terminal; however, one major difference is that what gets piped is an object.
The pipeline is at the heart of PowerShell and its design philosophy.

```powershell runnable
# Many aliases are used below for brevity
dir | group extension | Sort-Object count | where count -gt 1 |
select count, name | ConvertTo-Json
## [
##     {
##         "Count":  2,
##         "Name":  ".ini"
##     },
##     {
##         "Count":  3,
##         "Name":  ".xml"
##     },
##     {
##         "Count":  7,
##         "Name":  ".log"
##     },
##     {
##         "Count":  9,
##         "Name":  ".exe"
##     }
## ]
```
