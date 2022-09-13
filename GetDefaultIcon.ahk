/**
* Function: GetDefaultIcon(fExt [, getHandle])
* https://www.autohotkey.com/boards/viewtopic.php?t=107092
* https://docs.microsoft.com/en-us/windows/win32/api/shlwapi/nf-shlwapi-assocquerystringw
*
* Based on a specific use case of the AssocQueryString function.
*
* Searches for and retrieves the default icon for a provided extension and returns
* a handle to the icon to be used in a picture control or the string to the associated icon path.
*
* Params:
* fExt      - File extension to work on with optional `.` in front e.g.: ahk or .ahk
* getHandle - instruct the function to either return the handle to a resource or
*             the string to the default executable file
*
* Returns:
* - A Handle to an icon resource (Default)
* - A string to the default executable and icon number for the extension
*
* Examples:
* ---ahk
	MsgBox GetDefaultIcon("ahk")
	MsgBox GetDefaultIcon(".ahk")
* ---
*
* ---ahk
	for ext in ["ahk", ".html", ".bat", "vbs", ".dll"]
		strings .= GetDefaultIcon(ext, false) '`n'

	MsgBox strings
* ---
*/ ; by RaptorX
