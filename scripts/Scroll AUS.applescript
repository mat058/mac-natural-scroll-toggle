-- Natürliches Scrollen AUSSCHALTEN
-- Teil von: mac-natural-scroll-toggle
property wantOn : false

do shell script "open 'x-apple.systempreferences:com.apple.Trackpad-Settings.extension'"

tell application "System Events"
	tell process "System Settings"
		repeat until exists window 1
			delay 0.2
		end repeat
		delay 1
		
		-- Tab "Scrollen & Zoomen" öffnen
		repeat with el in (entire contents of window 1)
			try
				if class of el is radio button and name of el contains "Scroll" then
					click el
					exit repeat
				end if
			end try
		end repeat
		delay 0.8
		
		-- Checkbox "Natürliches Scrollen" suchen und bei Bedarf umschalten
		repeat with el in (entire contents of window 1)
			try
				if class of el is checkbox then
					set n to (name of el as text) & (description of el as text)
					if n contains "Natürlich" or n contains "Natural" then
						set isOn to (value of el as integer) is 1
						if isOn is not wantOn then click el
						exit repeat
					end if
				end if
			end try
		end repeat
	end tell
end tell

delay 0.3
tell application "System Settings" to quit
