-- Export a simple cue sheet from a QLab cue list
-- Jason Tuttle <jason@hearspotbark.com>
-- This script will export the cue number and name of all selected cues to a
-- comma-delimited (.csv) or tab-delimited (.tsv) text file,
-- which can be imported to any common spreadsheet program (Excel, Numbers, OpenOffice, etc...)

tell application id "com.figure53.qlab.5" to tell front workspace
	try
		set fileTypeList to {"Comma", "Tab"}
		set defaultFileName to ""
		display dialog "Choose a delimiter type:" buttons fileTypeList default button "comma" with title "File Type"
		if (button returned of result is "comma") then
			set AppleScript's text item delimiters to ASCII character 44
			set defaultFileName to "New Cue Sheet.csv"
		else if (file is "tab") then
			set AppleScript's text item delimiters to ASCII character 9
			set defaultFileName to "New Cue Sheet.tsv"
		else
			beep
			display dialog "You must choose a delimiter."
			error "no delimiter"
		end if
		set savedDelimiters to AppleScript's text item delimiters -- need this later for trimFilePath() handler
		
		global oneCue
		
		set theFile to choose file name with prompt "Name the file" default name defaultFileName
		set referenceNumber to open for access theFile with write permission
		set header to {"Cue #", "Cue Name", "Notes", "Length", "Target" & return} as string
		write header to theFile starting at eof
		
		repeat with eachCue in (selected as list)
			try --if you want to expand the number of fields to export, do so here
				set thisqnumber to q number of eachCue
				set thisqname to "\"" & (q list name of eachCue) & "\""
				set thisqnotes to "\"" & notes of eachCue & "\""
				set thisqtime to ""
				set thisqtarget to ""
				convertToDuration(duration of eachCue) of me
				if the result is not false then
					set thisqtime to the result
				end if
				if (q type of eachCue is "Fade") then
					set thisqtarget to "\"" & (q number of (cue target of eachCue)) & ": " & q list name of (cue target of eachCue) & "\""
				else if (q type of eachCue is "Audio") then
					set thisqtargetpath to file target of eachCue as text
					trimFilePath(thisqtargetpath, savedDelimiters) of me
					set thisqtarget to "\"" & the result & "\""
				else if (q type of eachCue is "Group") then
					set thisqtarget to "Group: " & mode of eachCue & " mode"
				end if
				
				set oneCue to {thisqnumber, thisqname, thisqnotes, thisqtime, thisqtarget} as string --you'd have to add extra fields here
				write (oneCue & return) as text to theFile starting at eof
			on error error_message number error_number --just in case something goes wrong...
				display dialog "Error" & error_number & ": " & error_message buttons {"OK"} default button 1
			end try
			
		end repeat
		
		close access referenceNumber --close access to the file we opened
		
		set AppleScript's text item delimiters to "" ---reset to nothing
		
	on error error_message
		display dialog "Error:" & error_message
	end try
	
end tell

on convertToDuration(numSeconds)
	set quantum to 0.1
	try
		set thisHours to (round numSeconds / 60 / 60 rounding down) as text
		set thisTenMinutes to (round numSeconds / 60 / 10 rounding down) as text
		set thisMinutes to (round (numSeconds / 60 mod 10) rounding down) as text
		set thisTenSeconds to (round numSeconds mod 60 / 10 rounding down) as text
		set thisSeconds to ((round (numSeconds mod 10 / quantum)) * quantum) as text
		return thisHours & ":" & thisTenMinutes & thisMinutes & ":" & thisTenSeconds & thisSeconds as string
	on error error_message
		log "Error: " & error_message
		return false
	end try
end convertToDuration

on trimFilePath(filePath, reset_delimiter)
	set AppleScript's text item delimiters to {":"}
	get last text item of filePath
	if the result is not false then
		set trimmedFilePath to the result
	else
		error "cannot extract file from path"
	end if
	set AppleScript's text item delimiters to {reset_delimiter}
	return trimmedFilePath
end trimFilePath
