Get-Process -Name WinShot
Stop-Process -Name WinShot

## ここから
if ( (Get-process -name WinShot) -eq $true ) { Stop-process -name WinShot }

if ( (Get-process -name WinShot) -ne $null) { Stop-process -name WinShot }

$wspath="C:\prog\winshot"   ## wihshotの定義配置場所
$date=Get-Date -Format "yyMMdd_HHmmss"  ## 年月日時分
Copy-Item $wspath\WinShot.ini $wspath\winshot_$date.ini

SaveDirectory=C:\Users\toy\Desktop\test\winshot\


Rename-Item -Path C:\prog\winshot\WinShot.ini winshot_$date.ini

if ( (Get-process -name WinShot) -eq $null) { Start-Process -FilePath C:\prog\WinShot\WinShot.exe ;Get-Process -Name WinShot }


#####


Get-Date -Format "yyMMdd_HHmmss.f"  ## 年月日時分秒と0.1秒


get-date
Compare-Object -CaseSensitive -IncludeEqual

### compare-object の使い方 差分のみをリダイレクトで出力する。

cd C:\users\toy\Desktop\test
Compare-Object (Get-Content .\test1.txt) (Get-Content .\test2.txt)  | Out-File -Encoding ascii .\keka_m1.txt  #ok


## cmd.ps1の現在の文字コード確認、変更 (コート番号つける）
## 932 sjis , 65001 utf8
## chcp

## set-contentで、unicodeのファイルをsjisして別名保存する。
## unicodeのファイルをfindstrなどは処理できないため。
## Get-Content .\keka_u.txt | Set-Content .\keka.txt

## 一度typeで読ませてpipeでつなぐとfindstrで処理できる。
## しかしリダイレクトで出力したファイルはuniodeのまま
## type .\keka.txt | findstr /i /c:"in"  > .\keka2.txt



