# Hierarchy of Directories

__Note:__ PowerShell examples in the book ran on Windows; the code on this
website runs on Linux — the output may vary.

```powershell runnable
get-psdrive –psprovider filesystem | select name

pwd

# Example: change the current directory properly in Command Prompt
# rem switch to d:
# d:
# cd \
# cd c:\windows
# echo %CD%
# rem to change directory to c:\windows, switch to c:
# c:
# echo %CD%

# Example: display directory hierarchy
# tree /A
## Folder PATH listing
## Volume serial number is 0123-4567
## D:.
## +---Data
## |   \---Speech
## \---Code
## 
## 
```
