checkspotandClick(x,y)
{
	PixelGetColor, color, x, y
	if(color != 0xFFFFFF){
		if(color == 0xEEEEEE){
			Return false
		}
		MouseClick,M,x,y,1,3
		Return true
	} 
}
checkredspotandclick(x,y)
{
	PixelGetColor, color, x, y
	if(color == 0xCC0000){
		MouseClick,M,x,y,1,3
		Return true
	}
	Return false
}

; next tab
; /////////////////////////////////////////////////////////////
; /															/
; /			Two 
; /															/
; /////////////////////////////////////////////////////////////

^2::
	if (lastclick = 6) {
	sleep 10
	SendInput, seenminutesago=240{Enter}boolean=
	sleep 10
	SendInput, {+}temp{Enter}md5det=B, U{Enter}metaexsfrom=2
	sleep 10
 	lastclick = 0
	Send ^0

 	Return
 	}

	if (lastclick = 8){
S1X = 172
S1Y = 390
icon = 25
		MouseClick, M, S1X, S1Y+(0*icon), 1, 3
		MouseClick, M, S1X, S1Y+(1*icon),1, 3
		MouseClick, M, S1X, S1Y+(2*icon),1, 3
		MouseClick, M, S1X, S1Y+(3*icon),1, 3
		MouseClick, M, S1X, S1Y+(4*icon),1, 3

		; other parent
S1X = 957

		checkspotandClick( S1X , S1Y+(0*icon))
		checkspotandClick( S1X , S1Y+(1*icon))
		checkspotandClick( S1X , S1Y+(2*icon))
		checkspotandClick( S1X , S1Y+(3*icon))
		checkspotandClick( S1X , S1Y+(4*icon))
	
		; 882
S1X = 1142
S1Y = 398

		checkspotandClick( S1X , S1Y+(0*icon))
		checkspotandClick( S1X , S1Y+(1*icon))
		checkspotandClick( S1X , S1Y+(2*icon))
		checkspotandClick( S1X , S1Y+(3*icon))
		checkspotandClick( S1X , S1Y+(4*icon))

		}
	Send ^{tab}
	lastclick = 2
	Return

; new query
; /////////////////////////////////////////////////////////////
; /			One												/
; /															/
; /															/
; /////////////////////////////////////////////////////////////

^1::
	if (lastclick = 6) {
	SendInput, seenminutesago=1440{Enter}
	SendInput, md5det=B, U{Enter}
	SendInput, boolean={+}family
 	lastclick = 0
	Send ^0
	Return	
}
	MouseMove 575,205
	Sleep 10 
	Click 575, 205
	lastclick = 1
	Return

; ///////////////////////////////////////////////////////////
; /															/
; /						Five									/
; /															/
; ///////////////////////////////////////////////////////////

^5::
	if (lastclick = 6) {
	SendInput, boolean={+}cache{Enter}
	SendInput, seenminutesago=240{Enter}
	SendInput, md5det=B, U{Enter}
	SendInput, boolean={+}family
 	lastclick = 0
	Send ^0
 	Return
 	}

	if(lastclick = 8){
		;s5+pf 
		MouseMove 153,383
		Sleep 20
		Click 153,383

		MouseMove 723,383
		Sleep 20
		Click 723,383

		lastclick = 0
		Return
		}
; 	This is for whitelisting creating query.
	if(lastclick = 5){
		MouseMove 1492, 385
		lastclick = 0 
		Return
		}
;	MouseMove 149,374
;	Sleep 20
	Click 152,377

	Click 1058,377
	lastclick = 5
	Return

; ///////////////////////////////////////////////////////////
; /			Three												/
; /															/
; /															/
; ///////////////////////////////////////////////////////////
;Selecting white - marking page. ## not working 
^3::
	if (lastclick = 6) {
	
	SendInput, seenminutesago=240{Enter}
 	SendInput, boolean={+}temp{Enter}
 	SendInput, md5det=B, U{Enter}
	SendInput, boolean={+}family
 	lastclick = 0
	Send ^0
 	Return

 	}

 	click 1504,202
 	sleep 300
 	click 1519,490
 	sleep 100
 	click 1377,224

	lastclick = 0
	Return

; ///////////////////////////////////////////////////////////
; /															/
; /					FOur								/
; /															/
; ///////////////////////////////////////////////////////////

; drill down
^4::
	MouseMove 578,220
	Sleep 10 
	Click 578,220
	lastclick = 0
	Return

; ///////////////////////////////////////////////////////////
; /															/
; /				Six											/
; /															/
; ///////////////////////////////////////////////////////////


^6::
; First set up Script Editing - set's mode into lastlclick = 6 - this will allow to input things into import. Until
; 1, or 4 is clicked ending the script editing.
if(lastclick = 6){
	
;	SendInput, boolean={+}cache{Enter}
;	SendInput, seenminutesago=240{Enter}
;	SendInput, md5det=B, U{Enter}
 ;	SendInput, metaexsfrom=2{Enter}
 ;	SendInput, boolean={-}largerthan4mb
 ;	lastclick = 0
;	Send ^0
; 	Return
}

	Click 1367,330
	Click 1670,330
	Click 1690,330
	lastclick = 6
	Return

; ///////////////////////////////////////////////////////////
; /															/
; /					Eight										/
; /															/
; ///////////////////////////////////////////////////////////
;; Right now eight is double button combo - 88 does all below - 85 does analyze.
;; 8-2 does faking stuff

^8::
	if (lastclick = 6) {
	
	SendInput, boolean={+}appdata{Enter}
	SendInput, seenminutesago=240{Enter}
	SendInput, md5det=B, U{Enter}
	SendInput, boolean={+}family
	Send ^0
 	lastclick = 0
 	}

; Child/parent/event/s5
	if(lastclick = 8){
		checkspotandClick(140,385)
		checkspotandClick(949,397)
		checkspotandClick(1127,397)
		Mouseclick, M, 1152, 395,1,3 
		Mouseclick, M, 1313, 400,1,3 
		if (checkredspotandClick(1079,396)) {
		Send ^{tab}
		}
		lastclick = 0
		Return
		}
	lastclick = 8
	Return

;run
; ///////////////////////////////////////////////////////////
; /						Seven									/
; /															/
; /															/
; ///////////////////////////////////////////////////////////

^7::

	if !(checkspotandClick(270,236)){
 		Click 703,252
		lastclick = 0
		}
	Return
	

; ///////////////////////////////////////////////////////////
; /															/
; /							Nine								/
; /															/
; ///////////////////////////////////////////////////////////
; New enzo page

^9::
	Run https://enzo.webrootcloudav.com/databasetable.asp
	lastclick = 0
	Return

+^9::
	Run https://download.webroot.com/eql.htm
	lastlcik = 0
Return
; ///////////////////////////////////////////////////////////
; /															/
; /							Eleven								/
; /															/
; ///////////////////////////////////////////////////////////

`::

; If 8+ combo - show analysis 
	if(lastclick = 6){
		
		Send {ctrl down}{v down}
		Send {ctrl up}{v up}
		lastclick = 0
		Send ^0
		Return
		}
	if(lastclick = 8)  {
 		Click 726,230
 		lastclick = 0
 		Return		
 		}

	Click 99,208
	send a
	Click 584,225
	lastclick = 0
	Return

; ///////////////////////////////////////////////////////////
; /															/
; /							Typing stuff								/
; /															/
; ///////////////////////////////////////////////////////////

::!1::W32.Trojan.Gen
::@2::W32.Adware.Gen
::@d::W32.Adware.Dotdo
::#3::Pua.DownloadManager
::@a::Pua.Amonetize
::[]::[0-9]
::[a]::[a-z]
::[z]::[a-f,0-9]

::!doit!::
MouseClick, M, 1050, 375, 1, 3
MouseClick, M, 1034, 375, 1, 3

MouseClick, M, 1050, 400, 1, 3
MouseClick, M, 1034, 400, 1, 3

MouseClick, M, 1050, 425, 1, 3
MouseClick, M, 1034, 425, 1, 3

MouseClick, M, 1050, 450, 1, 3
MouseClick, M, 1050, 450, 1, 3

MouseClick, M, 1034, 475, 1, 3
MouseClick, M, 1034, 475, 1, 3

MouseClick, M, 1050, 500, 1, 3
MouseClick, M, 1034, 500, 1, 3

MouseClick, M, 1050, 525, 1, 3
MouseClick, M, 1034, 525, 1, 3

MouseClick, M, 1050, 550, 1, 3
MouseClick, M, 1034, 550, 1, 3

MouseClick, M, 1050, 575, 1, 3
MouseClick, M, 1034, 575, 1, 3

MouseClick, M, 1050, 600, 1, 3
MouseClick, M, 1034, 600, 1, 3
Return


::!do!::
; s1 
MouseClick, M, 169, 365, 1, 3
MouseClick, M, 169, 390, 1, 3
MouseClick, M, 169, 421, 1, 3
MouseClick, M, 169, 448, 1, 3
MouseClick, M, 169, 471, 1, 3


; other parent
checkspotandClick(882,375)
checkspotandClick(882,400)
checkspotandClick(882,425)
checkspotandClick(882,450)
checkspotandClick(882,475)

; 882
checkspotandClick(1011,375)
checkspotandClick(1011,400)
checkspotandClick(1011,425)
checkspotandClick(1011,450)
checkspotandClick(1011,475)

Return

::!it!::
;MouseClick, M, 173, 365, 1, 3
MouseClick, M, 173, 390, 1, 3
;MouseClick, M, 169, 421, 1, 3
;MouseClick, M, 169, 448, 1, 3
;MouseClick, M, 169, 471, 1, 3

; Parent
;MouseClick, M, 900, 375, 1, 3
;MouseClick, M, 960, 400, 1, 3
checkspotandClick(960,400)
;MouseClick, M, 900, 425, 1, 3
;MouseClick, M, 900, 450, 1, 3
;MouseClick, M, 900, 475, 1, 3

; Child
;MouseClick, M, 1029, 375, 1, 3
MouseClick, M, 1134, 400, 1, 3
MouseClick, M, 1134, 425, 1, 3
MouseClick, M, 1134, 450, 1, 3
MouseClick, M, 1134, 475, 1, 3


Return

; Things that do not count:
; Events
; Pages that do not load any info.(not complete queries)
; pressing run on an unfinished query
; Google Name search
; Adding Any data point to create an query. 
; Adding any data point. 
; Submit for any Report
; Looking at VT
; Meta X data
; Importing any md5 that is or is not in the system.
; bringing up any md5 doesn't count.
; Looking at Query Narrative

; Things that do count for actions. 
; Child/Parent
; Triangle Hashes 
; New Query
; Drill down
; Organize by data point.
; switching pages
; Brining up more than 2 md5s is 3 actions
; Clicking Run.
;Open a Copy of this query in a new window
; Using B,U,G 

; 10, 375
;l     401