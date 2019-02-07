Loop
{
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bmp_files/gban.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bmp_files/fizz.bmp
	if ErrorLevel = 0
		{
		MouseClick, left, %FoundX%, %FoundY%
		}
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bmp_files/mid.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bmp_files/accept.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bmp_files/glockin.bmp
if ErrorLevel = 0
	{
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bmp_files/lux.bmp
	if ErrorLevel = 0
		{
		MouseClick, left, %FoundX%, %FoundY%
		}
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bmp_files/lockin.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bmp_files/ban.bmp
	if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
}
return