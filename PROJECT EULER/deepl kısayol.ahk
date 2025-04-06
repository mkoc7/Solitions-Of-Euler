#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Seçim sonrası DeepL çevirisi için
~LButton Up::
    ; Eğer mouse tıklaması metin seçimi için değilse, hiçbir şey yapma
    if !GetKeyState("LButton", "P") ; Mouse butonu basılı değilse
    {
        ; Panoyu kontrol et - eğer metin seçiliyse pano içeriği olacaktır
        ClipSaved := ClipboardAll
        Clipboard := "" ; Panoyu temizle
        Send, ^c ; Kopyalama denemesi
        ClipWait, 0.1, 1 ; Kısa süre bekle
        
        ; Eğer panoda veri varsa, metin seçilmiş demektir
        if (Clipboard != "")
        {
            Send, !{LWin}c ; DeepL kısayolu (Alt+Win+C)
        }
        
        ; Orijinal pano içeriğini geri yükle
        Clipboard := ClipSaved
        ClipSaved := ""
    }
Return

; Scripti kapatmak için: Ctrl+Alt+D
^!d::
    MsgBox, 4, Script Kontrolü, Scripti kapatmak istiyor musunuz?
    IfMsgBox Yes
        ExitApp
Return