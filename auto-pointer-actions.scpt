tell application "System Preferences"
	activate
	reveal anchor "Mouse" of pane id "com.apple.preference.universalaccess"
	--	get every anchor of current pane
end tell

tell application "System Events"
	tell process "System Preferences"
		repeat until window "Accessibility" exists
		end repeat
		click radio button "Alternate Control Methods" of tab group 1 of group 1 of window "Accessibility"
		click checkbox "Enable alternate pointer actions" of tab group 1 of group 1 of window "Accessibility"
		try
			click UI element "OK" of sheet 1 of window "Accessibility"
		on error errMsg
			-- display dialog "ERROR: " & errMsg
		end try
	end tell
	keystroke "h" using command down
end tell