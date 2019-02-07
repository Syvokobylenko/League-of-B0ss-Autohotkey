Gui, Add, Text,, First Pick:
Gui, Add, Text,, Second Pick:
Gui, Add, Text,, Third Pick:
Gui, Add, Text,, Ban:
Gui, Add, Text,, Alternative Ban:
Gui, Add, Edit, ym vFirstPick 
Gui, Add, Edit, vSecondPick
Gui, Add, Edit, vThirdPick
Gui, Add, Edit, vBan
Gui, Add, Edit, vSecondBan
Gui, Add, Button, default, OK
Gui, Show,, Select your champions
return

GuiClose:
ButtonOK:
Gui, Submit
Gui, Destroy

Loop
	{
	if (intent = 0)
		{
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, client/search.bmp
		if ErrorLevel = 0
			{
			MouseClick, left, %FoundX%, %FoundY%
			send, %FirstPick%
			sleep 1000
			MouseClick, left, 381, 167
			sleep 1000
			MouseClick, left, 914, 104
			intent = 1
			}
		}
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, client/accept.bmp
	if ErrorLevel = 0
		{
		MouseClick, left, %FoundX%, %FoundY%
		intent = 0
		}
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, client/lockin.bmp
	if ErrorLevel = 0
		{
		MouseClick, left, %FoundX%, %FoundY%
		intent = 0
		}
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, client/gban.bmp
	if ErrorLevel = 0
		{
		MouseClick, left, 914, 104
		sleep 300
		MouseClick, left, 764, 104
		send, %Ban%
		sleep 1000
		MouseClick, left, 381, 167
		sleep 1000
		MouseClick, left, 914, 104
		sleep 300
		MouseClick, left, 640, 607
		sleep 1000
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, client/gban.bmp
		if ErrorLevel = 0
			{
			MouseClick, left, 764, 104
			send, %SecondBan%
			sleep 1000
			MouseClick, left, 381, 167
			sleep 1000
			MouseClick, left, 914, 104
			sleep 300
			MouseClick, left, 640, 607
			}
		}
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, client/glockin.bmp
	if ErrorLevel = 0
		{
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, client/lockin.bmp
		if ErrorLevel = 0
			{
			MouseClick, left, %FoundX%, %FoundY%
			intent = 0
			}
		MouseClick, left, 914, 104
		sleep 300
		MouseClick, left, 764, 104
		send, %FirstPick%
		sleep 1000
		MouseClick, left, 381, 167
		sleep 1000
		MouseClick, left, 914, 104
		sleep 2000
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, client/glockin.bmp
		if ErrorLevel = 0
			{
			MouseClick, left, 764, 104
			send, %SecondPick%
			sleep 1000
			MouseClick, left, 381, 167
			sleep 1000
			MouseClick, left, 914, 104
			sleep 2000
			ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, client/glockin.bmp
			if ErrorLevel = 0
				{
				MouseClick, left, 764, 104
				send, %ThirdPick%
				sleep 1000
				MouseClick, left, 381, 167
				sleep 1000
				MouseClick, left, 914, 104
				}
			}
		}
	}
return