# GetDefaultIcon(`fExt` [, getHandle])
[AHK Forum Post](https://www.autohotkey.com/boards/viewtopic.php?t=107092)

Based on a specific use case of the AssocQueryString function.

Searches for and retrieves the default icon for a provided extension and returns
a handle to the icon to be used in a picture control or the string to the associated icon path.

More info at [MSDN](https://docs.microsoft.com/en-us/windows/win32/api/shlwapi/nf-shlwapi-assocquerystringw)

---

### Params:
- `fExt`      - File extension to work on with optional `.` in front e.g.: ahk or .ahk
- `getHandle` - instruct the function to either return the handle to a resource or
            the string to the default executable file

### Returns:
- A Handle to an icon resource (Default)
- A string to the default executable and icon number for the extension

### Examples:
The period is optional when passing the extension
```
	MsgBox GetDefaultIcon("ahk")
	MsgBox GetDefaultIcon(".ahk")
```
You can get the path to the default application associated with the extension as well
```
	for ext in ["ahk", ".html", ".bat", "vbs", ".dll"]
		strings .= GetDefaultIcon(ext, false) '`n'

	MsgBox strings
```