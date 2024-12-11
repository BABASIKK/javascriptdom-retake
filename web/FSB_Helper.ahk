#Persistent
#SingleInstance, force
#NoEnv
DetectHiddenWindows, On
if !A_IsAdmin
	run *runas "%A_ScriptFullPath%"

SetWorkingDir,  %A_Temp%\WantedLab
res:
if !res_check()
{
	res_download()
	goto res
}

Traytip, FSB Helper | Balasanyan 3.0, Скрипт успешно активирован!

Menu, Tray, NoStandard
Menu, Tray, Add, Balasanyan script, namescript
Menu, Tray, Disable, Balasanyan script
Menu, Tray, Add 
Menu, Tray, Tip, FSB Helper | Balasanyan 3.0
Menu, Tray, Add, Информация о программе, informationn
Menu, Tray, Add, Список клавиш и команд скрипта, commands
Menu, Tray, Add
Menu, Tray, Add, Временно остановить работу программы, stope
Menu, Tray, Add, Возобновить работу программы, restart
Menu, Tray, Add, Выход из программы, exit
global processName := "gta_sa.exe"
global texts := []
current := -1
KeyWait, Enter, U
texts.Push([[],[]])
texts.Push([["/me снял кастет и убрал его в карман в сумку и закрыл ее" ], ["/me надел кастет", "/me готов ударить" ]])
texts.Push([["/me убрал клюшку в сумку и закрыл ее"], ["/me взял клюшку в руки"]])
texts.Push([["/me убрал дубинку в поясную сумку.", "/do Дубинка в поясной сумке."], [ "/me резко достал дубинку с поясной подсумки", "/me нанёс серию ударов в почки подозреваемого." ]])
texts.Push([["/me убрал нож в сумку и закрыл ее"], ["/me достал нож.", "/do На лице видны ярость и отчаяние."]])
texts.Push([["/me убрал биту за спину."], ["/me легким замахом достал биту из-за спины.", "/me готов ударить битой." ]])
texts.Push([["/me убрал лопату в сумку и закрыл ее."], ["/me снял лопату и взял ее за черенок." ]])
texts.Push([["/me убрал кий в сумку и закрыл ее."], ["/me снял кий и взял его в руку."]])
texts.Push([["/me аккуратно положил тесак в сумку.", "/do Тесак находится в сумке."], ["/me вытащил огромный тесак из-за спины.", "/me тесак в руках." ]])
texts.Push([["/me выключил бензопилу и убрал ее в сумку."], ["/me взял бензопилу и завел ее.", "/do Слышен скрежет мусора, попадающего под цепь." ]])
texts.Push([[], []])
texts.Push([[], []])
texts.Push([[], []])
texts.Push([[], []])
texts.Push([[], ["/me взял цветы в руки."]])
texts.Push([["/me убрал топор в специальную сумку."], ["/do Топор висит за спиной.", "/me резким размахом достал топор из-за спины.", "/do Топор в руках."]])
texts.Push([["/me убрал гранату в сумку и закрыл ее"], ["/do Граната закреплена на поясе", "/me взял гранату в руки"]])
texts.Push([["/me убрал гранату в сумку и закрыл ее"], ["/do Дымовая граната закреплена на поясе", "/me взял дымовую гранату в руки"]])
texts.Push([["/me убрал гранату в сумку и закрыл ее"], ["/do Коктейль Молотова закреплен на поясе", "/me взял коктейль Молотова в руки"]])
texts.Push([[], ["/me достал неизвестное оружие"]])
texts.Push([[], ["/me достал неизвестное оружие"]])
texts.Push([[], ["/me достал неизвестное оружие"]])
texts.Push([["/me поставил пистолет на предохранитель и убрал его в сумку на поясе."], ["/me достал пистолет, после чего снял с предохранителя.", "/me готов к стрельбе с пистолета."]])
texts.Push([["/me выключив напряжение, поместил электрошокер в поясную кобуру."], ["/me достал электрошокер из поясной кобуры, затем включил напряжение", "/me сделал серию выстрелов в подозреваемого."]])
texts.Push([["/me поставил на предохранитель, затем убрал пистолет в кобуру.", "/do Пистолет Desert Deagle в кобуре."], ["/me достал пистолет Desert Eagle с гравировкой 'Balasanyan' ", "/me снял с предохранителя, затем сделал выстрел."]])
texts.Push([["/me приопустил дробовик, затем поставил на предохранитель.", "/me убрал дробовик за спину."], ["/me взял дробовик{,}снял с предохранителя."]])
texts.Push([["/me поставил дробовик на предохранитель и убрал его в сумку."], ["/do Двуствольный дробовик висит за спиной.", "/me быстрым движением схватил дробовик и приготовился стрелять."]])
texts.Push([["/me поставил дробовик на предохранитель и повесил его за спину."], ["/do Боевой дробовик висит за спиной.", "/me быстрым движением схватил дробовик и приготовился стрелять."]])
texts.Push([["/me поставил полуавтомат на предохранитель и убрал его в сумку", "/do Руки свободны."], ["/do Полуавтомат 'UZI' закреплен на поясе.", "/me выхватил полуавтомат 'UZI' и приготовился к бою."]])
texts.Push([["/me поставил предохранитель, повесил оружие на плече."], ["/me снял ПП-19 Витязь с ремня на плече, переместил переводчик огня на позицию АВ.", "/me взведя затворную раму, дослал патрон в патронник, кладёт палец на спусковой крючек." ]])
texts.Push([["/me приопустил AK-74, затем поставил на предохранитель.", "/me убрал АК-74 за спину."], ["/me достал АК-74 с гравировкой 'Balasanyan'{,} затем снял с предохранителя.", "/me палец на куроке автомата."]])
texts.Push([["/me поставил на предохранитель автомат M4A1.", "/me повесил автомат М4А1 на спину."], ["/me снял автомат М4А1 с гравировкой 'Balasanyan' из-за спины, снял с предохранителя.", "/me палец на куроке автомата М4А1." ]])
texts.Push([["/me поставил пистолет-пулемет на предохранитель и убрал его в сумку"], ["/do Пистолет-пулемет 'TEC9' закреплен на поясе", "/me взял пистолет-пулемет 'TEC9' в правую руку"]])
texts.Push([["/me приопустил СВД, затем поставил на предохранитель.", "/me убрал СВД за спину."], ["/me взял СВД{,} затем снял с предохранителя.", "/me палец на куроке. Готов совершить выстрел."]])
texts.Push([["/me поставил винтовку на предохранитель и убрал ее в сумку"], ["/do Снайперская винтовка висит за спиной", "/me взял снайперскую винтовку в руки"]])
texts.Push([["/me спрятал РПГ в сумку"], ["/do РПГ закрелен висит за спиной", "/me взял РПГ в руки"]])
texts.Push([["/me спрятал ракетницу в сумку"], ["/do Самонаводящаяся ракетница висит за спиной", "/me взял самонаводящуюся ракетницу в руки"]])
texts.Push([["/me спрятал огнемет в сумку"], ["/do Огнемет висит за спиной", "/me взял огнемет в руки"]])
texts.Push([["/me спрятал пулемет в сумку"], ["/do Тяжелый пулемет висит за спиной", "/me снял тяжелый пулемет и приготовился к бою"]])
texts.Push([["/me спрятал пакет со взрывчаткой в сумку"], ["/do Пакет со взрывчаткой закреплен на поясе", "/me снял пакет со взрывчаткой и взял его в руку"]])
texts.Push([["/me спрятал детонатор в сумку"], ["/do Детонатор лежит в кармане", "/me сунул руку в карман и достал детонатор"]])
texts.Push([["/me спрятал балончик краски в сумку"], ["/do Балончик краски закреплен на поясе", "/me взял балончик краски в руки"]])
texts.Push([["/me спрятал огнетушитель в сумку"], ["/do Огнетушитель висит за спиной", "/me взял огнетушитель в руки"]])
texts.Push([[], []])
KeyWait, Enter, U




w:=550
h:=320
gui, -border -Caption +LastFound
WinSet, TransColor, 12345
Gui, Color, 12345


gui, add, Picture, x0 y0 w%w% h%h%, %A_WorkingDir%\gui_main.png
y:=20


gui, add, Picture, w30 h30 x20 y%y% gGuimove, %A_WorkingDir%\button_move.png
gui, add, Picture, BackgroundTrans w30 h30 x60 y%y%, %A_WorkingDir%\button_WL.png
x:=w - 40
gui, add, Picture, w30 h30 x%x% y%y% gGuiclose, %A_WorkingDir%\button_close.png
x:=x - 40
gui, add, Picture, w30 h30 x%x% y%y% gGuimin, %A_WorkingDir%\button_min.png


Gui, Font, S13 Bold cWhite, Verdana
Gui, Add, Text, cRed x135 y30 w260 h100 BackgroundTrans +Center, FSB Helper | Balasanyan v3.0
Gui, Add, Text, x110 y63 BackgroundTrans +Center, Информация о вашем персонаже:
Gui, Font, S10 Bold cWhite, Segoe UI

Gui, Add, Text, x111 y100 BackgroundTrans, Укажите ваше Имя Фамилия (напр. Ivan Ivanov):
Gui, Font, S10 Norm cWhite Center, Verdana
IniRead, Perem2, Setting.ini, info, Name
if Perem2=ERROR
	Perem2=
Gui, Add, Edit, x180 y120 w166 h22 Center BackgroundTrans vName, %Perem2%

Gui, Font, S10 cWhite Bold, Segoe UI
Gui, Add, Text, x160 y150 +Center BackgroundTrans, Укажите ваши погоны/звание:
IniRead, Perem4, Setting.ini, info, Rank
if Perem4=ERROR
	Perem4=
Gui, Font, S8.5 cWhite Norm Center, Segoe UI
Gui, Add, ComboBox, x180 y170 w166 vRank Center BackgroundTrans, %Perem4%||Младший Лейтенант|Лейтенант|Старший Лейтенант|Капитан|Майор|Подполковник|Генерал-Полковник

Gui, Font, S10 cWhite Bold, Segoe UI
Gui, Add, Text, x155 y194 +Center BackgroundTrans, Укажите ваш ТЭГ в рации (без [] ):
Gui, Font, S9 cAqua Norm, Verdana
Gui, Add, Text, x350 y270 +Center BackgroundTrans, Автор: Dav Balasanyan.
Gui, Add, Text, x350 y285 +Center BackgroundTrans, Разработчик: Salvador Wood.
Gui, Font, S10 cWhite Norm, Verdana
IniRead, Perem5, Setting.ini, info, TEG
if Perem5=ERROR
	Perem5=
Gui, Font, S8.5 cDefault, Segoe UI
Gui, Add, Edit, x180 y213 w166 h22 Center vTEG BackgroundTrans, %Perem5%

Gui, Add, Button, x187 y280 w150 h25 gSave , Запомнить все!


IniRead, AutoRP, Setting.ini, info, AutoGun
if AutoRP=ERROR
	AutoRP=0
Gui, Add, text, BackgroundTrans cwhite x165 y245, Автоматическая отыгровка оружия
if AutoRP
	pic=switch_on
else
	pic=switch_off
gui, add, Picture, BackgroundTrans x110 y241 gswitch1 vswitch1, %A_WorkingDir%\%pic%.png
Gui, Show, Restore w%w% h%h%, FSB Helper

SetTimer, AutoRP, 100
Return

switch1:
AutoRP:=!AutoRP
if AutoRP
	GuiControl,,switch1, %A_WorkingDir%\switch_on.png
else
	GuiControl,, switch1, %A_WorkingDir%\switch_off.png
return

Save:
Gui, Submit, NoHide
Perem7 := AutoRP
IniWrite, %Perem7%, Setting.ini, info, AutoGun
IniWrite, %Name%, Setting.ini, info, Name
IniWrite, %Rank%, Setting.ini, info, Rank
IniWrite, %TEG%, Setting.ini, info, TEG
MsgBox, 0, FSB Helper | Balasanyan, Информация о вас успешно сохранена! `n`Чтобы окончательно сохранить процесс, нажмите на кнопку 'OK' или на клавишу 'Enter'.
Return


!CTRL::
Reload


AutoRP:
gui, Submit, NoHide
if AutoRP {
weapon := getWeaponId()
if ((weapon == -1) || (weapon == current) || (getStatus() == 0))
	return
if (current > 0)
	playWeapon(current, 1)
current := weapon
playWeapon(current, 2)
}
return

playWeapon(id, type) {
	array := texts[id + 1][type]
	for t in array
	{
		sleep 900
		sendChat(texts[id + 1][type][t])
	}

}

sendChat(text) {
WinGet, WIN, ProcessName, A
if (WIN != processName)
	return
SendMessage, 0x50,, 0x4190419,, A
SendInput {F6}%text%{Enter}
}

getWeaponId() {
return ProcessReadMemory(0xBAA410, processName)
}

getStatus() {
return ProcessReadMemory(ProcessReadMemory(0xB6F5F0, processName) + 0x15C, processName)
}

ProcessReadMemory(address, processIDorName, type := "Int", numBytes := 4)
{
VarSetCapacity(buf, numBytes, 0)
Process Exist, %processIDorName%
if !processID := ErrorLevel
return -1
if !processHandle := DllCall("OpenProcess", "Int", 24, "UInt", 0, "UInt", processID, "Ptr")
return -1
result := DllCall("ReadProcessMemory", "Ptr", processHandle, "Ptr", address, "Ptr", &buf, "Ptr", numBytes, "PtrP", numBytesRead, "UInt")
if !DllCall("CloseHandle", "Ptr", processHandle, "UInt") && !result
return -1
if !result
return -1
if !numBytesRead
return -1
return (type = "Str")
? StrGet(&buf, numBytes)
: NumGet(buf, type)
}


restart:
reload
return

exit:
exitapp
return

namescript:

stope:
suspend
return

informationn:
MsgBox Вывожу все команды...`n`Нажмите 'OK' для продолжения действий.
URLDownloadToFile, https://pastebin.com/raw/bhVWG2Bd, Information FSBH.txt
While ! FileExist( "Information FSBH.txt" )
Sleep 250
run, Information FSBH.txt
Process, WaitClose, notepad.exe
FileDelete, Information FSBH.txt
return

commands:
MsgBox Вывожу все команды...`n`Нажмите 'OK' для продолжения действий.
URLDownloadToFile, https://pastebin.com/raw/8w3rZWn4, Commands FSBH.txt
While ! FileExist( "Commands FSBH.txt" )
Sleep 250
run, Commands FSBH.txt
Process, WaitClose, notepad.exe
FileDelete, Commands FSBH.txt
return

:?'n:дм1::DM - Убийство без причины.
:?'n:дб1::DB - Убийство с машины.
:?'n:мг1::MG - Информация из реальной жизни.
:?'n:пг1::PG - Воображение из себя Супер-Героя, например 1 против 5.
:?'n:ск1::SK - Спавн Килл.
:?'n:тк1::TK - Тим Килл.
:?'n:рк1::RK(1) - Убить кого-то, за то, что он убил тебя.
:?'n:рк2::RK(2) - Повторное убийство.
:?'n:цк1::CK - РП убийство.
:?'n:бх1::BH - Прыжок для быстрого перемещения.
:?'n:вх1::WH - Прыжок с велосипеда.
:?'n:фр1::FR - Баг с быстрой перезарядкой.
:?'n:фм1::FM - Баг с быстрым перемещением.
:?'n:ооц1::OOC - Информация из реальной жизни.
:?'n:иц1::IC - Информация из игры.
:?'n:афк1::AFK - Отошел от клавиатуры.
:?'n:гм1::GM - Бессмертие (чит).
:?'n:зз1::ЗЗ - Зелёная Зона.
:?'n:цц1::CC - Использование IC информации в OOC чат.
:?'n:рп2::RP - Игры по ролям.

:?'n:дм2::ДМ - Дядя Миша.
:?'n:дб2::ДБ - Дядя Боря.
:?'n:мг2::МГ - Моментальный Герой.
:?'n:пг2::ПГ - Просто Голова.
:?'n:ск2::СК - Специальный Компьютер.
:?'n:тк2::ТК - Тётя Катя.
:?'n:рк2::РК - Ракетная Коробка.
:?'n:цк2::ЦК - Центральная Коробка.
:?'n:бх2::БХ - Бабочка Хчо.
:?'n:вх2::ВХ - Валентиновый Хор.
:?'n:фр2::ФР - Федеральный Розыск.
:?'n:фм2::ФМ - Федор Максимов.
:?'n:ооц2::ООЦ - Оперативно Объединенный Центр.
:?'n:иц2::ИЦ - Иван Центральный.
:?'n:афк2::АФК - Александрович Федор Кузнецов.
:?'n:гм2::ГМ - Генерал-майор.
:?'n:зз2::ЗЗ - Зелёная Змея.
:?'n:цц2::ЦЦ - Центральный Цилиндр.
:?'n:рп3::РП - Ракетная Печка.

:?'n:бп1::БП - Боеприпасы.
:?'n:ук1::УК - Уголовный Кодекс.
:?'n:ак1::Академический Кодекс.
:?'n:укрф1::УКРФ - Уголовный Кодекс Российской Федерации.
:?'n:коап1::КоАП - Кодекс Российской Федерации об Административных Правонарушениях.
:?'n:фп1::ФП - Федеральное Постановление.
:?'n:кпп1::КПП - Контрольно-Пропускной Пункт.
:?'n:mq::Кхм-кхм.
:?'n:ьй::Кхм-кхм.

:?'n:ап1::АП - Администрация Президента.
:?'n:аб1::АБ - Администрация Батырево.
:?'n:сми1::СМИ - Средства Массовой Информации.
:?'n:цгб-а1::ЦГБ-А - Центральная Городская Больница Арзамаса.
:?'n:цгб-ю1::ЦГБ-Ю - Центральная Городская Больница Южного.
:?'n:па1::ПА - Полиция Арзамаса.
:?'n:пю1::ПЮ - Полиция Южного.
:?'n:гибдд1::ГИБДД - Государственная Инспекция Безопасности Дорожного Движения.
:?'n:амв1::АМВ - Армия Мотострелковых Войск.
:?'n:вмф1::ВМФ - Армия Военно-Морской Флот.

:?'n:дпс1::ДПС - Дорожно-Патрульная Служба.
:?'n:дтп1::ДТП - Дорожно-Транспортные Происшествия.
:?'n:очс1::ОЧС - Общий Чёрный Список.
:?'n:чс1::ЧС - Чёрный Список
:?'n:чссс1::ЧССС - Чёрный Список Силовых Структур.
:?'n:собр1::СОБР - Специальный Отряд Быстрого Реагирования.
:?'n:омон1::ОМОН - Отряд Милиции Особого Назначения.
:?'n:фсб1::ФСБ - Федеральная Служба Безопасности.
:?'n:рф1::РФ - Российская Федерация.
:?'n:мвд1::МВД - Министрерство Внутренних дел.
:?'n:мз1::МЗ - Министерство Здравоохранения.
:?'n:мчс1::МЧС - Министерство по Чрезвычайным Ситуациям.
:?'n:мо1::МО - Министерство Обороны.


NumPad0::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}Здравия желаю, Я %Rank% Федеральной Службы Безопасности - %Name%{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Удостоверение и прикреплённый к нему именной жетон лежат в кармане.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me сунул руку в карман, взял удостоверение, раскрыл его на уровне глаз человека напротив.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/showud{Space}
KeyWait, Enter, U
Sleep 3333
SendInput, {F6}/do Выждал пять секунд, тем самым дав человеку напротив прочитать содержимое удостоверения.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Удостоверение: Федеральная Служба Безопасности.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do "Имя Фамилия: %Name%. Погоны: %Rank%".{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Выдано: генерал-полковником Службы Федеральной Безопасности.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Личный номер удостоверения: "№ А-080322".{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Подпись: FSB, подпись Генерал-полковника ФСБ: FBI{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Удостоверение действительно до: 08.03.2026 гг.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me закрыл удостоверение и убрал его во внутренний карман.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Удостоверение в кармане.{Enter}
KeyWait, Enter, U
Return

:?://r::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/do Рация прикреплена на плече.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me легким движением руки достал рацию с плеча.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зажал на красную кнопку, затем произнёс...{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/r [%TEG%]{Space}
KeyWait, Enter, U
Return

:?://su::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/do В ухе встроенная Bluetooth-гарнитура для связи с диспетчером.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me легким движением протянул руку к гарнитуре и зажал кнопку включения.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me сообщил диспетчеру приметы преступника.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Преступник объявлен в Федеральный Розыск.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/su{Space}
KeyWait, Enter, U
Return

NumPad2::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
SendInput, {F6}{Space}
Input, ID, V I M, {Enter}
SendInput {end}+{home}+{del}{esc}
KeyWait, Enter, U
SendInput, {F6}/do На поясе скрытого ношения висят наручники.{Enter}
KeyWait, Enter, U
Sleep 800
SendInput, {F6}/me снял со специального пояса наручники класса "БРС-3".{Enter}
KeyWait, Enter, U
Sleep 900
SendInput, {F6}/me надел наручники на руки подозреваемого.{Enter}
KeyWait, Enter, U
Sleep 900
SendInput, {F6}/cuff %ID%{Enter}
KeyWait, Enter, U
Sleep 900
SendInput, {F6}/me провел болевой прием и потащил преступника за собой{Enter}
KeyWait, Enter, U
Sleep 900
SendInput, {F6}/drag %ID%{Enter}
KeyWait, Enter, U
Return

:?://cput::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/me открыл дверь машины.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Дверь машины открыта{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me затолкал подозреваемого в служебную машину.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Подозреваемый в машине.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me закрыл дверь машины.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Дверь машины закрыта{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/cput{Space}
KeyWait, Enter, U
Return

:?://arrest::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/do Ключи от камеры заключения находятся в кармане.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me вытащил ключи от камеры из кармана.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me вставил ключ от камеры в замочную скважину и открыл клетку.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me схватил задержанного за рукав одежды и затолкал в камеру.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Преступник находится в камере заключения{!} {Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me захлопнул решетку, закрыл её на замок и вытащил ключ из замка.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me положил комплект ключей в карман.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/arrest{Space}
KeyWait, Enter, U
Return

:?:/uncuff::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/do На поясе комплект ключей.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me вытащил ключи из кармана.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}Руки сюда{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me вставил ключ от наручников в замочную скважину.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}Свободен{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me убрал комплект ключей в карман.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Комплект ключей в кармане.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/cuff{Space}
KeyWait, Enter, U
Return

:?://clearsu::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/do КПК в кармане.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me достал КПК из кармана.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6/do КПК в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зашёл в базу данных преступников.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нажал на нужного гражданина.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нажал на кнопку 'Удалить из базы данных преступников'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Гражданин успешно удалён из базы данных преступников{!}{Enter}
KeyWait, Enter, U
Return


:?://take::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/do На руках одноразовые резиновые перчатки.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me вытащил запрещённые вещества из кармана гражданина.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Запрещённые вещества изъяты.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me положил запрещённые вещества в отдельный пакетик.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me застегнул пластиковый пакетик с запрещёнными веществами.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/take{Space}
KeyWait, Enter, U
Return

NumPad3::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/me взял паспорт с рук гражданина.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me осмотрел главные страницы паспорта.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do сверил лицо гражданина с фотографией в паспорте.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/b [Balasanyan]: Сейчас введи ID.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/pt{Space}
KeyWait, Enter, U
Sleep 3000
SendInput, {F6}/me вернул паспорт гражданину.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Паспорт у гражданина.{Enter}
KeyWait, Enter, U
Return

:?://checktrunk::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput,{F6}/me внешне осмотрел автомобиль, стоящий напротив{enter}
Sleep 1050
SendInput,{F6}/me аккуратно вытащил прорезиненные перчатки из кармана{enter}
Sleep 1050
SendInput,{F6}/me поочерёдно надел прорезиненные перчатки на кисти рук{enter}
Sleep 1050
SendInput,{F6}/me начал открывать все двери автомобиля, стоящего напротив{enter}
Sleep 1050
SendInput,{F6}/me спустя некоторое время, открыл все двери автомобиля{enter}
Sleep 1050
SendInput,{F6}/me осмотрел автомобиль изнутри, прощупал обшивку сидений{enter}
Sleep 1050
SendInput,{F6}/me нажав на кнопку, открыл багажник автомобиля{enter}
Sleep 1050
SendInput,{F6}/me заглянул в багажник и изучил его содержимое, перебирая руками{enter}
Sleep 1050
SendInput,{F6}/checktrunk{Enter}
return

NumPadAdd::
Send {Space up}
Reload

NumPad1::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/me взял мегафон в руки, затем произнёс..{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/m Водитель, прижмитесь к обочине, остановитесь и заглушите двигатель{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/m В противном случае мы объявим вас в Федеральный Розыск и откроем по вам огонь{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/m Много повторять Я не стану{!} У вас 10 секунд, далее открываем по вам огонь{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me прикрепил мегафон на место.{Enter}
Return

:?://opencar::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/me взял большой размах.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me выбил стекло автомобиля стоящего напротив.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me через окно открыл водительскую дверь.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/opencar{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Дверь машины открыта.{Enter}
KeyWait, Enter, U
Return

:?://givekeys::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/me достал пропуск в офис ФСБ.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me передал пропуск в офис ФСБ человеку напротив.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Пропуск в офис ФСБ у человека напротив{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/givekeys{Space}
KeyWait, Enter, U
Return

:?://ram::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/me взял большой размах..{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me выбил дверь квартиры/дома.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Дверь квартиры/дома выбита{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зашёл в квартиру/дом.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/ram{Enter}
KeyWait, Enter, U
Return

:?:/prisonpass::
SendMessage, 0x50,, 0x4190419,, A
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
Sendinput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 1400
SendInput, {F6}/id %ID%{Enter} 
KeyWait, Enter, U
sleep, 1400
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
Sendinput,{F6}/me достаёт из кармана КПК, затем включает его.{Enter}
KeyWait, Enter, U
Sleep 1100
Sendinput,{F6}/me заходит в базу данных силовых структур.{Enter}
KeyWait, Enter, U
Sleep 1100
Sendinput,{F6}/do База данных открыта.{Enter}
KeyWait, Enter, U
Sleep 1100
Sendinput,{F6}/me вбил приметы сотрудника в базу данных.{Enter}
KeyWait, Enter, U
Sleep 1100
Sendinput,{F6}/do Система идентифицировала - %pname1% %pname2%.{Enter}
KeyWait, Enter, U
Sleep 1100
Sendinput,{F6}/me установил личность, затем быстро просмотрел личное дело сотрудника.{Enter}
Sleep 1100
KeyWait, Enter, U
Sendinput,{F6}/me просмотрев дело, передал пропуск в ИК "ЧЛ".{Enter}
KeyWait, Enter, U
Sleep 1100
Sendinput,{F6}/prisonpass %ID% 1{enter}
KeyWait, Enter, U
Return

:?:/fsetskin::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/do Пакет с гражданской спец.формой находится в правой руке.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me поднял пакет к себе, достал гражданский костюм, затем передал человеку напротив.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Человек переодет.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/fsetskin{Space}
KeyWait, Enter, U
Return

:?:/changeskin::
SendMessage, 0x50,, 0x4190419,, A ; русский
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/do Пакет с новой служебной формой сотрудника ФСБ в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me поднял пакет к себе, достал форму, затем передал человеку напротив.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Человек переодет.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/changeskin{Space}
KeyWait, Enter, U
Return

NumPad7::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}/r [%TEG%] Докладывает: %Name% | Патрулирование по области.{Enter}
Sleep 1050
SendInput, {F6}/r [%TEG%] Состояние в области: стабильное{!}{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Return

NumPad4::
SendMessage, 0x50,, 0x4190419,, A
log = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
FileDelete %log%
FileAppend %log%
SendInput, {F6}/patrul{enter}
sleep 1500
SendMessage, 0x50,, 0x4190419,, A
FileRead, info, %log%
RegExMatch(info," Диспетчер: В вашем районе найден подозреваемый: (.*)_(.*)", nick)
FileDelete %log%
FileAppend %log%
SendInput, {F6}/id %nick1%_%nick2%{enter}
sleep 1000
FileRead, info, %log%
RegExMatch(info," Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pinfo)
id=%pinfo3%
SendInput, {F6}Подозреваемый - %nick1% %nick2%. Его жетон - %id%{enter}
sleep 1400
SendInput, {F6}/do Время %A_Hour%:%A_Min%:%A_Sec%|%A_DD%:%A_MM%:%A_YYYY%{enter}
Sleep 1200
SendInput, {F6}/b Его жетон - %id%{enter}
return

NumPad9::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
SendInput, {F6}/b [Balasanyan]: Введи название поста{!}{Enter}
Sleep 1000
SendInput, {F6}{Spaсe} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc}
Sleep 2000
SendInput, {F6}/me достал рацию в руки.{Enter}
Sleep 1050
SendInput, {F6}/me зажал красную кнопку на рации.{Enter}
Sleep 1050
SendInput, {F6}/me произнёс что-то в рацию...{Enter}
Sleep 1050
SendInput, {F6}/r [%TEG%] Докладывает: %Name% | Дежурство на посту: %ID%.{Enter}
Sleep 1050
SendInput, {F6}/r [%TEG%] Состояние на данный момент: Стабильное{!}{Enter}
Sleep 1050
SendInput, {F6}/r [%TEG%] Конец связи{!}{Enter}
Sleep 1050
SendInput, {F6}/me отпустив палец с красной кнопки прикрепил рацию на пояс.{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Return

:?://frisk::
SendMessage, 0x50,, 0x4190419,, A
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/me показал ордер гражданину.{Enter}
Sleep 1050
SendInput, {F6}Вот, пожалуйста.{Enter}
Sleep 1050
SendInput, {F6}/me достал одноразовые резиновые перчатки.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Одноразовые резиновые перчатки в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me надел одноразовые резиновые перчатки.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}Повернитесь и поднимите руки вверх{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}Напоминаю, что в случае неподчинения, получите статью УКРФ 8.1{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me начал ощупать гражданина напротив.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ощупал торс гражданина напротив.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/frisk{Space}
KeyWait, Enter, U
Return

:?:/Funinvite::
SendMessage, 0x50,, 0x4190419,, A
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
SendInput, {F6}{Spaсe} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter} 
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/me достал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зашёл в базу данных МВД.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me выбрал нужную силовую структуру.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нашёл информацию сотрудника %pname1% %pname2%.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нажал на нужного сотрудника, затем нажал на кнопку 'Лишить погон сотрудника'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл нужную информацию, затем нажал окончательно на кнопку 'Лишить погон сотрудника'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Сотрудник %pname1% %pname2% был лишен погонов.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/b [Balasanyan]: Уволил сотрудника с МВД{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/funinvite %ID%{Enter}
KeyWait, Enter, U
Sleep 1500
SendInput, {F6}/time{Enter}
KeyWait, Enter, U
Sleep 3500
SendInput, {F8}{Enter}
KeyWait, Enter, U
Return

:?:/uninvite::
SendMessage, 0x50,, 0x4190419,, A
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
SendInput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter}
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/me достал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зашёл в базу данных ФСБ.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нашёл информацию сотрудника %pname1% %pname2%.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нажал на нужного сотрудника, затем нажал на кнопку 'Лишить погон сотрудника'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл нужную информацию, затем нажал окончательно на кнопку 'Лишить погон сотрудника'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Сотрудник %pname1% %pname2% был лишен погонов.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/b [Balasanyan]: Уволил сотрудника с фракции{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/uninvite %ID%{Space}
KeyWait, Enter, U
Return

:?:/vig::
SendMessage, 0x50,, 0x4190419,, A
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
SendInput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter} 
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/me достал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зашёл в базу данных ФСБ.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нашёл информацию сотрудника %pname1% %pname2%.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нажал на нужного сотрудника, затем нажал на кнопку 'Выдать выговор сотруднику'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл нужную информацию, затем нажал окончательно на кнопку 'Выдать выговор сотруднику'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Сотруднику %pname1% %pname2% был выдан выговор.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/vig %ID%{Space}
KeyWait, Enter, U
Return

:?:/unvig::
SendMessage, 0x50,, 0x4190419,, A
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
SendInput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter} 
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/me достал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зашёл в базу данных ФСБ.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нашёл информацию сотрудника %pname1% %pname2%.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нажал на нужного сотрудника, затем нажал на кнопку 'Снять выговор сотруднику'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл нужную информацию, затем нажал окончательно на кнопку 'Снять выговор сотруднику'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Сотруднику %pname1% %pname2% был снят выговор.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/unvig %ID%{Space}
KeyWait, Enter, U
Return

:?:/invite::
SendMessage, 0x50,, 0x4190419,, A
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
SendInput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter} 
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/me достал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зашёл в базу данных ФСБ.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нажал на кнопку 'Добавить нового сотрудника'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл нужную информацию о новом сотруднике.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me Имя Фамилия: %pname1% %pname2%. Дата: %A_dd%.%A_mm%.%A_yyyy%{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нажал окончательно на кнопку 'Добавить нового сотрудника'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me достал форму с рацией.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Форма с рацией находятся в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me передал форму с рацией гражданину напротив.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/b [Balasanyan]: Принял гражданина в фракцию{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/invite %ID%{Enter}
KeyWait, Enter, U
Sleep 1500
SendInput, {F6}/time{Enter}
KeyWait, Enter, U
Sleep 3333
SendInput, {F8}{Enter}
KeyWait, Enter, U
Return

:?:/giverank::
SendMessage, 0x50,, 0x4190419,, A
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
SendInput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter} 
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/me достал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зашёл в базу данных ФСБ.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нашёл нужную информацию Сотрудника %pname1% %pname2%.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me нажал на кнопку 'Повысить/Понизить погоны Сотрудника'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл причину повышения/понижение, затем нажал на кнопку 'Готово'.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me Имя Фамилия: %pname1% %pname2%. Дата: %A_dd%.%A_mm%.%A_yyyy%{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Сотрудник повышен/понижен в погонах.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/b [Balasanyan]: Успешно повысил/понизил сотрудника в погонах{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/b [Balasanyan]: Введите + если повысить. Введите - если понизить{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/giverank %ID%{Space}
KeyWait, Enter, U
Return

:?://ticket::
SendMessage, 0x50,, 0x4190419,, A
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
SendInput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter} 
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/me показал ордер гражданину.{Enter}
Sleep 1050
SendInput, {F6}Вот, пожалуйста, ознакомьтесь{!}{Enter}
Sleep 1050
SendInput, {F6}/me достал протокол.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do достал ручку.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}Нарушение Административного Правонарушения.{Enter}
KeyWait, Enter, U
Sleep 4000
SendInput, {F6}/me записал дату.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me записал Имя Фамилия: %pname1% %pname2%{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Постановление №0803. Дата: %A_dd%.%A_mm%.%A_yyyy%{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do От Сотрудника ФСБ %Rank%: %Name%.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Гражданину: %pname1% %pname2%.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Нарушение Статьи КоАП РФ.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me расписался в пункте 'Подпись', затем передал гражданину протокол.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}Вот. Подпиши здесь{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me передал ручку гражданину.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/b /me расписался.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}Всё. Не нарушайте больше{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}Всего доброго{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/ticket %ID%{Space}
KeyWait, Enter, U
Return

:?:/первыйэтап:: 
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 300 
Sendinput, {F6}Здравствуйте,уважаемые младшие лейтенанты Академий Федеральной службы безопасности.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Сегодня вам будут проводить первый этап стажировки.Проводить его буду я - %Name%.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Краткие правила поведения во время первого этапа.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Во время того,как ваш наставник рассказывает вам что-либо,запрещено его перебивать.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Запрещено уходить от наставника во время первого этапа,в протином случае он будет провален.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Что ж.Приступим к прохождению первого этапа.Начнём с управления ФСБ.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Аудитория - в этой комнате проходят собрания состава ФСБ,лекции для состава и общая конференции для обсуждения различных тем.{ENTER} 
Sleep, 3300 
Sendinput, {F6}Проидём в оружеиную.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Оружейная - в этой комнате сотрудники могут:переодеться в рабочую форму и получить табельное оружие.{ENTER} 
sleep 1500
Sendinput, {F6}Обязательно брать бронежилет{!}Проидём в кабинет дежурного майора,подполковника{ENTER} 
KeyWait, RButton, D 
sleep 1100 
Sendinput, {F6}Кабинет дежурного  - этот кабинет используется дежурным,проводятся экзамены мл. лейтенантов.{ENTER} 
Sleep, 1100
Sendinput, {F6}Проидём в комнату отдыха.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Кабинет для отдыха- место где сотрудники могу провести обеденный перерыв.{ENTER} 
Sleep, 1500 
Sendinput, {F6}Проидём на второй этаж.{ENTER} 
Sleep, 1500 
Sendinput, {F6}Хочу напомнить,что сотрудникам младшего состава запрещено находится на втором этаже без вызова руководства или сопровождающего.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Кабинет Старшего состава ФСБ - этот кабинет предназначен для работы следователей УСБ.{ENTER} 
Sleep, 1500 
Sendinput, {F6}Проидём в кабинет заместителей.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Кабинет Полковников ФСБ-этот кабинет предназначен для работы всех полковников ФСБ.Переидём к кабинету Генерала-Полковника.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Кабинет Директора ФСБ - кабинет,предназначенный для работы директора,а так же проведения закрытых конференций старшего состава.{ENTER} 
Sleep, 1500 
Sendinput, {F6}На этом с офисом мы закончили.{ENTER} 
KeyWait, RButton, D 
Sleep, 1500 
Sendinput, {F6}Переидём в аудиторию.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Любой агент федеральной службы безопасности, при поступлении на службу должен знать о том, {ENTER} 
Sleep, 1500 
Sendinput, {F6}что между сотрудниками присутствует строгая субординация и официально-деловой стиль речи.{ENTER} 
Sleep, 1500 
Sendinput, {F6}Агент должен обращаться к гражданам и коллегам на Вы.{ENTER} 
Sleep 1500
Sendinput, {F6}Любой агент федеральной службы, должен категорически забыть про какие либо сленговые выражения,{ENTER} 
Sleep, 1500 
Sendinput, {F6}уметь грамотно и максимально кратко выражать свою мысль.{ENTER} 
Sleep, 1500 
Sendinput, {F6}В ФСБ нет сэров, мистеров и тому подобных.{ENTER} 
Sleep, 1500 
Sendinput, {F6}По этому обращение идет по строго установленной форме, а именно: {ENTER} 
Sleep, 1500 
Sendinput, {F6}"Генерал-Полковник Закон, у меня вопрос, не могли бы подойти в допросную?" {ENTER} 
Sleep, 3500 
Sendinput, {F6}Стоит обратить внимание, что запрещено сокращать должности.{ENTER} 
Sleep, 4000 
Sendinput, {F6}Старайтесь максимально четко формулировать фразы и просьбы.{ENTER} 
Sleep, 3000 
Sendinput, {F6}Теперь кратко поговорим об оружий.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}/me открает кобуру и достаёт Glock-17,приподнимает его выше пояса{ENTER} 
Sleep, 4400 
Sendinput, {F6}Это глок-17.В частности используется управлением "А" {ENTER} 
Sleep, 4000 
Sendinput, {F6}Хорошо использовать на ближней и средней дистанций,7 патронов в обоиме,средняя скорострельность.{ENTER} 
Sleep, 3000 
Sendinput, {F6}/me убирает пистолет в кобуру,закрывает её и смотрит в аудиторию{ENTER} 
KeyWait, RButton, D 
Sleep, 3000 
Sendinput, {F6}/do На стоике лежат дробовик,автомат,ПП и винтовка.{ENTER} 
Sleep, 1100 
Sendinput, {F6}/me хватает дробовик со стола,показывает его стажёрам{ENTER} 
Sleep, 1100 
KeyWait, RButton, D 
Sendinput, {F6}Дробовик - лучший друг в закрытом помещений.Используется на ближней дистанций.{ENTER} 
Sleep, 4000 
Sendinput, {F6}/me положил дробовик на стоику,поднимает автомат{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}ОЦ-14 Гроза.Автомат на 50 патронов.Используется на любой дистанций.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}/me ставит автомат на стоику и хватает АК-74У{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Автомат Калашникова 74 года производства,укороченный.Используется на ближней и средней дистанций.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}/me ставит АК-74У на стоику,берёт СВД{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Снайперская винтовка Драгунова - используется исключительно на дальней дистанций.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}/me ставит СВД на стоику,смотрит на стажёров и говорит{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}На этом с оружием мы закончили,переидём к транспортым средствам.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Toyota Land Cruiser 200 используется для выезда на собеседования/призывы{ENTER} 
Sleep, 4000
Sendinput, {F6}Разрешено использовать с младшего лейтенанта{ENTER} 
Sleep, 4000 
Sendinput, {F6}Также используется для передвежения по области и выезды на спецопераций.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Mercedes-Benz G65 2013 - разрешён с Капитана для выезда на спец.операций. {ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Cadilac Escalade - используется с должности младшего лейтенанта для выезда в патруль,а так же спецопераций.{ENTER} 
Sleep, 5000 
Sendinput, {F6}Запрещён экипаж из двух младших лейтенантов и передвижение в одиночку.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Maverick Buckingham - разрешено с должности Майора ФСБ.{ENTER} 
Sleep, 1500 
Sendinput, {F6}Если вертолёт возьмёт Капитан,он будет наказан предупреждением,если Ст. Лейтенант,выговором.{ENTER} 
Sleep, 1500
Sendinput, {F6}Если Лейтенант,он будет понижен,если Мл. Лейтенант - он будет уволен.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Переидём в аудиторию.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Во время проведения операции по внедрению в гос. организации, строжайше запрещается{ENTER} 
Sleep, 4000 
Sendinput, {F6}Ни при каких обстоятельствах брать служебный транспорт ФСБ,использовать рацию ФСБ{ENTER} 
Sleep, 1500 
Sendinput, {F6}Показывать служебное удостоверение и выдавать то,что вы сотрудник ФСБ.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Краткую инструкцию по внедрениям вы можете прочитать на нашем сайте ФСБ.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Теперь поговорим о полномочих и запретах сотрудников ФСБ.{ENTER} 
Sleep, 1500
Sendinput, {F6}Все сотрудники имеют право на:доступ к любой информации,а так же{ENTER} 
Sleep, 5000 
Sendinput, {F6}Доступ к любой территории, в любое время и им не может быть отказано.Есть исключения. {ENTER} 
Sleep, 2000
Sendinput, {F6}До агента,включительно,запрещается находиться на территории армий по собственной инициативе.{ENTER} 
Sleep, 1500 
Sendinput, {F6}Всем сотрудникам запрещается покидать рабочее время без разрешения.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}И последнее на сегодня,поговорим об двух отделах,управление «А» и Группа спец. назначения «Вымпел».{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}«Альфа» - спецназ ФСБ,личный состав подбирается из офицеров ФСБ.{ENTER} 
Sleep, 1500 
Sendinput, {F6}Эти сотрудники наиболее обученны тактикам ведения боя,огневой подготовке и рукопашному бою. {ENTER} 
Sleep, 1500 
Sendinput, {F6}Основные задачи:Силовая поддержка отделов СКН и УСБ напоследнем этапе разработок, а именно задержанию\ликвидации.{ENTER} 
Sleep, 1500 
Sendinput, {F6}Ликвидация\задержание ООП,ликвидация террористов и многое другое {ENTER} 
Sleep, 1500 
Sendinput, {F6}Более подробно вы сможете ознакомится с этим отделом на нашем сайте.{ENTER} 
KeyWait, RButton, D 
Sleep, 1100 
Sendinput, {F6}Федеральная служба РФ  управление «ЦСН-Альфа».{ENTER} 
Sleep, 1500 
Sendinput, {F6}Задачей управления «А» являлется  захватами и штурм зданий.{ENTER} 
Sleep, 1500 
Sendinput, {F6}Основные задачи:Борьба с ООП,Выполнение поставленных задач УСБ и многое другое. {ENTER} 
KeyWait, RButton, D 
Sleep, 1500 
Sendinput, {F6}Более подробно вы сможете ознакомится с этим отделом на нашем сайте.{ENTER} 
KeyWait, RButton, D 
Sleep, 1500 
Sendinput, {F6}После того,как Вы проидёте все 3 этапа и вам выдадут удостоверение лейтенанта{ENTER} 
Sleep, 1500 
Sendinput, {F6}Вы будете обязаны сообщить начальнику отдела,в который вы хотите вступить,об этом.{ENTER} 
Sleep, 1500 
Sendinput, {F6}После чего подать заявление и стать стажёром отдела.{ENTER} 
Sleep, 1500 
Sendinput, {F6}После повышения на Лейтенанта,вы станете полноценным сотрудником управления «А» и Группы спец. назначения «Вымпел».{ENTER} 
Sleep, 1500
Sendinput, {F6}На этом первый этап для вас закончен. Мои поздравления.{ENTER} 
KeyWait, RButton, D
return

:?:/второйэтап::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 300
Sendinput, {F6}Здравствуйте,уважаемые стажёры академий Федеральной службы безопасности.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Сегодня вам будут проводить второй этап стажировки.Проводить его буду я - %Name%.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Для начала я хотел бы вам рассказать об основаниях проверки документов и обыска.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Для проверки документов есть несколько оснований.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Первое из них - это федеральный розыск.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}/b Эта инструкция актуальна,если вы нашли преступника по /om или /pt.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Первым делом,если вы заметили человека,подходящего под приметы фоторобота,вы должны это проверить.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}/me достал КПК,после зашёл в базу данных преступников и начал просматривать фотороботы{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}/do Человек неподалёке подходит по приметам ориентировки.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если вы увидели человека,который подходит по приметам фоторобота,то вы должы представиться.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После чего сказать,что человек подходит по приметам фоторобота и потребовать документы.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}В случае если человек предоставил вам документы и вы сверили данные,вы можете его задержать.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если же человек отказывается показывать документы,то вы достаёте КПК и сверяете его по фотороботу.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После чего задерживаете его и объявляете причину задержания:"Вы подходите по приметам ориентировки".{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}А так же выдаёте дополнительный розыск за нарушение УК 6.1{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Второе основание - неадекватное поведение,а именно:использует нецензурную брать,прыгает по машинам и т.д.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Вы представляетесь и говорите,чтобы человек перестал вести себя неадекватно.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После чего требуете предоставить вам документы для проверки.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если человек предоставил документы и понял свою ошибку,вы можете его отпустить.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если предоставил документы,но не перестал вести себя подобающим образом,Вы имеете право задержать его за нарушение УК 6.1{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если он отказался предоставить документы,Вы его задерживаете за 6.1{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Третье основание для проверки  -  если они обращаются к вам либо хотят пройти на территорию\помещение.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Поговорим о случаях,когда на лице человека маска и он в общественном месте.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Первым делом вам нужно представиться,после чего показать документы.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После этого вы имеете право попросить человека снять маску и показать свой документы.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если человек снимает маску и показывает документы,то вы ему выписываете штраф за нарушение 4.6 КоАП{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если он снимает маску и отказывается показывать документы,вы можете задержать его за нарушение 6.1 УК{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если он отказывается снимать маску,то вы имеете право задержать его.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Теперь поговорим о том,как осуществлять обыск граждан.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Вы имеете право обыскать гражданина или его т/с,если он находится в фед.розыске и вы его задержали.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Сотрудникам ФСБ разрешено проводить обыск вне стен полиций.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Теперь расскажу вам как проводить погоню и как правильно задерживать преступника.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}/b Это правило относится к /patrul.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После того,как вы выехали в патруль за преступником,вы должны найти в базе данных найти его фоторобот{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}/b Прописать /patrul.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После чего вы начинаете погоню за преступником.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если человек без транспортного средства,то вы должны представиться,после чего задержать его.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После того,как вы представились и задержали его,вы должны объявить причину задержания,а именно{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}"Гражданин,вы подходите по приметам ориентировки."{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После этого вы его везёте в КПЗ{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если человек на транспорте,то вы просите в мегафон остановиться его,после чего действуете,как в случае человека без транспорта.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если он отказывается останавливаться и продолжает движение,вы начинаете погоню.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}С этого момента в силу вступают особые правила погони.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После того,как вы потребовали остановится и предупредили об использований оружия.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}И человек не останавливается в течение 15 секунд,вы имеете право открыть огонь лишь по колёсам{!}{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Запрещено стрелять в автомобиль или водителя.Исключение:В вас открыли ответный огонь.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После того,как вы вывели из строя все 4 колеса,Вы имеете право на таран автомобиля,с целью его остановки.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Строго запрещено стрелять в людных местах,где вы можете задеть других людей.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Такие места как:автовокзалы,здания гос.организаций,большое скопление людей.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После этого вы задерживаете преступника.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}На этом правила проверки документов и правила проведения патруля мы закончили.Вопросы?{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Теперь поговорим о СГУ и сигналах светофора.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Водители с включенными проблесковыми маячком имеют право отступать от правил ПДД.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}А именно:проезжать на красный свет светофора,распологать т/с на проезжей части,превышение скорости.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Водителю с включенными проблесковыми маячком нужно был внимательным.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}На перекрёстке перед проездом на красный свет,вы должны удостовериться,что вас пропускают.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Этим же преимуществом пользуются водители т/с,сопровождаемых транспортным средсвом с включенными маячками.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Более подробно об сигналах светофора и СГУ вы должны прочитать на сайте ФСБ.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Теперь поговорим о действиях во время ограбления банка.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После того,как поступил вызов об ограблений банка,вы обязаны:{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Иметь целый бронежилет,исправное оружие с патронами.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}/b 100/100 хп,100/100 бронежилета и минимум дигл с 40 патронами.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После этого вы выезжаете на территорию банка и окружаете его.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После вы ожидаете приказа руководства ФСБ.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если руководства нет на месте происшествия,вы должны связаться с ним по раций и действовать их инструкций.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Переидём к сигналам Х,Р и Z.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Сигнал Х подаётся в случае,если если разведана информация, по которой может произойти что-то опасное{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Например терракт или захват заложников.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После объявления сигнала,вы обязаны:{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Иметь целый бронежилет и оружие,сократить район патруля и находится рядом с офисом.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После руководство даст дальнеишие инструкций.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Сигнал Р.Данный сигнал подается в случае бунта/митинга/революции{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Иметь полное здоровье и полностью новый бронежилет,исключение:люди,которых внедряет руководство в толпу.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Дальше руководство ФСБ будет давать инструкций.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Сигнал Z,Данный сигнал подается в случае захвата моста/заложника{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После этого сигнала вы обязаны прибыть к офису ФСБ.Пополнить боезапас и взять новый бронежилет.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После чего выехать на служебной машине на место терракта по приказу руководства.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}С сигналами закончили.Теперь поговорим о тюрьме "Черный лебедь" и правилах поведения там.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После получения пропуска в тюрьмы "Чёрный лебедь",вам нужно в течение 10 минут прибыть туда.В противном случае пропуск аннулируется.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}В момент,когда вы подъедете к воротам ЧЛ,вы обязаны сообщить в рацию об этом.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}/b /r Прибыл к воротам "ЧЛ".{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После вы заезжаете внутрь и переодеваетесь в башне.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После всех этих действий вам нужно:взять и зарядить оружие,посмотреть информацию о надзирателях тюрьмы.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Обязанности надзирателей "ЧЛ":{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Быть вежливым,соблюдать субординацию,проверить документы у посетителей около ворот,выяснить цель прибытия.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}А так же предоставить адвокату помещение для свиданий.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если вы заметили нарушителя пропускного режима,вы обязаны:{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}С 08:00 до 22:00 предупредить нарушителя и попросить остановится,после сделать предупредительный в воздух{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Если нарушитель отказывается останавливаться и вы сделали предупредительный,вы имеете право открыть огонь на поражение.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}С 22:00 до 08:00 вы делаете предупредительный,после открываете огонь на поражение{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Теперь обсудим вопрос посещения адвокатов тюрьмы.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Адвокату на территорию тюрьмы попадать не нужно.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Он должен оставить свой автомобиль в 10 метрах от ворот.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Подоити к воротам и представиться надзирателю,после назвать цель прибытия.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}После чего он называет имя и фамилию заключенного и вы допускаете его в комнату для посещений.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}На этом с тюрьмой "Черный лебедь" мы закончили.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Поговорим о последнем.Езда колонной или в шахматном порядке.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Во время езды в группе строго запрещено:обгонять впереди идущий транспорт,таранить транспорт своих коллег.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}Ваша задача:ехать за впереди едущим и обеспечивать безопасность движения.{ENTER}
KeyWait, RButton, D
Sleep, 1100
Sendinput, {F6}От слов к практике. Второй этап окончен.{ENTER}
return

:?:/экзаменПолномочия::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 1050
SendInput, {F6}Полномочия Агентов ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Запрещается находиться на территории армий по собственной инициативе.{Enter}
Sleep 1050
SendInput, {F6}Запрещается находиться на территории армии без уполномоченного лица, проводящего проверку.{Enter}
Sleep 1050
SendInput, {F6}Запрещается находиться на территории армии без приказа от начальника отдела/зам.нач.{Enter}
Sleep 1050
SendInput, {F6}Запрещается находиться на территории армий без пропуска/допуска от уполмоченных лиц армии.{Enter}
Sleep 1050
SendInput, {F6}Также, агенты ФСБ, в том числе и младшие лейтенанты имеют право:{Enter}
Sleep 1050
SendInput, {F6}Доступ к любой информации.{Enter}
Sleep 1050
SendInput, {F6}Доступ к любой территории, в любое время, кроме Военной Части{!}{Enter}
Sleep 1050
SendInput, {F6}К Военной Части имеют доступ только те сотрудники, которые состоят в 'РОСН'.{Enter}
Return


:?:/экзаменАвтопарк::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}Правила автопарка ФСБ:{Enter}
Sleep 1050
SendInput, {F6}Toyota Land Cruiser 200 - разрешается с погонов 'Младшего Лейтенанта' для патрулей.{Enter}
Sleep 1050
SendInput, {F6}Cadillac Escalade - разрешается с погонов 'Лейтенанта' для патрулей.{Enter}
Sleep 1050
SendInput, {F6}MB G65 AMG (Гелендваген) - разрешается с погонов 'Капитана'.{Enter}
Sleep 1050
SendInput, {F6}Maverick Buckingham - разрешается с погонов 'Подполковника'.{Enter}
Return


:?:/экзаменВнедрение::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}Правила внедрения:{Enter}
Sleep 1050
SendInput, {F6}Ни при каких обстоятельствах не брать служебный транспорт ФСБ (кроме гелендвагена).{Enter}
Sleep 1050
SendInput, {F6}Ничего не сообщать в рацию 'ФСБ', самая главная ошибка при внедрении{!}{Enter}
Sleep 1050
SendInput, {F6}Ни в коем случае не выдавать себя до кона внедрения. Даже если пытаются арестовать.{Enter}
Return

:?:/сигналХ::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}Сигнал Х {!}{Enter}
Sleep 1050
SendInput, {F6}Данный сигнал подается, если разведена информация, по которой..{Enter}
Sleep 1050
SendInput, {F6}...может произойти что-то опасное, например захват заложника или моста.{Enter}
Sleep 1050
SendInput, {F6}Как только подается такой сигнал, каждый, именно каждый сотрудник должен..{Enter}
Sleep 1050
SendInput, {F6}...выполнить следующие действия:{Enter}
Sleep 1050
SendInput, {F6}/s Сотрудники Федеральной Службы Безопасности:{Enter}
Sleep 1050
SendInput, {F6}1. Иметь бронежилет в хорошем состоянии, также самочувствие, чтобы хорошее было.{Enter}
Sleep 1050
SendInput, {F6}2. Иметь полный боезапас.{Enter}
Sleep 1050
SendInput, {F6}3. Сократить район патруля, и стараться быть ближе к офису.{Enter}
Sleep 1050
SendInput, {F6}4. Ожидать приказы от старших по званию.{Enter}
Sleep 1050
SendInput, {F6}/s Сотрудники Полиции Южного/Арзамаса:{Enter}
Sleep 1050
SendInput, {F6}1. Сократить район патруля.{Enter}
Sleep 1050
SendInput, {F6}2. Ожидать приказы от старших по званию, в том числе и от сотрудников ФСБ {!}{Enter}
Sleep 1050
SendInput, {F6}После, сотрудники распределяются на охрану ключевых фигур:{Enter}
Sleep 1050
SendInput, {F6}Президент, Вице-Президент, Министры, Генералы и Полковники.{Enter}
Sleep 1050
SendInput, {F6}О ситуации докладывают каждые 2-4 минуты{!}{Enter}
Sleep 1050
SendInput, {F6}/s Сотрудники Военно-Морской Флот/Армия Мотострелковые Войска/ГИБДД:{Enter}
Sleep 1050
SendInput, {F6}1. Ожидать приказы от старших по званию, в том числе и от сотрудников ФСБ {!}{Enter}
Sleep 1050
SendInput, {F6}2. Быть готовым к десантированию.{Enter}
Sleep 1050
SendInput, {F6}3. После, МО/ГИБДД должны быть готовы к выезду по первому призыву о помощи{!}{Enter}
Sleep 1050
SendInput, {F6}/s Администрация Президента/Батырево:{Enter}
Sleep 1050
SendInput, {F6}1. Собраться в одно и тоже место.{Enter}
Sleep 1050
SendInput, {F6}2. Созвать всю свою охрану.{Enter}
Sleep 1050
SendInput, {F6}3. Ожидать докладов от Государственных Структур.{Enter}
Return

:?:/лек1::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
SendInput, {F6}Лекция на тему "Правила поведения на тренировке".{Enter}
Sleep 1050
SendInput, {F6}С самого начала я хочу дать определение слову "тренировка":{Enter}
Sleep 1050
SendInput, {F6}Тренировка - это осмысленная физическая деятельность, направленная на развитие силы..{Enter}
Sleep 1050
SendInput, {F6}..выносливости, ловкости, техничности, скорости и других физических и психологических навыков.{Enter}
Sleep 1050
SendInput, {F6}Правила поведение на тренировке:{Enter}
Sleep 1050
SendInput, {F6}1. Слушаться старших по званию.{Enter}
Sleep 1050
SendInput, {F6}2. Доставать оружие только по приказу.{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep, 1050
SendInput, {F8}
Sleep 1050
SendInput, {F6}3. Соблюдать технику безопасности.{Enter}
Sleep 1050
SendInput, {F6}4. Покидать строй только по приказу.{Enter}
Sleep 1050
SendInput, {F6}5. В строю молчать, слушать что говорят ваши коллеги.{Enter}
Sleep 1050
SendInput, {F6}6. Слушаться только организатора тренировки.{Enter}
Sleep 1050
SendInput, {F6}7. Тренировку можно проводить со звания Майор, или с разрешения Генерала-Полковника/Полковника{!}{Enter}
Sleep 1050
SendInput, {F6}8. За сон в строю вы будете наказаны.{Enter}
Sleep 1050
SendInput, {F6}9. Если вы устали, вы можете подойти к организатору тренировки и попросить отдых.{Enter}
Sleep 1050
SendInput, {F6}Лекция на тему "Правила поведения на тренировке" окончена{!}{Enter}
Sleep 1050
SendInput, {F6}Спасибо за внимание.{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F8}
Return

:?:/лек2::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
SendInput, {F6}/s Дорогие, Сотрудники, я хочу прочитать вам лекцию на тему "Субординация" {!}{Enter}
Sleep 1050
SendInput, {F6}/s В силовых структурах нет слов: "можно", "да", "нет", "привет".{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F8}
Sleep 1050
SendInput, {F6}/s Обращаться нужно именно так:{Enter}
Sleep 1050
SendInput, {F6}/s "Разрешите", "Так точно", "Никак нет", "Здравия желаю".{Enter}
Sleep 1050
SendInput, {F6}/s Ко всем обращаться строго по званию. К примеру:{Enter}
Sleep 1050
SendInput, {F6}/s "Товарищ Полковник", "Товарищ Генерал-полковник", "Товарищ Майор" и так далее.{Enter}
Sleep 1050
SendInput, {F6}/s Обращаться ко всем сослуживцам без исключения только на "Вы" {!}{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F8}
Sleep 1050
SendInput, {F6}/s Запрещено перечить или огрызаться со старшими по званию.{Enter}
Sleep 1050
SendInput, {F6}/s Не соблюдение субординации, это прямое нарушение.{Enter}
Sleep 1050
SendInput, {F6}/s И карается выговором, а в худшем случае увольнением.{Enter}
Sleep 1050
SendInput, {F6}Лекция на тему "Субординация" подошла к концу{!}{Enter}
Sleep 1050
SendInput, {F6}Спасибо за внимание.{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F8}
Return

:?:/лек3::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
SendInput, {F6}И так, лекция на тему "Рация, и правила пользования рацией. Основные информации".{Enter}
Sleep 1050
SendInput, {F6}/s Рация — это источник связи с коллегами ФСБ, для передачи важной информации{!}{Enter}
Sleep 1050
SendInput, {F6}/s В рации звучит такая информация, как доклады с постов, патрулирование области и тому подобное.{Enter}
Sleep 1050
SendInput, {F6}/s В рации запрещены всякие оскорбления, мат, угрозы.{Enter}
Sleep 1050
SendInput, {F6}/s В рацию запрещено сообщать бессмысленную информацию.{Enter}
Sleep 1050
SendInput, {F6}/s За нарушение данных правил вы будете наказаны{!}{Enter}
Sleep 1050
SendInput, {F6}Лекция на тему "Рация" окончена. Благодарю за внимание{!}{Enter}
Sleep 1050
SendInput, {F6}/time {Enter}
Sleep 1050
SendInput, {F8}
Return

:?:/лек4::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
SendInput, {F6}/b Привет, ребята, краткая лекция насчет МГ. Это большая проблема среди новичков{!}{Enter}
Sleep 1050
SendInput, {F6}/b MG (MetaGaming) - использование ООС информации в IС чат.{Enter}
Sleep 1050
SendInput, {F6}/b OOC - информация из реального мира, из вашей реальной жизни.{Enter}
Sleep 1050
SendInput, {F6}/b IС - информация касающаяся только вашего игрового персонажа, т.е событий произошедших....{Enter}
Sleep 1050
SendInput, {F6}/b ...по ходу РП ситуаций. Т.е когда вы путаете чаты, написав в обычный, то что вас зовут кушать..{Enter}
Sleep 1050
SendInput, {F6}/b ... и вы отойдете на пару минут афк - это МГ. Такую информацию нужно писать в спец. чат.{Enter}
Sleep 1050
SendInput, {F6}/b /rb - гос. нонРП чат. /b - обычный нонРП чат. Правильный пример: /rb парни, я афк, покушать.{Enter}
Sleep 1050
SendInput, {F6}/b ... /r Товарищ, Генерал-полковник, Я в комнату отдыха. Неправильно: /r парни, я афк, покушать.{Enter}
Sleep 1050
SendInput, {F6}/b ... /rb Разрешите отлучиться в комнату отдыха?{Enter}
Sleep 1050
SendInput, {F6}/b Спасибо за внимание. Не нарушайте РП режим{!}{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F8}
Return

:?:/лек5::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
SendInput, {F6}Правила нахождения в тюрьме "Чёрный Лебедь" {!}{Enter}
Sleep 1050
SendInput, {F6}Запрещено брать пропуска у сотрудников, не состоящих в ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Запрещено покидать "Чёрный Лебедь", без разрешения Генерал-полковника/Полковников ФСБ.{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F8}
Sleep 1050
SendInput, {F6}Запрещено издеваться над заключёнными.{Enter}
Sleep 1050
SendInput, {F6}Находясь на территории "Чёрного Лебедя", запрещено нарушать Устав ФСБ, УК РФ, Федеральное постановление.{Enter}
Sleep 1050
SendInput, {F6}Запрещено не выходить на связь.{Enter}
Sleep 1050
SendInput, {F6}На этом лекция на тему "Правила нахождения в Тюрьме Чёрный Лебедь" окончено{!}{Enter}
Sleep 1050
SendInput, {F6}Благодарю за внимание.{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F8}
Return


:?:/сигналП::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}Сигнал P {!}{Enter}
Sleep 1050
SendInput, {F6}Данный сигнал подается в случае бунта/митинга/революции{!}{Enter}
Sleep 1050
SendInput, {F6}/s Сотрудники Федеральной Службы Безопаности:{Enter}
Sleep 1050
SendInput, {F6}1. Внедрение в толпу, уточнение лидеров митинга/революции.{Enter}
Sleep 1050
SendInput, {F6}2. Иметь хорошее самочувствие.{Enter}
Sleep 1050
SendInput, {F6}3. Все данные докладывать Полковнику/Генералу-полковнику.{Enter}
Sleep 1050
SendInput, {F6}/s Сотрудники Полици Южного/Арзамаса и ГИБДД:{Enter}
Sleep 1050
SendInput, {F6}1. Охраназдания президента и самого президента (В случае революции).{Enter}
Sleep 1050
SendInput, {F6}2. Подавление митинга при помощи водометов и других средств (В случае митинга).{Enter}
Sleep 1050
SendInput, {F6}3. Докладывать важную информацию сотрудникам ФСБ.{Enter}
Sleep 1050
SendInput, {F6}/s Военнослужащие Армии Военно-Морского Флота/Мотострелковых Войск:{Enter}
Sleep 1050
SendInput, {F6}1. Подавление восстания (В случае революции).{Enter}
Sleep 1050
SendInput, {F6}2. Быть готовым к помощи силовым структурам (В случае митинга).{Enter}
Sleep 1050
SendInput, {F6}3. Докладывать важную информацию сотрудникам ФСБ.{Enter}
Sleep 1050
SendInput, {F6}/s Сотрудники Администрации Президента/Батырево:{Enter}
Sleep 1050
SendInput, {F6}1. Собраться в скрытном месте (В случае революции).{Enter}
Sleep 1050
SendInput, {F6}2. Собраться в здании Администрации Президента (В случае митинга).{Enter}
Sleep 1050
SendInput, {F6}3. Созвать всю свою охрану.{Enter}
Sleep 1050
SendInput, {F6}4. Забаррикадировать проходы.{Enter}
Sleep 1050
SendInput, {F6}5. Ожидать докладов от Государственных Структур.{Enter}
Return

:?:/сигналЗ::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}Сигнал Z {!}{Enter}
Sleep 1050
SendInput, {F6}Данный сигнал подается в случае захвата моста/заложника.{Enter}
Sleep 1050
SendInput, {F6}/s Сотрудники Федеральной Службы Безопасности:{Enter}
Sleep 1050
SendInput, {F6}1. Сбор у офиса ФСБ.{Enter}
Sleep 1050
SendInput, {F6}2. Пополнение боеприпасов, обновление бронежилета.{Enter}
Sleep 1050
SendInput, {F6}3. Выезд на служебной машине в место терракта.{Enter}
Sleep 1050
SendInput, {F6}4. Попытка договора.{Enter}
Sleep 1050
SendInput, {F6}5. Растягивание времени.{Enter}
Sleep 1050
SendInput, {F6}/s Полиции Южного/Арзамаса и ГИБДД:{Enter}
Sleep 1050
SendInput, {F6}1. Выезд на служебной машине в место терракта.{Enter}
Sleep 1050
SendInput, {F6}2. Прикрытие ФСБ, перекрытие дороги.{Enter}
Sleep 1050
SendInput, {F6}/s Армии Военно-Морского Флота/Мотострелковых Войск:{Enter}
Sleep 1050
SendInput, {F6}1. Вылет на вертолете в место терракта.{Enter}
Sleep 1050
SendInput, {F6}2. Десант по команде ФСБ.{Enter}
Sleep 1050
SendInput, {F6}3. Атака тех целей, которые держат заложника.{Enter}
Return

:?://mask::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}/me достал чёрную балаклаву.{Enter}
Sleep 1050
SendInput, {F6}/do Чёрная балаклава в руках.{Enter}
Sleep 1050
SendInput, {F6}/me надел чёрную балаклаву на лицо.{Enter}
Sleep 1050
SendInput, {F6}/do Балаклава надета. Личность не распознать{!}{Enter}
Sleep 1050
SendInput, {F6}/mask{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F6}/me скрыл погоны.{Enter}
Sleep 1050
SendInput, {F6}/do Погоны скрыты. Личность не распознать{!}{Enter}
Sleep 1050
SendInput, {F6}/me достал чёрные перчатки.{Enter}
Sleep 1050
SendInput, {F6}/do Чёрные перчатки в руках.{Enter}
Sleep 1050
SendInput, {F6}/me надел чёрные перчатки.{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Return

:?://showpass::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}/do Паспорт находится в кармане.{Enter}
Sleep 1050
SendInput, {F6}/me достал из левого кармана паспорт.{Enter}
Sleep 1050
SendInput, {F6}/do Паспорт находится в руках.{Enter}
Sleep 1050
SendInput, {F6}/me открыв главную страницу паспорта, передал в руки гражданину напротив паспорт.{Enter}
Sleep 1050
SendInput, {F6}/do Паспорт находится у Гражданина{!}{Enter}
Sleep 1050
SendInput, {F6}Вот, пожалуйста.{Enter}
Sleep 1050
SendInput, {F6}/showpass{Space}
Return

:?://showymk::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}/do Медицинская карта находится в кармане.{Enter}
Sleep 1050
SendInput, {F6}/me достал медицинскую карту из левого кармана.{Enter}
Sleep 1050
SendInput, {F6}/do Медицинская карта находится в руках.{Enter}
Sleep 1050
SendInput, {F6}/me передал медицинскую карту гражданину напротив.{Enter}
Sleep 1050
SendInput, {F6}/do Медицинская карта находится в руках у Гражданина{!}{Enter}
Sleep 1050
SendInput, {F6}Вот, пожалуйста, держите{!}{Enter}
Sleep 1050
SendInput, {F6}/showymk{Space}
Return

:?://showlic::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {6}/do Пакет лицензий находится в кармане.{Enter}
Sleep 1050
SendInput, {F6}/me достал пакет лицензий из правого кармана.{Enter}
Sleep 1050
SendInput, {F6}/do Пакет лицензий находятся в руках.{Enter}
Sleep 1050
SendInput, {F6}/me открыв пакет, достал лицензии.{Enter}
Sleep 1050
SendInput, {F6}/do Лицензии находятся в руках.{Enter}
Sleep 1050
SendInput, {F6}/me передал лицензии гражданину напротив.{Enter}
Sleep 1050
SendInput, {F6}Вот, держите{!}{Enter}
Sleep 1050
SendInput, {F6}/do Лицензии находятся в руках у Гражданина{!}{Enter}
Sleep 1050
SendInput, {F6}/lic{Space}
Return

:?://showmc::
SendMessage, 0x50,, 0x4190419,, A ; русский
Sleep 333
SendInput, {F6}/do Военный билет находится в правом кармане.{Enter}
Sleep 1050
SendInput, {F6}/me достал военный билет из правого кармана.{Enter}
Sleep 1050
SendInput, {F6}/do Военный билет находится в руках.{Enter}
Sleep 1050
SendInput, {F6}Вот, Военный билет, держите{!}{Enter}
Sleep 1050
SendInput, {F6}/me передал военный билет в руки гражданину напротив.{Enter}
Sleep 1050
SendInput, {F6}/do Военный билет находится в руках у Гражданина{!}{Enter}
Sleep 1050
SendInput, {F6}/showmc{Space}
Return

:?://smoke::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
Sendinput, {F6}/do Армянские сигареты "Ararat Exclusive Slims" и зажигалка в кармане.{ENTER}
sleep 1350
SendInput, {F6}/do На пачке сигарет написано: ...{Enter}
Sleep 1050
SendInput, {F6}/do ... "Курение наносит вред здоровью{!}".{Enter}
Sleep 1050
Sendinput, {F6}/me достал Армянские сигареты "Ararat Exclusive Slims" и зажигалку из кармана.{ENTER}
sleep 1350
Sendinput, {F6}/me закурил сигарету.{ENTER}
sleep 1350
Sendinput, {F6}/smoke{ENTER}
sleep 1350
Sendinput, {F6}/me убрал Армянские сигареты "Ararat Exclusive Slims" и зажигалку в карман.{ENTER}
Return

:?:/prnumber::
SendMessage, 0x50,, 0x4190419,, A
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
SendInput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter}
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/me достал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК в руках.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/me зашёл в базу данных гос.авто инспекцией.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do На странице: поиск автомобилей по государственному номеру.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/todo Пробить машину*вводя данные машины, а также гос.номера.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Даны данные: об транспортном средстве, также человека регистрирующий автомобиль.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Машина принадлежит - %pname1% %pname2%.{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/do Его жетон  - %ID%{Enter}
KeyWait, Enter, U
Sleep 1050
SendInput, {F6}/todo Принято, благодарю{!}*убирая телефон.{Space}
KeyWait, Enter, U
Return

:?:/hcn::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
SendInput, {F6}/me достал ящик с инструментами.{Enter}
Sleep 1050
SendInput, {F6}/me открыл ящик с инструментами, затем достал отвёртку.{Enter}
Sleep 1050
SendInput, {F6}/me открутил болты номерных знаков машины.{Enter}
Sleep 1050
SendInput, {F6}/me снял номерные знаки с машины, затем поставил на багажник.{Enter}
Sleep 1050
SendInput, {F6}/me достал фальшивые номерные знаки "А777РМ 777".{Enter}
Sleep 1050
SendInput, {F6}/do Фальшивые номерные знаки не зарегистрированы в базе данных ГИБДД.{Enter}
Sleep 1050
SendInput, {F6}/me вставил номерные знаки, затем скрутил болты.{Enter}
Sleep 1050
SendInput, {F6}/do Фальшивые номерные знаки вставлены{!}{Enter}
Sleep 1050
SendInput, {F6}/me взял старые номерные знаки, затем положил их в багажник машины.{Enter}
Sleep 900
SendInput, {F6}/time{Enter}
Return

:?:/mo::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
KeyWait, Enter, U
Sleep 2000
SendInput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter}
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/do КПК находится в кармане.{Enter}
Sleep 1050
SendInput, {F6}/me легким движением руки достал КПК.{Enter}
Sleep 1050
SendInput, {F6}/do КПК находится в руках.{Enter}
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F6}/me на экране КПК нажал на раздел 'Министерство Обороны'.{Enter}
Sleep 1050
SendInput, {F6}/me нажал на экране КПК на 'Поиск нужного военнослужащего'.{Enter}
Sleep 1050
SendInput, {F6}/me ввёл Имя Фамилию нужного военнослужащего.{Enter}
Sleep 1050
SendInput, {F6}/do На экране КПК вывелся нужное Имя Фамилия военнослужащего{!}{Enter}
Sleep 1050
SendInput, {F6}/do Имя Фамилия военнослужащего: %pname1% %pname2%.{Enter}
Sleep 1050
SendInput, {F6}/do Жетон военнослужащего - [%pname3%].{Enter}
Sleep 1050
SendInput, {F6}/do Время на часах показывает: %A_dd%.%A_mm%.%A_yyyy% | %A_hour%:%A_min%:%A_sec%.{Enter}
Sleep 1050
SendInput, {F6}/do Военнослужащий %pname1% %pname2% - существует в базе данных МО {!}{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Return

:?:/mvd::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
checkfile = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
FileDelete %checkfile% 
FileAppend %checkfile% 
KeyWait, Enter, U
Sleep 333
SendInput, {F6}/b [Balasanyan]: ID игрока введи{!}{Enter}
KeyWait, Enter, U
Sleep 2000
SendInput, {F6}{Space} 
Input, ID, V I M, {enter} 
SendInput {end}+{home}{del}{esc} 
Sleep 3000
SendInput, {F6}/id %ID%{Enter}
KeyWait, Enter, U
Sleep 1050
FileRead, info, %checkfile% 
RegExMatch(info, " Игрок (.*)\Q_\E(.*)\Q[\E(.*)\Q]\E\N", pname) 
name = %pname1% 
family = %pname2%
SendInput, {F6}/do КПК находится в кармане.{Enter}
Sleep 1050
SendInput, {F6}/me легким движением руки достал КПК.{Enter}
Sleep 1050
SendInput, {F6}/do КПК находится в руках.{Enter}
Sleep 1050
SendInput, {F6}/me ввёл 6-ти значный код, затем разблокировал КПК.{Enter}
Sleep 1050
SendInput, {F6}/do КПК разблокировано{!}{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Sleep 1050
SendInput, {F6}/me на экране КПК нажал на раздел 'Министерство Внутренних Дел'.{Enter}
Sleep 1050
SendInput, {F6}/me нажал на экране КПК на 'Поиск нужного сотрудника'.{Enter}
Sleep 1050
SendInput, {F6}/me ввёл в поисковую строку Имя Фамилию нужного сотрудника.{Enter}
Sleep 1050
SendInput, {F6}/do На экране КПК вывелся нужное Имя Фамилия сотрудника{!}{Enter}
Sleep 1050
SendInput, {F6}/do Имя Фамилия сотрудника: %pname1% %pname2%.{Enter}
Sleep 1050
SendInput, {F6}/do Жетон сотрудника - [%pname3%].{Enter}
Sleep 1050
SendInput, {F6}/do Время на часах показывает: %A_dd%.%A_mm%.%A_yyyy% | %A_hour%:%A_min%:%A_sec%.{Enter}
Sleep 1050
SendInput, {F6}/do Сотрудник %pname1% %pname2% - существует в базе данных МВД {!}{Enter}
Sleep 1050
SendInput, {F6}/time{Enter}
Return




:?:08032022::
SendMessage, 0x50,, 0x4190419,, A
Sleep 333
SendInput, {F6}/b [Balasanyan FSB]: 08.03.2022{Enter}
Sleep 1050
SendInput, {F6}/b [Balasanyan FSB]: Это дата создания данной программы :){Enter}
Sleep 1050
SendInput, {F6}/b [Balasanyan FSB]: Желаем вам приятной игры на GTA-RP.{Enter}
Return




Guiclose:
exitapp

Guimin:
Gui, Minimize
return

Guimove:
PostMessage, 0xA1, 2
return














res_check() {
folder:=A_Temp "\WantedLab"
files=
(
switch_off.png
switch_on.png
button_close.png
button_expand.png
button_min.png
button_move.png
button_pushed.png
button_realesed.png
button_WL.png
gui_main.png
radiobutton_not_selected.png
radiobutton_selected.png
)
loop, parse, files, `n
	ifNotExist, %folder%\%A_Loopfield%
		return 0
return 1
}


res_download() {
folder:=A_Temp "\WantedLab"
FileCreateDir, %folder%
url=
(
https://i.yapx.ru/REEu2.png|switch_off.png
https://i.yapx.ru/REEu4.png|switch_on.png
https://i.yapx.ru/REEu5.png|button_close.png
https://i.yapx.ru/REEui.png|button_expand.png
https://i.yapx.ru/REEuj.png|button_min.png
https://i.yapx.ru/REEuk.png|button_move.png
https://i.yapx.ru/REEun.png|button_pushed.png
https://i.yapx.ru/REEuq.png|button_realesed.png
https://i.yapx.ru/REEur.png|button_WL.png
https://i.yapx.ru/REEuv.png|gui_main.png
https://i.yapx.ru/REEuw.png|radiobutton_not_selected.png
https://i.yapx.ru/REEuz.png|radiobutton_selected.png
)
loop, parse, url, `n
 {
	RegExMatch(A_LoopField, "(.*)\|(.*)", url)
	urldownloadtofile, %url1%,  %folder%\%url2%
 }
}




:?:Устав 1.1.::
{
Sleep 1200 
SendInput, {F6}Устав 1.1 - Запрещено использовать ненормативную..{ENTER}
Sleep 1200
SendInput, {F6}..лексику{!}{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 1.2.::
{
Sleep 1200 
SendInput, {F6}Устав 1.2 - Запрещены оскорбления, неуважительное общение.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 1.3.::
{
Sleep 1200 
SendInput, {F6}Устав 1.3 - Запрещено устраивать конфликты..{ENTER}
Sleep 1200
SendInput, {F6}..также участвовать в них{!}{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 1.4.::
{
Sleep 1200 
SendInput, {F6}Устав 1.4 - Запрещено нарушать субординацию.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 1.5.::
{
Sleep 1200 
SendInput, {F6}Устав 1.5 - Запрещено лгать руководству.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 1.6.::
{
Sleep 1200 
SendInput, {F6}Устав 1.6 - Запрещено обсуждать приказы..{ENTER}
Sleep 1200
SendInput, {F6}..также поручения от руководства.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 2.1.::
{
Sleep 1200 
SendInput, {F6}Устав 2.1 - Запрещено уходить на выходной в рабочее время..{ENTER}
Sleep 1200
SendInput, {F6}..без разрешения руководства.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 2.2.::
{
Sleep 1200 
SendInput, {F6}Устав 2.2 - Запрещено заниматься преступной деятельностью..{ENTER}
Sleep 1200
SendInput, {F6}...также это нарушение УК РФ.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 2.3.::
{
Sleep 1200 
SendInput, {F6}Устав 2.3 - Запрещено посещать развлекательные..{ENTER}
Sleep 1200
SendInput, {F6}..мероприятия в рабочее время...{ENTER}
Sleep 1200
SendInput, {F6}..казино, анашан, клубы, компьютерный клуб{!}{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{Enter}
} 
Return

:?:Устав 2.4.::
{
Sleep 1200 
SendInput, {F6}Устав 2.4 - Запрещено в рабочее время ходить на..{ENTER}
Sleep 1200
SendInput, {F6}...на подработки и иные работы..{ENTER}
Sleep 1200
SendInput, {F6}..ферма, стройка, дальнобойщик и тому прочее.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{Enter}
} 
Return

:?:Устав 3.1.::
{
Sleep 1200 
SendInput, {F6}Устав 3.1 - Рацию департамента разрешается использовать..{ENTER}
Sleep 1200
SendInput, {F6}..использовать имея 3 звание.{ENTER}
Sleep 1200
SendInput, {F6}Исключение: заказ БП; сообщение об экстренных ситуациях;{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{Enter}
} 
Return

:?:Устав 3.2.::
{
Sleep 1200 
SendInput, {F6}Устав 3.2 - Запрещено нарушать правила обращения в рацию..{ENTER}
Sleep 1200
SendInput, {F6}/b Департамент код: /d [Фракция, к которой обращаетесь] 'обращение'.{ENTER}
Sleep 1200
SendInput, {F6}/b Рация организации код: /r [ТЭГ] обращение.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{Enter}
} 
Return

:?:Устав 3.3.::
{
Sleep 1200 
SendInput, {F6}Устава 3.3 - Запрещено говорить бред или кричать...{ENTER}
Sleep 1200
SendInput, {F6}..в любую рацию..{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 3.4.::
{
Sleep 1200 
SendInput, {F6}Устав 3.4 - Запрещена реклама.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 3.5.::
{
Sleep 1200 
SendInput, {F6}Устав 3.5 - Запрещено игнорирование руководства.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 4.1.::
{
Sleep 1200 
SendInput, {F6}Устав 4.1 - Запрещено использование автомобиля..{ENTER}
Sleep 1200
SendInput, {F6}..не по должности..{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 4.2.::
{
Sleep 1200 
SendInput, {F6}Устав 4.2 - Запрещено использовать служебный..{ENTER}
Sleep 1200
SendInput, {F6}..служебных транспорт в личных целях...{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 4.3.::
{
Sleep 1200 
SendInput, {F6}Устав 4.3 - Запрещено бросать служебный транспорт вне..{ENTER}
Sleep 1200
SendInput, {F6}..вне территории служебной парковки...{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение{ENTER}
} 
Return

:?:Устав 5.1.::
{
Sleep 1200 
SendInput, {F6}Устав 5.1 - Запрещено разговаривать в строю если...{ENTER}
Sleep 1200
SendInput, {F6}..если к вам не обращается руководство.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 5.2.::
{
Sleep 1200 
SendInput, {F6}Устав 5.2 - Запрещено не являться в строй.{ENTER}
Sleep 1200
SendInput, {F6}/b AFK свыше 1 минуты = отсутствие.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 5.3.::
{
Sleep 1200 
SendInput, {F6}Устав 5.3 - Запрещено держать предметы в руках...{ENTER}
Sleep 1200
SendInput, {F6}..оружие, телефоны, звонки и SMS, сигареты и так далее.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение{ENTER}
} 
Return

:?:Устав 5.4.::
{
Sleep 1200 
SendInput, {F6}Устав 5.4 - Запрещено самовольно вставать в строй / покидать строй.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 5.5.::
{
Sleep 1200 
SendInput, {F6}Устав 5.5 - Запрещено нарушать правила стойки в строю.{ENTER}
Sleep 1200
SendInput, {F6}/b Анимации, движения.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 6.1.::
{
Sleep 1200 
SendInput, {F6}Устав 6.1 - Запрещено использовать служебное положение..{ENTER}
Sleep 1200
SendInput, {F6}..в личных целях...{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.2.::
{
Sleep 1200 
SendInput, {F6}Устав 6.2 - Запрещено танцевать/развлекаться в..{ENTER}
Sleep 1200
SendInput, {F6}...в рабочее время..{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.3.::
{
Sleep 1200 
SendInput, {F6}Устав 6.3 - Запрещено употреблять алкоголь, наркотики...{ENTER}
Sleep 1200
SendInput, {F6}..а также хранить наркотики и запрещённые материалы...{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.4.::
{
Sleep 1200 
SendInput, {F6}Устав 6.4 - Запрещено использовать табельное оружие..{ENTER}
Sleep 1200
SendInput, {F6}...без причины..{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.5.::
{
Sleep 1200 
SendInput, {F6}Устав 6.5 - Запрещено использовать личный транспорт..{ENTER}
Sleep 1200
SendInput, {F6}...в рабочее время..{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.6.::
{
Sleep 1200 
SendInput, {F6}Устав 6.6 - Запрещено выпрашивать повышение.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.7.::
{
Sleep 1200 
SendInput, {F6}Устав 6.7 - Запрещено выдавать себя за сотрудников..{ENTER}
Sleep 1200
SendInput, {F6}..других организаций/другого звания.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.8.::
{
Sleep 1200 
SendInput, {F6}Устав 6.8 - Запрещено превышение должностных полномочий.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.9.::
{
Sleep 1200 
SendInput, {F6}Устав 6.9 - Запрещено сексуальное домогательство до кого-либо.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.10.::
{
Sleep 1200 
SendInput, {F6}Устав 6.10 - Запрещено нахождение в опасных районах..{ENTER}
Sleep 1200
SendInput, {F6}..базы ОПГ/Мафии и так далее.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.11.::
{
Sleep 1200 
SendInput, {F6}Устав 6.11 - Запрещено брать/давать взятки.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.12.::
{
Sleep 1200 
SendInput, {F6}Устав 6.12 - Запрещены махинации при переводах/восстановлениях.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.13.::
{
Sleep 1200 
SendInput, {F6}Устав 6.13 - Запрещено подсказывать коллегам..{ENTER}
Sleep 1200
SendInput, {F6}..препятствовать проведению проверок от высших органов власти.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.14.::
{
Sleep 1200 
SendInput, {F6}Устав 6.14 - Запрещено не выполнять приказы/поручения от руководства.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.15.::
{
Sleep 1200 
SendInput, {F6}Устав 6.15 - Запрещено курение вне специально...{ENTER}
Sleep 1200
SendInput, {F6}..отведенных для этого местах.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 6.16.::
{
Sleep 1200 
SendInput, {F6}Устав 6.16 - Запрещено спать в неположенном месте.{ENTER}
Sleep 1200
SendInput, {F6}/b AFK 1+ минута.{ENTER}
Sleep 1200
SendInput, {F6}Исключение: Разрешено спать в специальном месте..{ENTER}
Sleep 1200
SendInput, {F6}..которое утверждено лидером.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{ENTER}
} 
Return

:?:Устав 7.1.::
{
Sleep 1200 
SendInput, {F6}Устав 7.1 - Запрещено ходить без галстука/кепки своей должности.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Беседа/Выговор/Увольнение.{ENTER}
} 
Return

:?:Устав 7.2.::
{
Sleep 1200 
SendInput, {F6}Устав 7.2 - Запрещено носить аксессуары..{ENTER}
Sleep 1200
SendInput, {F6}..закрывающие части лица и нарушающие внешний вид рабочей формы.{ENTER}
Sleep 1200
SendInput, {F6}/b Правила ношения аксессуаров можно смотреть на форуме GTA-RP.{ENTER}
Sleep 1200
SendInput, {F6}Наказание - Беседа/Выговор/Увольнение.{ENTER}
} 
Return












:?:ФП 1.1.::
Sleep 1050
SendInput, {F6}ФП 1.1 - Запрещено находиться, парковать ТС на территории офиса ФСБ..{Enter}
Sleep 1050
SendInput, {F6}..без сопровождения агента ФСБ РФ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Предупреждение/Понижение.{Enter}
Return

:?:ФП 1.2.::
Sleep 1050
SendInput, {F6}ФП 1.2 - Запрещено выдавать себя за сотрудника иных организаций..{Enter}
Sleep 1050
SendInput, {F6}...лгать от их имени.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.3.::
Sleep 1050
SendInput, {F6}ФП 1.3 - Запрещено нарушать правила строя..{Enter}
Sleep 1050
SendInput, {F6}...даже при любом построении{!}{Enter}
Sleep 1050
SendInput, {F6}Наказание - Выговор/Увольнение.{Enter}
Return

:?:ФП 1.4.::
Sleep 1050
SendInput, {F6}ФП 1.4 - Запрещено использовать нецензурную брань, устраивать конфликты, оскорблять, нарушать субординацию.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.5.::
Sleep 1050
SendInput, {F6}ФП 1.5 - Запрещена стрельба в офисе ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.6.::
Sleep 1050
SendInput, {F6}ФП 1.6 - Запрещено превышать полномочия государственных структур.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.7.::
Sleep 1050
SendInput, {F6}ФП 1.7 - Запрещено применять огнестрельное оружие/спец.средства по гражданским/гос.служ. без оснований.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 1.8.::
Sleep 1050
SendInput, {F6}ФП 1.8 - Запрещено наносить телесные повреждения гражданину/государственным служащим не нарушивших закон.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.9.::
Sleep 1050
SendInput, {F6}ФП 1.9 - Запрещено сексуальное домогательство к кому-либо.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.10.::
Sleep 1050
SendInput, {F6}ФП 1.10 - Запрещено проникать на охраняемые объекты, не имея к ним допуска.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение и Арест.{Enter}
Return

:?:ФП 1.11.::
Sleep 1050
SendInput, {F6}ФП 1.11 - Запрещено объявлять в розыск людей, которые не нарушали закон.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 1.12.::
Sleep 1050
SendInput, {F6}ФП 1.12 - Запрещено объявлять в розыск по просьбам.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.13.::
Sleep 1050
SendInput, {F6}ФП 1.13 - Запрещено нарушение общего положения для правоохранительных органов.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Выговор/Понижение/Увольнение.{Enter}
Return

:?:ФП 1.14.::
Sleep 1050
SendInput, {F6}ФП 1.14 - Запрещено нарушение распорядка рабочего дня.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.15.::
Sleep 1050
SendInput, {F6}ФП 1.15 - Запрещено хранение, употребление наркотических веществ, украденных материалов.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 1.16.::
Sleep 1050
SendInput, {F6}ФП 1.16 - Запрещено прибывание в опасных районах.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 1.17.::
Sleep 1050
SendInput, {F6}ФП 1.17 - Запрещена продажа / попытка продажи государственного имущества.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение и ЧС Фракции.{Enter}
Return

:?:ФП 1.18.::
Sleep 1050
SendInput, {F6}ФП 1.18 - Запрещено неподчинение вышестоящему по званию лицу в рамках закона.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.19.::
Sleep 1050
SendInput, {F6}ФП 1.19 - Запрещено сотрудникам СС* проверять документы и проводить досмотр личных вещей без оснований.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.20.::
Sleep 1050
SendInput, {F6}ФП 1.20 - Запрещено перечить приказам старшего по званию / должности.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.21.::
Sleep 1050
SendInput, {F6}ФП 1.21 - Запрещено употребление алкоголя в рабочее время.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.22.::
Sleep 1050
SendInput, {F6}ФП 1.22 - Запрещено брать, давать взятки.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 1.23.::
Sleep 1050
SendInput, {F6}ФП 1.23 - Запрещено снимать преступникам розыск без веской на то причины.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.24.::
Sleep 1050
SendInput, {F6}ФП 1.24 - Запрещено бездействие, неисполнение обязанностей по оказанию помощи лицам в трудной ситуации.{Enter}
Sleep 1050
SendInput, {F6}Наказание - На усмотрение{Enter}
Return

:?:ФП 1.25.::
Sleep 1050
SendInput, {F6}ФП 1.25 -  Запрещено входить в сговор с преступниками, террор.орг/ОПГ, нарушителями ФП и УКРФ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 1.26.::
Sleep 1050
SendInput, {F6}ФП 1.26 - Запрещены махинации при перевода, восстановлениях.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение с ОЧС.{Enter}
Return

:?:ФП 1.27.::
Sleep 1050
SendInput, {F6}ФП 1.27 - Запрещено вносить помехи в работу аттестационной комиссии от высших органов власти.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.28.::
Sleep 1050
SendInput, {F6}ФП 1.28 -  Запрещено сотрудникам во время погони на а\м - открывать огонь без предупреждения в мегафон.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение.{Enter}
Return

:?:ФП 1.29.::
Sleep 1050
SendInput, {F6}ФП 1.29 - Запрещено нарушать правила ношения аксессуаров.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Уст.Предупреждение/Выговор.{Enter}
Return

:?:ФП 1.30.::
Sleep 1050
SendInput, {F6}ФП 1.30 - Запрещено использовать проблесковые маячки, сирену, мегафон в личных целях{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 1.31.::
Sleep 1050
SendInput, {F6}ФП 1.31 - Запрещено посещать развлекательные мероприятия в рабочее время без весомой на то причины.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 1.32.::
Sleep 1050
SendInput, {F6}ФП 1.32 - Запрещено использование личного транспорта в рабочее время.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Выговор/Понижение.{Enter}
Return

:?:ФП 1.33.::
Sleep 1050
SendInput, {F6}ФП 1.33 - Запрещено помогать преступникам при пробеге в тюрьме «Чёрный Лебедь».{Enter}
Sleep 1050
SendInput, {F6}Наказание - Выговор/Понижение.{Enter}
Return

:?:ФП 2.1.::
Sleep 1050
SendInput, {F6}ФП 2.1 - ПЮ Запрещено покидать свою зону влияния во время рабочего дня.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 2.2.::
Sleep 1050
SendInput, {F6}ФП 2.2 - ПА Запрещено покидать свою зону влияния во время рабочего дня.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 2.3.::
Sleep 1050
SendInput, {F6}ФП 2.3 - Запрещено прогуливать рабочий день в тюрьме "Черный Лебедь".{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 2.4.::
Sleep 1050
SendInput, {F6}ФП 2.4 - Сотрудникам ГИБДД запрещено закрывать проезд на мост г.Южного не имея на то весомых обстоятельств.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Предупреждение/Понижение.{Enter}
Return

:?:ФП 4.1.::
Sleep 1050
SendInput, {F6}ФП 4.1 - Запрещено нападать и применять физическую силу в отношении агента ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 4.2.::
Sleep 1050
SendInput, {F6}ФП 4.2 - Запрещено обыскивать агентов ФСБ (при исполнении).{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 4.3.::
Sleep 1050
SendInput, {F6}ФП 4.3 - Запрещено отнимать права, лицензии у агента ФСБ (при исполнении).{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 4.4.::
Sleep 1050
SendInput, {F6}ФП 4.4 - Запрещено неподчинение приказам Агента ФСБ (при исполнении).{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 4.5.::
Sleep 1050
SendInput, {F6}ФП 4.5 - Запрещено вмешиваться в спец. операции без прямого приказа от ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 4.6.::
Sleep 1050
SendInput, {F6}ФП 4.6 - Запрещено оспаривать понижение в звании, назначенное руководством ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 4.7.::
Sleep 1050
SendInput, {F6}ФП 4.7 -  Запрещено просить о приеме в какую-либо гос.организацию.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Предупреждение.{Enter}
Return

:?:ФП 4.8.::
Sleep 1050
SendInput, {F6}ФП 4.8 - Запрещено отдавать приказы Агенту ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Предупреждение/Выговор/Понижение.{Enter}
Return

:?:ФП 4.9.::
Sleep 1050
SendInput, {F6}ФП 4.9 - Запрещено связывать, надевать наручники на Агента ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 4.10.::
Sleep 1050
SendInput, {F6}ФП 4.10 -  Запрещено клеветать на кого-либо.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Выговор/Понижение.{Enter}
Return

:?:ФП 4.11.::
Sleep 1050
SendInput, {F6}ФП 4.11 - Запрещено перечить приказам руководства ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 4.12.::
Sleep 1050
SendInput, {F6}ФП 4.12 - Запрещено угрожать кому-либо.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 4.13.::
Sleep 1050
SendInput, {F6}ФП 4.13 - Запрещено делать ложный вызов в ФСБ РФ/Полиции.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 4.14.::
Sleep 1050
SendInput, {F6}ФП 4.14 - Запрещено вести слежки за Агентами ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение.{Enter}
Return

:?:ФП 4.15.::
Sleep 1050
SendInput, {F6}ФП 4.15 - Запрещено обманывать, вводить в заблуждение.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Понижение/Увольнение.{Enter}
Return

:?:ФП 4.16.::
Sleep 1050
SendInput, {F6}ФП 4.16 -  Запрещено требовать паспорт сотрудника ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Предупреждение/Понижение.{Enter}
Return

:?:ФП 4.17.::
Sleep 1050
SendInput, {F6}ФП 4.17 - Запрещено участвовать в несанкционированных митингах, ограблениях банка.{Enter}
Sleep 1050
SendInput, {F6}/b битвах семей.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Увольнение.{Enter}
Return

:?:ФП 4.18.::
Sleep 1050
SendInput, {F6}ФП 4.18 - Запрещено рассекречивание сотрудников ФСБ без весомых на то доказательств и оснований.{Enter}
Sleep 1050
SendInput, {F6}Наказание - Выговор/Понижение.{Enter}
Return










:?:УКРФ 1.1.::
Sleep 1050
SendInput, {F6}УКРФ 1.1 - Нападение на гражданское лицо.{Enter}
Sleep 1050
SendInput, {F6}Лишение двух лет свободы.{Enter}
Return

:?:УКРФ 1.2.::
Sleep 1050
SendInput, {F6}УКРФ 1.2 - Нападение на сотрудника гос.службы.{Enter}
Sleep 1050
SendInput, {F6}Лишение четырёх лет свободы.{Enter}
Return

:?:УКРФ 2.1.::
Sleep 1050
SendInput, {F6}УКРФ 2.1 - Нападение с применением оружия.{Enter}
Sleep 1050
SendInput, {F6}Лишение четырёх лет свободы.{Enter}
Return

:?:УКРФ 2.2.::
Sleep 1050
SendInput, {F6}УКРФ 2.2 - Нападение с применением оружия на сотрудника гос.службы.{Enter}
Sleep 1050
SendInput, {F6}Лишение шести лет свободы.{Enter}
Return

:?:УКРФ 3.1.::
Sleep 1050
SendInput, {F6}УКРФ 3.1 - Порча личного имущества.{Enter}
Sleep 1050
SendInput, {F6}Лишение двух лет свободы.{Enter}
Return

:?:УКРФ 3.2.::
Sleep 1050
SendInput, {F6}УКРФ 3.2 - Оскорбления.{Enter}
Sleep 1050
SendInput, {F6}Лишение трёх лет свободы.{Enter}
Return

:?:УКРФ 3.3.::
Sleep 1050
SendInput, {F6}УКРФ 3.3 - Порча имущества гос.собственности или вандализм.{Enter}
Sleep 1050
SendInput, {F6}Лишение четырёх лет свободы.{Enter}
Return

:?:УКРФ 4.1.::
Sleep 1050
SendInput, {F6}УКРФ 4.1 - Ношение оружия в открытом виде без лицензии.{Enter}
Sleep 1050
SendInput, {F6}Лишение трёх лет свободы.{Enter}
Return

:?:УКРФ 4.2.::
Sleep 1050
SendInput, {F6}УКРФ 4.2 - Нелегальная продажа оружия.{Enter}
Sleep 1050
SendInput, {F6}Лишение пяти лет свободы.{Enter}
Return

:?:УКРФ 4.3.::
Sleep 1050
SendInput, {F6}УКРФ 4.3 - Кража материалов, для создания оружия.{Enter}
Sleep 1050
SendInput, {F6}Лишение шести лет свободы.{Enter}
Return

:?:УКРФ 5.1.::
Sleep 1050
SendInput, {F6}УКРФ 5.1 - Попытка подкупа должностного лица.{Enter}
Sleep 1050
SendInput, {F6}Лишение трёх лет свободы.{Enter}
Return

:?:УКРФ 6.1.::
Sleep 1050
SendInput, {F6}УКРФ 6.1 - Хранение и/или перевозка наркотических веществ.{Enter}
Sleep 1050
SendInput, {F6}Лишение четырёх лет свободы.{Enter}
Return

:?:УКРФ 6.2.::
Sleep 1050
SendInput, {F6}УКРФ 6.2 - Сбыт, распространение, приобретение наркотиков.{Enter}
Sleep 1050
SendInput, {F6}Лишение пяти лет свободы.{Enter}
Return

:?:УКРФ 7.2.::
Sleep 1050
SendInput, {F6}УКРФ 7.2 - Угон транспортного средства.{Enter}
Sleep 1050
SendInput, {F6}Лишение трёх лет свободы.{Enter}
Return

:?:УКРФ 8.1.::
Sleep 1050
SendInput, {F6}УКРФ 8.1 - Неподчинение сотруднику МВД/ФСБ.{Enter}
Sleep 1050
SendInput, {F6}Лишение  трёх лет свободы.{Enter}
Return

:?:УКРФ 8.2.::
Sleep 1050
SendInput, {F6}УКРФ 8.2 - Попытка побега с места преступления или ареста.{Enter}
Sleep 1050
SendInput, {F6}Лишение четырёх лет свободы.{Enter}
Return

:?:УКРФ 9.1.::
Sleep 1050
SendInput, {F6}УКРФ 9.1 - Укрывательство преступников/фактов/улик.{Enter}
Sleep 1050
SendInput, {F6}Лишение трёх лет свободы.{Enter}
Return

:?:УКРФ 10.1.::
Sleep 1050
SendInput, {F6}УКРФ 10.1 - Проникновение на охраняемую территорию правоохран. орг.{Enter}
Sleep 1050
SendInput, {F6}Лишение трёх лет свободы.{Enter}
Return

:?:УКРФ 10.2.::
Sleep 1050
SendInput, {F6}УКРФ 10.2 - Проникновение на частную собственность.{Enter}
Sleep 1050
SendInput, {F6}Лишение двух лет свободы.{Enter}
Return

:?:УКРФ 10.3.::
Sleep 1050
SendInput, {F6}УКРФ 10.3 - Прониковнение на территорию Военной Части.{Enter}
Sleep 1050
SendInput, {F6}Лишение шести лет свободы.{Enter}
Return

:?:УКРФ 11.1.::
Sleep 1050
SendInput, {F6}УКРФ 11.1 - Попытка похищения должностного/гражданского лица.{Enter}
Sleep 1050
SendInput, {F6}Лишение четырёх лет свободы.{Enter}
Return

:?:УКРФ 11.2.::
Sleep 1050
SendInput, {F6}УКРФ 11.2 - Исполнение похищения должностного/гражданского лица.{Enter}
Sleep 1050
SendInput, {F6}Лишение пяти лет свободы.{Enter}
Return

:?:УКРФ 12.1.::
Sleep 1050
SendInput, {F6}УКРФ 12.1 - Планирование теракта.{Enter}
Sleep 1050
SendInput, {F6}Лишение пяти лет свободы.{Enter}
Return

:?:УКРФ 12.2.::
Sleep 1050
SendInput, {F6}УКРФ 12.2 - Исполнение теракта.{Enter}
Sleep 1050
SendInput, {F6}Лишение шести лет свободы.{Enter}
Return

:?:УКРФ 13.1.::
Sleep 1050
SendInput, {F6}УКРФ 13.1 - Вооруженное насилие, а также призыв к насилию на митингах.{Enter}
Sleep 1050
SendInput, {F6}Лишение шести лет свободы.{Enter}
Return

:?:УКРФ 13.2.::
Sleep 1050
SendInput, {F6}УКРФ 13.2 - Участие в несанкционированных митингах.{Enter}
Sleep 1050
SendInput, {F6}Лишение пяти лет свободы.{Enter}
Return

:?:УКРФ 13.3.::
Sleep 1050
SendInput, {F6}УКРФ 13.3 - Организация незаконных митингов.{Enter}
Sleep 1050
SendInput, {F6}Лишение шести лет свободы.{Enter}
Return











:?:КоАП 1.1.::
Sleep 1050
SendInput, {F6}КоАП 1.1 - Уничтожение, поврежд. спец./гос. знаков.{Enter}
Sleep 1050
SendInput, {F6}Штраф 500-2000 рублей.{Enter}
Sleep 1050
SendInput, {F6}..1000-5000 рублей для государственных сотрудников.{Enter}
Return

:?:КоАП 1.2.::
Sleep 1050
SendInput, {F6}КоАП 1.2 - Уничтожение, поврежд. чужого имущества.{Enter}
Sleep 1050
SendInput, {F6}Штраф 1000-3000 рублей.{Enter}
Return

:?:КоАП 1.3.::
Sleep 1050
SendInput, {F6}КоАП 1.3 - Причинение имущественного ущерба путем обмана или доверия.{Enter}
Sleep 1050
SendInput, {F6}Штраф до 3000 рублей.{Enter}
Return

:?:КоАП 2.1.::
Sleep 1050
SendInput, {F6}КоАП 2.1 - Управление т/с без регистрационных знаков.{Enter}
Sleep 1050
SendInput, {F6}Штраф 10000 рублей.{Enter}
Sleep 1050
SendInput, {F6}Либо лишение водительских прав.{Enter}
Return

:?:КоАП 2.3.::
Sleep 1050
SendInput, {F6}КоАП 2.3 - Не выполнение обязанностей в случае ДТП.{Enter}
Sleep 1050
SendInput, {F6}Штраф 2500 рублей.{Enter}
Return

:?:КоАП 2.3.1.::
Sleep 1050
SendInput, {F6}КоАП 2.3.1 - Уход с места ДТП.{Enter}
Sleep 1050
SendInput, {F6}Лишение водительских прав.{Enter}
Return

:?:КоАП 2.4.::
Sleep 1050
SendInput, {F6}КоАП 2.4 - Нанесение лёгкой травмы человеку при помощи т/с.{Enter}
Sleep 1050
SendInput, {F6}Штраф 5000 рублей.{Enter}
Return

:?:КоАП 2.5.::
Sleep 1050
SendInput, {F6}КоАП 2.5 - Езда по обочине, тротуару.{Enter}
Sleep 1050
SendInput, {F6}Штраф 3000 рублей.{Enter}
Return

:?:КоАП 2.6.::
Sleep 1050
SendInput, {F6}КоАП 2.6 - Пересечение сплошной.{Enter}
Sleep 1050
SendInput, {F6}Штраф 3000 рублей.{Enter}
Return

:?:КоАП 2.8.::
Sleep 1050
SendInput, {F6}КоАП 2.8 - Превышение скорости.{Enter}
Sleep 1050
SendInput, {F6}Штраф 2500 рублей.{Enter}
Return


:?:КоАП 2.9.::
Sleep 1050
SendInput, {F6}КоАП 2.9 - Управление т/с водителем, находящимся в состоянии опьянения.{Enter}
Sleep 1050
SendInput, {F6}Штраф 30000 рублей.{Enter}
Sleep 1050
SendInput, {F6}Либо лишение водительских прав.{Enter}
Return

:?:КоАП 2.10.::
Sleep 1050
SendInput, {F6}КоАП 2.10 - Проезд на запрещающий сигнал светофора.{Enter}
Sleep 1050
SendInput, {F6}Штраф 500-3000 рублей.{Enter}
Return

:?:КоАП 2.11.::
Sleep 1050
SendInput, {F6}КоАП 2.11 - Провокация сотрудников правоохранительных на погоню и подобное.{Enter}
Sleep 1050
SendInput, {F6}Лишение водительских прав.{Enter}
Return

:?:КоАП 2.12.::
Sleep 1050
SendInput, {F6}КоАП 2.12 - Тонировка т/c более 90#.{Enter}
Sleep 1050
SendInput, {F6}Штраф 5000 рублей.{Enter}
Return

:?:КоАП 2.13.::
Sleep 1050
SendInput, {F6}КоАП 2.13 - Езда по встречной полосе.{Enter}
Sleep 1050
SendInput, {F6}Штраф 10000 рублей.{Enter}
Return

:?:КоАП 3.1.::
Sleep 1050
SendInput, {F6}КоАП 3.1 - Парковка в неположенном месте.{Enter}
Sleep 1050
SendInput, {F6}Штраф 1000-3000 рублей.{Enter}
Return

:?:КоАП 3.2.::
Sleep 1050
SendInput, {F6}КоАП 3.2 - Запрещенная парковка около гос. учреждений.{Enter}
Sleep 1050
SendInput, {F6}Штраф 500 рублей.{Enter}
Return

:?:КоАП 4.1.::
Sleep 1050
SendInput, {F6}КоАП 4.1 - Игнорирование (непропускание) гос. машин.{Enter}
Sleep 1050
SendInput, {F6}Штраф 2000 рублей.{Enter}
Sleep 1050
SendInput, {F6}Либо лишение водительских прав.{Enter}
Return

:?:КоАП 5.1.::
Sleep 1050
SendInput, {F6}КоАП 5.1 - Оскорбление.{Enter}
Sleep 1050
SendInput, {F6}Штраф 1000-3000 рублей.{Enter}
Return

:?:КоАП 6.1.::
Sleep 1050
SendInput, {F6}КоАП 6.1 - Действие или бездействие, повлёкшее вред здоровью (имуществу).{Enter}
Sleep 1050
SendInput, {F6}Штраф 7000-25000 рублей.{Enter}
Return

:?:КоАП 6.2.::
Sleep 1050
SendInput, {F6}КоАП 6.2 - Пьяный в общественном месте.{Enter}
Sleep 1050
SendInput, {F6}Штраф 5000 рублей.{Enter}
Return

:?:КоАП 6.3.::
Sleep 1050
SendInput, {F6}КоАП 6.3 - Неадекватное поведение в обещственном месте.{Enter}
Sleep 1050
SendInput, {F6}Штраф 2000 рублей.{Enter}
Return

:?:КоАП 6.4.::
Sleep 1050
SendInput, {F6}КоАП 6.4 - Распитие в общественном месте.{Enter}
Sleep 1050
SendInput, {F6}Штраф 500-2000 рублей.{Enter}
Return

:?:КоАП 6.5.::
Sleep 1050
SendInput, {F6}КоАП 6.5 - Курение в общестенном месте.{Enter}
Sleep 1050
SendInput, {F6}Штраф 5000-10000 рублей.{Enter}
Return
