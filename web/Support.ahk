#Persistent
#NoEnv
#Singleinstance, force
if !A_IsAdmin
	run *runas "%A_ScriptFullPath%"


Menu, Tray, NoStandard
Menu, Tray, Tip, Support Helper 1.0
Menu, Tray, Add, Support Helper | Dav Dzerzhinskiy ♥, Window
Menu, Tray, Disable, Support Helper | Dav Dzerzhinskiy ♥
Menu, Tray, Add
Menu, Tray, Add, Информация о программе, InfoSupp
Menu, Tray, Add, Количество моих ответов за день, MyOtvet
Menu, Tray, Add, Очистить ответы, NullOtvet
Menu, Tray, Add
Menu, Tray, Add, Возобновить работу программы, update
Menu, Tray, Add, Временно остановить работу программы, tempstop
Menu, Tray, Add, Завершить работу программы, exit


Gui, color, white
Gui, Font, S14 cBlack Bold, Segoe UI
Gui, Add, Text, x75 y5, Support Helper
Gui, Add, Edit, x0 y0 w0 h0
Gui, Font, S9 cBlack Bold, Verdana
Gui, Add, Button, x15 y45 w125 h20 gInformation, Информация
Gui, Add, Button, x158 y45 w125 h20 gOtveti, Кол-во ответов
Gui, Add, Button, x88 y67 w125 h20 gOchistit, Очистить ответы
Gui, Font, S9 cBlack Bold, Segoe UI
Gui, Add, Text, x4 y90, Автор и разработчик программы:
Gui, Font, S9 cBlue Bold, Segoe UI
Gui, Add, Text, x200 y90, Dav Dzerzhinskiy
Gui, Add, Text, x158 y105, dav.dzerzhinskiy
Gui, Font, S9 cBlack Bold, Segoe UI
Gui, Add, Text, x45 y105, ВКонтакте: vk.com/
Gui, Font, S19 cDefault, Norm
Gui, Add, Text, x275 y119, ֍
Gui, Show, w300 h150, Support Helper 1.0
Return


Information:
MsgBox, 4, Support Helper, Вывожу информацию про Support Helper. `n`Нажмите 'Да' для дальнейших действий.
IfMsgBox No
	Return
IfMsgBox Yes
URLDownloadToFile, https://pastebin.com/raw/S3HfbNYe, Support info.txt
While ! FileExist( "Support info.txt" )
Sleep 222
run, Support info.txt
Process, WaitClose, notepad.exe
FileDelete, Support info.txt
Return
Otveti:
MsgBox, 0, Support Answers, Примерное количество ваших ответов за день: %Otvet% `n`Приятной игры, by Dav ♥
!f1::
Otvet+=1
Return
!f2::
SendInput, {F6}/sc Примерное количество моего доната: %Otvet% рублей{!}{Enter}
Return
Ochistit:
Otvet=Null

update:
reload
return
tempstop:
suspend
return
exit:
exitapp
return
Window:
InfoSupp:
URLDownloadToFile, https://pastebin.com/raw/S3HfbNYe, Support info.txt
While ! FileExist( "Support info.txt" )
Sleep 222
run, Support info.txt
Process, WaitClose, notepad.exe
FileDelete, Support info.txt
Return
MyOtvet:
MsgBox, 0, Support Answers, Примерное количество ваших ответов за день: %Otvet% `n`Приятной игры, by Dav ♥
Return
NullOtvet:
Otvet=Null


:?'n:.нрпкрыша::/jail  5 nRP поведение • [Крыша автомобиля].{left 38}
:?'n:.нрпстол::/jail  5 nRP поведение • [Стол].{left 26}
:?'n:.нрпдействие::/jail  15 nRP действия • [Провокация].{left 32}
:?'n:.афкприаресте::/jail  70 AFK • [От ареста].{left 22}
:?'n:.афкприсмерти::/jail  60 AFK • [От смерти].{left 22}
:?'n:.оффприаресте::/jail  85 off • [При аресте].{left 23}
:?'n:.оффотбоя::/jail  100 off • [От боя].{left 21}
:?'n:.афкотбоя::/jail  80 AFK • [От боя].{left 19}
:?'n:.интерьеротбоя::/jail  35 Интерьер • [От боя].{left 24}
:?'n:.интерьервовремябоя::/jail  40 Интерьер • [Во время боя].{left 30}
:?'n:.интерьеротсмерти::/jail  50 Интерьер • [От смерти].{left 27}
:?'n:.неполнаяотыгровкарп::/jail  55 Неполная отыгровка • [Role Play].{left 37}
:?'n:.стрельбасвертолета::/warn  nRP военный • [Стрельба с военного вертолета].{left 47}
:?'n:.полетсвоенноговертолета::/jail  70 nRP военный • [Полёт на военном вертолете].{left 47}
:?'n:.стрельбасистребителя::/warn  nRP военный • [Стрельба с истребителя]{left 39}
:?'n:.полетсистребителя::/jail  70 nRP военный • [Полёт с истребителя].{left 40}
:?'n:.продажаотеля::/warn  Продажа/Попытка продажи номера отеля{left 37}
:?'n:.покупкаотеля::/warn  Покупка номера в отеле{left 23}
:?'n:.отыгровкадлясебя::/jail  10 Отыгровка • [В свою пользу].{left 32}
:?'n:.отказототыгровкирп::/jail  85 Отказ • [От отыгровки Role Play].{left 37}
:?'n:.уходототыгровкирп::/jail  90 Уход • [От отыгровки Role Play].{left 36}
:?'n:.срывсобеседования::/jail  10 Срыв • [Собеседования].{left 27}
:?'n:.помеханасобеседовании::/kick  Помеха • [На собеседовании].{left 29}
:?'n:.помеханаспавне::/kick  Помеха • [На спавне].{left 22}
:?'n:.вилка::/kick  Вилка • [Зажатая клавиша].{left 27}
:?'n:.афк::/kick  AFK • [Without ESC].{left 21}
:?'n:.афкнадороге::/sp  Помеха{left 7}
:?'n:.нрппохищение::/jail  75 nRP похищение.{left 18}
:?'n:.арествафк::/jail  75 nRP cop • [Арест игрока в AFK].{left 35}
:?'n:.нрптазер::/jail  65 nRP cop • [Электрошокер].{left 29}
:?'n:.нрпштраф::/jail  85 nRP cop • [Выдача штрафа].{left 30}
:?'n:.нрпизъятие::/jail  65 nRP cop • [Изъятие].{left 24}
:?'n:.сбыт::/jail  90 nRP cop • [Ожидание на сбыте].{left 34}
:?'n:.дм::/jail  90 Death Match.{left 16}
:?'n:.дмновичков::/warn  Death Match • [Новичка]{left 24}
:?'n:.дмнаслете::/warn  Death Match • [Во время слёта]{left 31}
:?'n:.ответныйдмслет::/warn  Ответный Death Match • [На слёте]{left 34}
:?'n:.массовыйдм::/warn  Массовый Death Match{left 21}
:?'n:.дмвзз::/jail  125 Death Match in Green Zone.{left 31}
:?'n:.дмвспортзале::/jail  80 Death Match • [В спортзале].{left 32}
:?'n:.дмвчл::/jail  80 Death Match • [Заключённых].{left 32}
:?'n:.дмвкпз::/jail  80 DeathMatch • [Заключенных].{left 31}
:?'n:.дмкар::/jail  60 Death Match • [Car].{left 24}
:?'n:.дмвинтерьере::/jail  80 Death Match • [В интерьере].{left 32}
:?'n:.дмазснамашине::/jail  90 nRP drive • [DB АЗС].{left 25}
:?'n:.дмазс::/jail  15 nRP поведение • [Death Match АЗС].{left 38}
:?'n:.нрпнож::/jail  120 Убийство • [С ножа].{left 25}
:?'n:.дмвдмг::/auninvite  Death Match in DeMorgan{left 24}
:?'n:.стрельбавзз::/jail  35 Стрельба • [in Green Zone].{left 31}
:?'n:.нрпдубинка::/jail  80 nRP cop • [Дубинка].{left 24}
:?'n:.нрпадвокат::/jail  80 nRP адвокат • [На территории ЧЛ].{left 37}
:?'n:.дб::/jail  60 nRP drive • [DB].{left 21}
:?'n:.рк::/jail  60 Revenge Kill.{left 17}
:?'n:.тк::/jail  75 Team Kill.{left 14}
:?'n:.ск::/jail  90 Spawn Kill.{left 15}
:?'n:.пг::/jail  75 Power Gaming.{left 17}
:?'n:.+с::/jail  120 nRP стрельба • [{+} C].{left 28}
:?'n:.сбивпереката::/jail  30 Сбив • [Перекатов].{left 23}
:?'n:.сбиваним::/jail  30 Сбив • [Анимации].{left 22}
:?'n:.сбивнарко::/jail  30 Сбив • [Наркотиков].{left 24}
:?'n:.багоюз::/jail  75 Багоюз.{left 11}
:?'n:.епп::/jail  35 nRP drive • [Езда по полям].{left 32}
:?'n:.спп::/jail  35 nRP drive • [Срез по полям].{left 32}
:?'n:.колесо::/jail  35 nRP drive • [Езда с пробитым колесом].{left 42}
:?'n:.объезд::/jail  35 nRP drive • [Объезд светофора].{left 35}
:?'n:.встречка::/jail  35 nRP drive • [Езда по встречной полосе].{left 43}
:?'n:.дым::/jail  35 nRP drive • [Дым из-под капота].{left 36}
:?'n:.таран::/jail  35 nRP drive • [Таран].{left 24}
:?'n:.мг::/mute  5 Meta Gaming.{left 15}
:?'n:.транслит::/mute  10 Транслит в IC чат.{left 22}
:?'n:.капс::/mute  10 CapsLock.{left 13}
:?'n:.флуд::/mute  15 Flood.{left 10}
:?'n:.мат::/mute  15 Матерное слово.{left 19}
:?'n:.завуалмат::/mute  20 Завуалированное матерное слово.{left 35}
:?'n:.оскорбление::/mute  35 Оскорбление.{left 16}
:?'n:.издевательство::/mute  65 Издевательство.{left 19}
:?'n:.неадекват::/mute  100 Неадекватные высказывания.{left 31}
:?'n:.упомрод::/ban  14 Упоминание родных{left 21}
:?'n:.гмат::/mute  25 Мат в ГЧ.{left 13}
:?'n:.госкорбление::/mute  45 Оскорбление в ГЧ.{left 21}
:?'n:.гиздевательство::/mute  65 Издевательство в ГЧ.{left 24}
:?'n:.гнеадекват::/mute  100 Неадекватные высказывания в ГЧ.{left 36}
:?'n:.гпровокация::/mute  25 Провокация в ГЧ.{left 20}
:?'n:.гмузыка::/mute  15 Музыка в ГЧ.{left 16}
:?'n:.гголос::/mute  30 Изменение голоса.{left 21}
:?'n:.дмубс::/jail  100 Death Match • [У Битвы Семей].{left 35}
:?'n:.мвднабс::/jail  105 МВД • [На Битвы Семей].{left 28}
:?'n:.бсбаг::/warn  Оружие с помощью бага{left 22}
:?'n:.бсфлудудостоверением::/jail  55 Flood • [/showud].{left 22}
:?'n:.бсфлудлицензиями::/kick  Flood • [/lic].{left 16}
:?'n:.ботрыбалка::/ban  3 Бот • [Рыбалка]{left 18}
:?'n:.боттир::/ban  3 Бот • [Тир]{left 14}
:?'n:.ботспортзал::/ban  3 Бот • [Спортзал]{left 19}
:?'n:.ботафк::/ban  7 Бот • [Анти-AFK]{left 19}
:?'n:.ппв::/iban  Продан/Передан/Взломан{left 23}
:?'n:.продажавирт::/iban  Покупка/Продажа • [Вирт]{left 23}
:?'n:.чит::/ban  31 cheats{left 10}
:?'n:.содействиесчитом::/ban  31 Содействие с читером{left 24}
:?'n:.репортоффтоп::/repmute  15 offtop.{left 11}
:?'n:.репортфлуд::/repmute  10 Flood in /report.{left 21}
:?'n:.репортмат::/repmute  35 Мат в /report.{left 18}
:?'n:.репортнеадекват::/kick  Неадекват в /report.{left 21}
:?'n:.оскадм::/mute  175 Оскорбление адм.{left 21}
:?'n:.оскпроекта::/mute  65 Оскорбление проекта.{left 24}


:?:.menu::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /menu. Приятной игры{left 35}
Return

:?:.gps::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /gps. Приятной игры{left 34}
Return

:?:.stats::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /stats. Приятной игры{left 36}
Return

:?:.help::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /help. Приятной игры{left 35}
Return

:?:.referal::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /referal. Приятной игры{left 38}
Return

:?:.setspawn::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /setspawn. Приятной игры{left 39}
Return

:?:.rem::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /rem. Приятной игры{left 34}
Return

:?:.showpass::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /showpass. Приятной игры{left 39}
Return

:?:.showymk::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /showymk. Приятной игры{left 38}
Return

:?:.lic::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /lic. Приятной игры{left 34}
Return

:?:.militarytime::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /militarytime. Приятной игры{left 43}
Return

:?:.wbook::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /wbook. Приятной игры{left 36}
Return

:?:.contacts::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /contacts. Приятной игры{left 39}
Return

:?:.call::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /call. Приятной игры{left 35}
Return

:?:.sms::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /sms. Приятной игры{left 34}
Return

:?:.pnumber::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /pnumber. Приятной игры{left 38}
Return

:?:.report::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /report. Приятной игры{left 37}
Return

:?:.rbook::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /rbook. Приятной игры{left 36}
Return

:?:.eject::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /eject. Приятной игры{left 36}
Return

:?:.sellvehicle::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /sellvehicle. Приятной игры{left 42}
Return

:?:.acceptvehicle::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptvehicle. Приятной игры{left 44}
Return

:?:.changenumber::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /changenumber. Приятной игры{left 43}
Return

:?:.lock::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, L , /lock. Приятной игры{left 39}
Return

:?:.carpass::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /carpass. Приятной игры{left 38}
Return

:?:.givecar::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /givecar. Приятной игры{left 38}
Return

:?:.fill::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fill. Приятной игры{left 35}
Return

:?:.buyfuel::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /buyfuel. Приятной игры{left 38}
Return

:?:.cfill::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cfill. Приятной игры{left 36}
Return

:?:.smoke::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /smoke. Приятной игры{left 36}
Return

:?:.sellsigs::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /sellsigs. Приятной игры{left 39}
Return

:?:.acceptlive::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptlive. Приятной игры{left 41}
Return

:?:.liveout::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /liveout. Приятной игры{left 38}
Return

:?:.beginink::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /beginink. Приятной игры{left 39}
Return

:?:.endink::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /endink. Приятной игры{left 37}
Return

:?:.iskill::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /iskill. Приятной игры{left 37}
Return

:?:.jtime::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /jtime. Приятной игры{left 38}
Return

:?:.acceptunjail::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptunjail. Приятной игры{left 43}
Return

:?:.gstyle::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /gstyle. Приятной игры{left 37}
Return

:?:.style::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /style. Приятной игры{left 36}
Return

:?:.home::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /home. Приятной игры{left 35}
Return

:?:.fm::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fm. Приятной игры{left 33}
Return

:?:.music::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /music. Приятной игры{left 38}
Return

:?:.disablenicks::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /disablenicks. Приятной игры{left 43}
Return

:?:.id::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /id. Приятной игры{left 33}
Return

:?:.painlist::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /painlist. Приятной игры{left 39}
Return

:?:.racelist::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /racelist. Приятной игры{left 39}
Return

:?:.gotomp::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /gotomp. Приятной игры{left 37}
Return

:?:.ad::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ad , /vipad. Приятной игры{left 42}
Return

:?:.gmenu::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /gmenu. Приятной игры{left 38}
Return

:?:.acceptgarage::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptgarage. Приятной игры{left 43}
Return

:?:.cancel::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cancel. Приятной игры{left 37}
Return

:?:.selleat::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /selleat. Приятной игры{left 38}
Return

:?:.accepteat::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /accepteat. Приятной игры{left 40}
Return

:?:.acceptflat::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptflat. Приятной игры{left 41}
Return

:?:.safe::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /safe. Приятной игры{left 35}
Return

:?:.mask::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /mask. Приятной игры{left 35}
Return

:?:.selfie::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /selfie. Приятной игры{left 37}
Return

:?:.bomb::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /bomb. Приятной игры{left 35}
Return

:?:.breakdoor::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /breakdoor. Приятной игры{left 40}
Return

:?:.priz::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /priz. Приятной игры{left 35}
Return

:?:.fight::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fight. Приятной игры{left 38}
Return

:?:.acceptfight::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptfight. Приятной игры{left 42}
Return

:?:.cancelfight::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cancelfight. Приятной игры{left 42}
Return

:?:.startfight::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /startfight. Приятной игры{left 41}
Return

:?:.weapons::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /weapons. Приятной игры{left 38}
Return

:?:.eat::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /eat. Приятной игры{left 34}
Return

:?:.acceptdate::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptdate. Приятной игры{left 41}
Return

:?:.cdrive::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cdrive. Приятной игры{left 37}
Return

:?:.stime::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /stime. Приятной игры{left 36}
Return

:?:.aftermake::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /aftermake. Приятной игры{left 40}
Return

:?:.cclear::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cclear. Приятной игры{left 37}
Return

:?:.pagesize::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /pagesize. Приятной игры{left 39}
Return

:?:.fontsize::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fontsize. Приятной игры{left 39}
Return

:?:.vacancy::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /vacancy. Приятной игры{left 38}
Return

:?:.startvacancy::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /startvacancy. Приятной игры{left 43}
Return

:?:.me::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /me. Приятной игры{left 43}
Return

:?:.do::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /do. Приятной игры{left 33}
Return

:?:.try::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /try. Приятной игры{left 34}
Return

:?:.mes::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /mes. Приятной игры{left 34}
Return

:?:.todo::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /todo. Приятной игры{left 35}
Return

:?:.ame::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ame. Приятной игры{left 34}
Return

:?:.freespin::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /freespin. Приятной игры{left 39}
Return

:?:.accs::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /accs. Приятной игры{left 35}
Return

:?:.s::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /s. Приятной игры{left 32}
Return

:?:.p::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /p. Приятной игры{left 32}
Return

:?:.h::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /h. Приятной игры{left 32}
Return

:?:.fare::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fare. Приятной игры{left 35}
Return

:?:.r::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /r. Приятной игры{left 32}
Return

:?:.rb::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /rb. Приятной игры{left 33}
Return

:?:.gov::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /gov. Приятной игры{left 34}
Return

:?:.changeskin::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /changeskin. Приятной игры{left 41}
Return

:?:.unjail::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /unjail. Приятной игры{left 37}
Return

:?:.slic::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /slic. Приятной игры{left 35}
Return

:?:.offmembers::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /offmembers. Приятной игры{left 41}
Return

:?:.giverank::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /giverank. Приятной игры{left 39}
Return

:?:.uninvite::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /uninvite. Приятной игры{left 39}
Return

:?:.invite::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /invite. Приятной игры{left 37}
Return

:?:.members::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /members. Приятной игры{left 38}
Return

:?:.warehouse::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /warehouse. Приятной игры{left 40}
Return

:?:.open::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /open. Приятной игры{left 35}
Return

:?:.vig::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /vig. Приятной игры{left 34}
Return

:?:.unvig::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /unvig. Приятной игры{left 36}
Return

:?:.acceptcop::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptcop. Приятной игры{left 40}
Return

:?:.ccancelmvd::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ccancelmvd. Приятной игры{left 41}
Return

:?:.cuff::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cuff. Приятной игры{left 35}
Return

:?:.post::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /post. Приятной игры{left 35}
Return

:?:.copstats::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /copstats. Приятной игры{left 39}
Return

:?:.drag::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /drag. Приятной игры{left 35}
Return

:?:.arrest::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /arrest. Приятной игры{left 37}
Return

:?:.su::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /su. Приятной игры{left 33}
Return

:?:.clearsu::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /clearsu. Приятной игры{left 38}
Return

:?:.m::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /m. Приятной игры{left 32}
Return

:?:.take::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /take. Приятной игры{left 35}
Return

:?:.rod::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /rod. Приятной игры{left 34}
Return

:?:.frisk::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /frisk. Приятной игры{left 36}
Return

:?:.funinvite::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /funinvite. Приятной игры{left 40}
Return

:?:.fgiverank::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fgiverank. Приятной игры{left 40}
Return

:?:.patrul::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /patrul. Приятной игры{left 37}
Return

:?:.fsetskin::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fsetskin. Приятной игры{left 39}
Return

:?:.tipster::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /tipster. Приятной игры{left 38}
Return

:?:.acophouse::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acophouse. Приятной игры{left 40}
Return

:?:.cacophouse::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cacophouse. Приятной игры{left 41}
Return

:?:.acopbank::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acopbank. Приятной игры{left 39}
Return

:?:.cacopbank::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cacopbank. Приятной игры{left 40}
Return

:?:.breaklist::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /breaklist. Приятной игры{left 40}
Return

:?:.survoff::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /survoff. Приятной игры{left 38}
Return

:?:.cput::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cput. Приятной игры{left 35}
Return

:?:.pt::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /pt. Приятной игры{left 33}
Return

:?:.checktrunk::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /checktrunk. Приятной игры{left 41}
Return

:?:.trunk::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /trunk. Приятной игры{left 36}
Return

:?:.bh::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /bh. Приятной игры{left 33}
Return

:?:.opencar::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /opencar. Приятной игры{left 38}
Return

:?:.bridgeoff::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /bridgeoff. Приятной игры{left 40}
Return

:?:.ticket::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ticket. Приятной игры{left 37}
Return

:?:.bridgeup::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /bridgeup. Приятной игры{left 39}
Return

:?:.blockpost::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /blockpost. Приятной игры{left 40}
Return

:?:.removeblockpost::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /removeblockpost. Приятной игры{left 46}
Return

:?:.ram::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ram. Приятной игры{left 34}
Return

:?:.jailcamera::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /jailcamera. Приятной игры{left 41}
Return

:?:.openjail::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /openjail. Приятной игры{left 39}
Return

:?:.prisonpass::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /prisonpass. Приятной игры{left 41}
Return

:?:.jc::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /jc. Приятной игры{left 33}
Return

:?:.prisonuninvite::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /prisonuninvite. Приятной игры{left 45}
Return

:?:.prisondate::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /prisondate. Приятной игры{left 41}
Return

:?:.showud::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /showud. Приятной игры{left 37}
Return

:?:.givekeys::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /givekeys. Приятной игры{left 39}
Return

:?:.loadheli::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /loadheli. Приятной игры{left 39}
Return

:?:.aunloading::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /aunloadingheli. Приятной игры{left 45}
Return

:?:.gotomp::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /gotomp. Приятной игры{left 37}
Return

:?:.sellkey::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /sellkey. Приятной игры{left 38}
Return

:?:.keyinfo::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /keyinfo. Приятной игры{left 38}
Return

:?:.aload::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /aload. Приятной игры{left 36}
Return

:?:.startconveying::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /startconveying. Приятной игры{left 45}
Return

:?:.cargoinfo::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cargoinfo. Приятной игры{left 40}
Return

:?:.acceptmedic::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptmedic. Приятной игры{left 42}
Return

:?:.ccancelcgb::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ccancelcgb. Приятной игры{left 41}
Return

:?:.heal::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /heal. Приятной игры{left 35}
Return

:?:.accheal::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /accheal. Приятной игры{left 38}
Return

:?:.healme::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /healme. Приятной игры{left 37}
Return

:?:.djoblist::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /djoblist. Приятной игры{left 39}
Return

:?:.givenewskey::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /givenewskey. Приятной игры{left 42}
Return

:?:.edit::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /edit. Приятной игры{left 35}
Return

:?:.sjoblist::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /sjoblist. Приятной игры{left 39}
Return

:?:.invitebc::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /invitebc. Приятной игры{left 39}
Return

:?:.newsrating::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /newsrating. Приятной игры{left 41}
Return

:?:.accheck::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /accheck. Приятной игры{left 38}
Return

:?:.check::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /check. Приятной игры{left 36}
Return

:?:.fload::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fload. Приятной игры{left 36}
Return

:?:.cancelfload::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cancelfload. Приятной игры{left 42}
Return

:?:.tload::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /tload. Приятной игры{left 36}
Return

:?:.accepttaxi::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /accepttaxi. Приятной игры{left 41}
Return

:?:.beginwork::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /beginwork. Приятной игры{left 40}
Return

:?:.beginwash::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /beginwash. Приятной игры{left 40}
Return

:?:.acceptmechanic::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptmechanic. Приятной игры{left 45}
Return

:?:.mcontract::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /mcontract. Приятной игры{left 40}
Return

:?:.mfill::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /mfill. Приятной игры{left 36}
Return

:?:.mrepair::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /mrepair. Приятной игры{left 38}
Return

:?:.accept::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /accept. Приятной игры{left 37}
Return

:?:.acref::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acref. Приятной игры{left 36}
Return

:?:.tunload::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /tunload. Приятной игры{left 38}
Return

:?:.tskill::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /tskill. Приятной игры{left 37}
Return

:?:.f::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /f. Приятной игры{left 32}
Return

:?:.fb::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fb. Приятной игры{left 33}
Return

:?:.findtruck::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /findtruck. Приятной игры{left 40}
Return

:?:.stoprent::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /stoprent. Приятной игры{left 55}
Return

:?:.bizlist::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /bizlist. Приятной игры{left 38}
Return

:?:.bizstats::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /bizstats. Приятной игры{left 39}
Return

:?:.getbizstats::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /getbizstats. Приятной игры{left 42}
Return

:?:.cbusiness::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cbusiness. Приятной игры{left 40}
Return

:?:.bmenu::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /bmenu. Приятной игры{left 36}
Return

:?:.entb::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /entb. Приятной игры{left 35}
Return

:?:.sellbiz::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /sellbiz. Приятной игры{left 38}
Return

:?:.buybiz::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /buybiz. Приятной игры{left 37}
Return

:?:.buyfarm::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /buyfarm. Приятной игры{left 38}
Return

:?:.changefarm::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /changefarm. Приятной игры{left 41}
Return

:?:.ffixcar::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ffixcar. Приятной игры{left 38}
Return

:?:.fpanel::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fpanel. Приятной игры{left 37}
Return

:?:.funload::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /funload. Приятной игры{left 38}
Return

:?:.prodmenu::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /prodmenu. Приятной игры{left 39}
Return

:?:.fish::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fish. Приятной игры{left 35}
Return

:?:.findfish::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /findfish. Приятной игры{left 39}
Return

:?:.propose::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /propose. Приятной игры{left 38}
Return

:?:.acpropose::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acpropose. Приятной игры{left 40}
Return

:?:.breakcar::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /breakcar. Приятной игры{left 39}
Return

:?:.breakskill::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /breakskill. Приятной игры{left 41}
Return

:?:.robhouse::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /robhouse. Приятной игры{left 39}
Return

:?:.robskill::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /robskill. Приятной игры{left 39}
Return

:?:.enth::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /enth. Приятной игры{left 35}
Return

:?:.accepthouse::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /accepthouse. Приятной игры{left 42}
Return

:?:.bgang::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /bgang. Приятной игры{left 36}
Return

:?:.cstats::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /cstats. Приятной игры{left 37}
Return

:?:.statsneed::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /statsneed. Приятной игры{left 40}
Return

:?:.buykey::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /buykey. Приятной игры{left 37}
Return

:?:.link::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /link. Приятной игры{left 35}
Return

:?:.gag::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /gag. Приятной игры{left 34}
Return

:?:.gbalans::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /gbalans. Приятной игры{left 38}
Return

:?:.sellmaterials::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /sellmaterials. Приятной игры{left 44}
Return

:?:.respcars::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /respcars. Приятной игры{left 39}
Return

:?:.buydrugs::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /buydrugs. Приятной игры{left 39}
Return

:?:.aunloading::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /aunloading. Приятной игры{left 41}
Return

:?:.capture::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /capture. Приятной игры{left 38}
Return

:?:.acceptdrugs::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptdrugs. Приятной игры{left 42}
Return

:?:.ginfo::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ginfo. Приятной игры{left 36}
Return

:?:.plantseeds::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /plantseeds. Приятной игры{left 41}
Return

:?:.collect::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /collect. Приятной игры{left 38}
Return

:?:.collect::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /collect. Приятной игры{left 38}
Return

:?:.robkeys::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /robkeys. Приятной игры{left 38}
Return

:?:.usedrugs::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /usedrugs. Приятной игры{left 39}
Return

:?:.materials::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /materials. Приятной игры{left 40}
Return

:?:.bunload::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /bunload. Приятной игры{left 38}
Return

:?:.drugs::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /drugs. Приятной игры{left 36}
Return

:?:.dunload::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /dunload. Приятной игры{left 38}
Return

:?:.robdynamite::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /robdynamite. Приятной игры{left 42}
Return

:?:.sellzone::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /sellzone. Приятной игры{left 39}
Return

:?:.acceptzone::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptzone. Приятной игры{left 41}
Return

:?:.acceptbank::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptbank. Приятной игры{left 41}
Return

:?:.dynamite::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /dynamite. Приятной игры{left 39}
Return

:?:.family::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /family. Приятной игры{left 37}
Return

:?:.fc::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /fc , ! Приятной игры{left 36}
Return

:?:.ffinvite::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ffinvite. Приятной игры{left 39}
Return

:?:.attackfamily::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /attackfamily. Приятной игры{left 43}
Return

:?:.acceptwar::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptwar. Приятной игры{left 40}
Return

:?:.acceptfamily::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /acceptfamily. Приятной игры{left 43}
Return

:?:.ffuninvite::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ffuninvite. Приятной игры{left 41}
Return

:?:.ffgiverank::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /ffgiverank. Приятной игры{left 41}
Return

:?:.showpass::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /showpass. Приятной игры{left 39}
Return

:?:.showymk::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /showymk. Приятной игры{left 38}
Return

:?:.lic::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /lic. Приятной игры{left 34}
Return

:?:.showmc::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /showmc. Приятной игры{left 37}
Return

:?:.showud::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /showud. Приятной игры{left 37}
Return

:?:.wbook::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /wbook. Приятной игры{left 36}
Return

:?:.selldrugs::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /selldrugs. Приятной игры{left 40}
Return

:?:.mutetime::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /mutetime. Приятной игры{left 39}
Return

:?:.healme::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /healme. Приятной игры{left 37}
Return

:?:.hudscalefix::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /hudscalefix. Приятной игры{left 42}
Return

:?:.numbers::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /numbers. Приятной игры{left 38}
Return

:?:.changehouse::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /changehouse. Приятной игры{left 42}
Return

:?:.headmove::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /headmove. Приятной игры{left 39}
Return

:?:.divorce::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /divorce. Приятной игры{left 38}
Return

:?:.drop::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pm  Здравствуйте, /drop. Приятной игры{left 35}
Return


:?'n:mq::/b Жить надоело?)
:?'n:mq::/b Жить надоело?)
:?'n:ьй::/b Жить надоело?)
:?'n:мк::/b Жить надоело?)
:?'n:мкью::/b Жить надоело?)
:?'n:мкю::/b Жить надоело?)
:?'n:ахуеть::{Space}
:?'n:охуеть::{Space}
:?'n:ахуеть!::{Space}
:?'n:охуеть!::{Space}
:?'n:ахуел?::{Space}
:?'n:ахуел::{Space}
:?'n:ахуел!::{Space}
:?'n:ахуели::{Space}
:?'n:ахуели?::{Space}
:?'n:ахуели!::{Space}
:?'n:пидор::{Space}
:?'n:пидр::{Space}
:?'n:пидар::{Space}
:?'n:пидорас::{Space}
:?'n:пидарас::{Space}
:?'n:пидры::{Space}
:?'n:пидоры::{Space}
:?'n:пидарасы::{Space}
:?'n:пидорасы::{Space}
:?'n:блять::{Space}
:?'n:блять!::{Space}
:?'n:блять?::{Space}
:?'n:блядь::{Space}
:?'n:блядь!::{Space}
:?'n:блядь?::{Space}
:?'n:бля::{Space}
:?'n:бля!::{Space}
:?'n:бляяя::{Space}
:?'n:бляя::{Space}
:?'n:блят::{Space}
:?'n:бл::{Space}
:?'n:ля::{Space}
:?'n:бля буду!::{Space}
:?'n:бля буду::{Space}
:?'n:ебать::{Space}
:?'n:ебать!::{Space}
:?'n:ебать?::{Space}
:?'n:еба::{Space}
:?'n:ебааа::{Space}
:?'n:ебаа::{Space}
:?'n:ема::{Space}
:?'n:емаа::{Space}
:?'n:емааа::{Space}
:?'n:ебануться::{Space}
:?'n:ебанутся::{Space}
:?'n:ебануца::{Space}
:?'n:нихуя::{Space}
:?'n:нихуя себе::{Space}
:?'n:нихера::{Space}
:?'n:нихера себе::{Space}
:?'n:дрочить::{Space}
:?'n:драчить::{Space}
:?'n:дрочит::{Space}
:?'n:драчит::{Space}
:?'n:ни хуя себе::{Space}
:?'n:ни хуя::{Space}
:?'n:иди нахуй::{Space}
:?'n:нахуй пошел::{Space}
:?'n:нахуй пошёл::{Space}
:?'n:нахуй иди::{Space}
:?'n:нахуи::{Space}
:?'n:нахуя::{Space}
:?'n:нахуй::{Space}
:?'n:нахуй?::{Space}
:?'n:сука::{Space}
:?'n:суки::{Space}
:?'n:сука!::{Space}
:?'n:сучка::{Space}
:?'n:сучка!::{Space}
:?'n:сучки::{Space}
:?'n:шлюха::{Space}
:?'n:шлюшка::{Space}
:?'n:шлюшечка::{Space}
:?'n:шлюха!::{Space}
:?'n:заебал::{Space}
:?'n:заебали::{Space}
:?'n:заебете::{Space}
:?'n:заебёте::{Space}
:?'n:заебёшь::{Space}
:?'n:заебала::{Space}
:?'n:заебёт::{Space}
:?'n:заебало::{Space}
:?'n:выебать::{Space}
:?'n:выебал::{Space}
:?'n:выебали::{Space}
:?'n:выебан::{Space}
:?'n:ебанутый::{Space}
:?'n:ебанутый?::{Space}
:?'n:ебанулся::{Space}
:?'n:ебанулся?::{Space}
:?'n:ебанулса::{Space}
:?'n:ебанулса?::{Space}
:?'n:ебанутые::{Space}
:?'n:ебан::{Space}
:?'n:ебанутыи::{Space}
:?'n:ебанут::{Space}
:?'n:ёбнутый::{Space}
:?'n:ёбнутый?::{Space}
:?'n:ебнутый::{Space}
:?'n:ебнутый?::{Space}
:?'n:йобнутый::{Space}
:?'n:йопнутый::{Space}
:?'n:ебанулись::{Space}
:?'n:ебнулись::{Space}
:?'n:ёбнулись::{Space}
:?'n:ебанулись?::{Space}
:?'n:ёбнулись?::{Space}
:?'n:ебливая::{Space}
:?'n:ебливый::{Space}
:?'n:пиздабол::{Space}
:?'n:пиздаболы::{Space}
:?'n:пиздабол!::{Space}
:?'n:поздаболы!::{Space}
:?'n:хуйня::{Space}
:?'n:хуета::{Space}
:?'n:хуйнёй::{Space}
:?'n:порно::{Space}
:?'n:порнуха::{Space}
:?'n:порнушка::{Space}
:?'n:порнуху::{Space}
:?'n:секс::{Space}
:?'n:пиздец::{Space}
:?'n:пизжец::{Space}
:?'n:пипец::{Space}
:?'n:хуйло::{Space}
:?'n:хуйла::{Space}
:?'n:хуила::{Space}
:?'n:ебучий::{Space}
:?'n:ебучая::{Space}
:?'n:распиздяй::{Space}
:?'n:ебало офф::{Space}
:?'n:ебало::{Space}
:?'n:пизда::{Space}
:?'n:хз::{Space}
:?'n:я в ахуе::{Space}
:?'n:я в ахуях::{Space}
:?'n:проебал::{Space}
:?'n:проебали::{Space}
:?'n:ебал::{Space}
:?'n:пидрила::{Space}
:?'n:гей::{Space}
:?'n:гомик::{Space}
:?'n:геюга::{Space}
:?'n:Бляха муха::{Space}
:?'n:Бляха-муха::{Space}
:?'n:Бляха::{Space}
:?'n:хуй::{Space}
:?'n:пошли нахуй::{Space}
:?'n:идите нахуй::{Space}
:?'n:ебал я твой рот::{Space}
:?'n:я твой рот ебал::{Space}
:?'n:твой рот ебал::{Space}
:?'n:рот твой ебал::{Space}
:?'n:рот твой::{Space}
:?'n:рот я твой ебал::{Space}
