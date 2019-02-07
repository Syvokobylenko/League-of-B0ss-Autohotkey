^z::
Szef:
Loop
{
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/play.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
MouseMove, 0, 0
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/coop.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/lcoop.bmp
if ErrorLevel = 0
	{
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/begginer.bmp
	if ErrorLevel = 0
		{
		MouseClick, left, %FoundX%, %FoundY%
		}
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/lbegginer.bmp
if ErrorLevel = 0
	{
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/confirm.bmp
	if ErrorLevel = 0
		{
		MouseClick, left, %FoundX%, %FoundY%
		}
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/find.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/accept.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/glockin.bmp
if ErrorLevel = 0
	{
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/ashe.bmp
	if ErrorLevel = 0
		{
		MouseClick, left, %FoundX%, %FoundY%
		}
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/lockin.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/continue.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/honorek.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, klika/playagain.bmp
if ErrorLevel = 0
	{
	MouseClick, left, %FoundX%, %FoundY%
	}
sleep 100
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/crit.bmp
if ErrorLevel = 0
	{
	skillshot1 := "q"
	skillshot2 := "w"
	skillshot3 := "e"
	lvlmax := "w"
	lvlsec := "q"
	lvllast := "e"
	subitem1 := "long"
	miditem1 := "cutl"
	fullitem1 := "ruin"
	subitem2 := "speed"
	miditem2 := "dagger"
	fullitem2 := "bers"
	subitem3 := "glov"
	miditem3 := "zeal"
	fullitem3 := "runa"
	subitem4 := "bf"
	miditem4 := "pick"
	fullitem4 := "infi"
	subitem5 := "bf"
	miditem5 := "chai"
	fullitem5 := "guardia"
	subitem6 := "long"
	miditem6 := "vampi"
	fullitem6 := "bt"
	sleep 15000
	HptlX = 0
	HpbrX = 0
	MapX = 0
	BaseX = 0
	Sold1 = 0
	Sold2 = 0
	Sold3 = 0
	Sold4 = 0
	Sold5 = 0
	Sold6 = 0
	done1 = 0
	Lvl = 1
	Loop
		{
		Gierka:
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/crit.bmp
		if ErrorLevel = 1
			{
			goto, Szef
			}
		if (BaseX = 0)
			{
			ImageSearch, BaseX, BaseY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/base.bmp
			if ErrorLevel = 1
			BaseX = 0
			}
		if (MapX = 0)
			{
			ImageSearch, MapX, MapY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/map.bmp
			if ErrorLevel = 1
			MapX = 0
			}
		if (HptlX = 0)
			{
			ImageSearch, HptlX, HptlY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/hptl.bmp
			if ErrorLevel = 1
			HptlX = 0
			}
		if (HpbrX = 0)
			{
			ImageSearch, HpbrX, HpbrY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/hpbr.bmp
			if ErrorLevel = 1
			HpbrX = 0
			}
		send, {LShift down}
		MouseClick, right, %MapX%, %MapY%
		send, {LShift up}
		Noclick:
		ImageSearch, FoundX, FoundY, %HptlX%, %HptlY%, %HpbrX%, %HpbrY%, game/blood.bmp
		if ErrorLevel = 0
			{
			goto, Retreat
			}
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/lowhp.bmp
		if ErrorLevel = 1
			{
			goto, BackToBase
			}
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/coin.bmp
		if ErrorLevel = 0
			{
			goto, Shop
			}
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/lvl.bmp
		if ErrorLevel = 0
			{
			goto, Lvlup
			}
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/enemy.bmp
		if ErrorLevel = 0
			{
			goto, Skills
			}
		ImageSearch, TurretX, TurretY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/turret.bmp
		if ErrorLevel = 0
			{
			ImageSearch, FoundX, FoundY, 300, 0, 1024, 500, game/minion.bmp
			if ErrorLevel = 0
				{
				MouseClick, right, % TurretX + 60, % TurretY + 100
				goto, Noclick
				}
			else
				MouseClick, right, %BaseX%, %BaseY%
				sleep 500
				MouseClick, right, %BaseX%, %BaseY%
				sleep 500
				goto, Gierka
			
			}
		goto, Gierka

		Retreat:
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		goto, Noclick
		
		BackToBase:
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/lowhp.bmp
		if ErrorLevel = 0
			{
			goto, Gierka
			}
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/coin.bmp
		if ErrorLevel = 0
			{
			goto, Shop
			}
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/lowhp.bmp
		if ErrorLevel = 0
			{
			goto, Gierka
			}
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/coin.bmp
		if ErrorLevel = 0
			{
			goto, Shop
			}
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/lowhp.bmp
		if ErrorLevel = 0
			{
			goto, Gierka
			}
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/coin.bmp
		if ErrorLevel = 0
			{
			goto, Shop
			}
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		sleep 500
		MouseClick, right, %BaseX%, %BaseY%
		send, b
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/lowhp.bmp
		if ErrorLevel = 0
			{
			goto, Gierka
			}
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/coin.bmp
		if ErrorLevel = 0
			{
			goto, Shop
			}
		sleep 4500
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/lowhp.bmp
		if ErrorLevel = 0
			{
			goto, Gierka
			}
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/coin.bmp
		if ErrorLevel = 0
			{
			goto, Shop
			}
		sleep 4000
		goto, Gierka
		
		Biedak:
		sleep 5000
		send, {Esc}
		send, {LShift down}
		MouseClick, right, %MapX%, %MapY%
		send, {LShift up}
		sleep 5000
		goto, Gierka
		
		Shop:
		send, s
		sleep 500
		if (sold1 = 0) 
			{
			goto, Item1
			}
		if (sold2 = 0) 
			{
			goto, Item2
			}
		if (sold3 = 0) 
			{
			goto, Item3
			}
		if (sold4 = 0) 
			{
			goto, Item4
			}
		if (sold5 = 0) 
			{
			goto, Item5
			}
		if (sold6 = 0) 
			{
			goto, Item6
			}
		goto, Biedak
		Item1:
		if (done1 = 1)
			{
			goto, Part11
			}
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %subitem1%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %miditem1%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		Part11:
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %fullitem1% ;
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		done1 = 1
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bolid/item1.bmp
		if ErrorLevel = 0
			{
			sold1 = 1
			done1 = 0
			}
		else 
			{
			goto, Biedak
			}
		Item2:
		if (done1 = 1)
			{
			goto, Part12
			}
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %subitem2%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %miditem2%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		Part12:
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %fullitem2%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		done1 = 1
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bolid/item2.bmp
		if ErrorLevel = 0
			{
			sold2 = 1
			done1 = 0
			}
		else 
			{
			goto, Biedak
			}
		Item3:
		if (done1 = 1)
			{
			goto, Part13
			}
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %subitem3%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %miditem3%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		Part13:
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %fullitem3%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		done1 = 1
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bolid/item3.bmp
		if ErrorLevel = 0
			{
			sold3 = 1
			done1 = 0
			}
		else 
			{
			goto, Biedak
			}
		Item4:
		if (done1 = 1)
			{
			goto, Part14
			}
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %subitem4%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %miditem4%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		Part14:
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %fullitem4%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		done1 = 1
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bolid/item4.bmp
		if ErrorLevel = 0
			{
			sold4 = 1
			done1 = 0
			}
		else 
			{
			goto, Biedak
			}
		Item5:
		if (done1 = 1)
			{
			goto, Part15
			}
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %subitem5%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %miditem5%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		Part15:
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %fullitem5%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		done1 = 1
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bolid/item5.bmp
		if ErrorLevel = 0
			{
			sold5 = 1
			done1 = 0
			}
		else 
			{
			goto, Biedak
			}
		Item6:
		if (done1 = 1)
			{
			goto, Part16
			}
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %subitem6%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %miditem6%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		Part16:
		send, p
		sleep 200
		send, ^l
		sleep 200
		send, %fullitem6%
		sleep 200
		MouseClick, right, 176, 117
		sleep 200
		send, {Esc}
		sleep 200
		done1 = 1
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, bolid/item6.bmp
		if ErrorLevel = 0
			{
			sold6 = 1
			done1 = 0
			}
		else 
			{
			goto, Biedak
			}
		Lvlup:
		If (Lvl = 1)
			{
			send, ^%lvlmax%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 2)
			{
			send, ^%lvlsec%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 3)
			{
			send, ^%lvlmax%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 4)
			{
			send, ^%lvllast%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 5)
			{
			send, ^%lvlmax%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 6)
			{
			send, ^r
			Lvl++
			goto, Gierka
			}
		If (Lvl = 7)
			{
			send, ^%lvlmax%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 8)
			{
			send, ^%lvlsec%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 9)
			{
			send, ^%lvlmax%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 10)
			{
			send, ^%lvlsec%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 11)
			{
			send, ^r
			Lvl++
			goto, Gierka
			}
		If (Lvl = 12)
			{
			send, ^%lvlsec%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 13)
			{
			send, ^%lvlsec%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 14)
			{
			send, ^%lvllast%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 15)
			{
			send, ^%lvllast%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 16)
			{
			send, ^r
			Lvl++
			goto, Gierka
			}
		If (Lvl = 17)
			{
			send, ^%lvllast%
			Lvl++
			goto, Gierka
			}
		If (Lvl = 18)
			{
			send, ^%lvllast%
			Lvl = 1
			goto, Gierka
			}
		Skills:
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/lowenemy.bmp
		if ErrorLevel = 0
			{
			ImageSearch, TurretX, TurretY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/turret.bmp
			if ErrorLevel = 0
				{			
				MouseClick, right, %BaseX%, %BaseY%
				sleep 500
				MouseClick, right, %BaseX%, %BaseY%
				sleep 500
				goto, Gierka
				}
			}
		MouseMove, % FoundX + 40, % FoundY + 90
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, game/lowenemy.bmp
		if ErrorLevel = 1
			{
			send, r
			}
		send, %skillshot1%
		send, %skillshot2%
		send, %skillshot3%
		MouseClick, right, % FoundX + 40, % FoundY + 90
		
		goto, Gierka
		}
	}
}
return