#Persistent
o :="абвгдеёжзийклмнопрстуфхцчшщъыьэюя"
k :="кдяапештхбэчйщоьзюыъмжлгнрисуфвцё"
ot := []
ft := []
rt := []
dt := []
loop, parse, o
    ot.push(A_LoopField)
loop, parse, k
    ft.Push(A_LoopField)
for key, i in ot
    rt[i]:=ft[A_Index]
for key, i in ot
    dt[ft[A_Index]]:=i
gui, add, edit, w500 vresult,
gui, add, Button, gcrypt, Зашифровать
gui, add, Button, gdecrypt, Дешифровать
gui, show
Return


crypt:
gui, Submit, nohide
word:=[]
loop, parse, result
    word.Push(rt[A_LoopField])
text:=""
For i, t in word
    text:=text t
GuiControl,, result, %text%
Return

decrypt:
gui, Submit, nohide
word:=[]
loop, parse, result
    word.Push(dt[A_LoopField])
text:=""
For i, t in word
    text:=text t
GuiControl,, result, %text%
Return
