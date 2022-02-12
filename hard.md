
1. caps_lock大寫鎖定啟用後，會一直擋住Vim的相關命令執行，讓Vim的操作變得非常不順。
2. auto-hotkey下載問題: 路徑不對(下載版本/來源錯誤) Ex. Windows Store/deprecated版本下載
3. 下載相似名稱的Extension: AutoHotkey Plus Plus -> AutoHotKey++
4. window鍵放開後會觸發windows的menu，用powertoys跟windows內建的editor policy group相關設定也無用。
(解法: 僅使用RAlt的組合鍵觸發win的組合鍵，不直接一對一remap鍵盤上的window鍵)

Alt & j/k 會觸發VSCode內建的快捷鍵。

5. 使用singleInstance防止錯誤，Ctrl+Esc逃離Autohotkey模式

6. 一開始先安裝AutoHotkey的套件, 

7. im-select

不用在insert模式切換輸入法後，在擋住普通模式的命令。

Windows:

Refer to the im-select guide on how to discover your input method key. Generally, if your keyboard layout is en_US the input method key is 1033 (the locale ID of en_US). You can also find your locale ID from this page, where the LCID Decimal column is the locale ID.

```
which im-select

 C:\Program Files\ImSelect\im-select.exe
```

 TROUBLE SHOOTING:
 C:\\Program' is not recognized
 環境變數跟系統變數設定無效

解法 -> C:\ImSelect\im-select.exe

Pro Tips: 切回去還會是繁體

可以這樣設定，之後切回去就會繼續是英文。

```
C:\\ImSelect\\im-select.exe 1033 {im}
```

Q: 這樣太Hack了，在公司裡這樣寫會被念很難懂

Ans: 能夠解決問題的唯一方法，就是最好的方法了，何況這是自己的設定檔，沒有別人看不懂的問題，不用顧慮此成本。
常用的設定跟配置用起來，哪個好不好，如人飲水，冷暖自知。多方嘗試後，請在親身體驗後抉擇哪個是對自己好的方法。

筆者的話，當然就是推薦你們的這套。

Q: Pair Programming或當有需要讓同事用自己電腦時怎麼辦
A: 阿阿，用快捷鍵或在GUI把設定關掉不就好了嗎?切換設定真的太簡單了，奇怪的是，筆者很常聽到一些人顧慮這點。

對於自己知識範圍以外的東西，能有些顧慮是好的。但有些時候，人會習慣性的排斥自己沒有嘗試過或不習慣的方法，所以否定的理由跟想法才這麼強烈。

<!-- 
這樣說好吧，筆者現在分享的一些觀念跟技巧，現有的學校教育跟知識體系沒有獲取的途徑，除非碰巧遇到在此深造的老師或朋友，不然都是需要自學並花時間深造才得以獲取這些經驗的。 -->

Q. 都已經透過在相關領域的文章發表上拿到一個名次了，還需要花費這麼多力氣說服別人嗎?

A. 阿阿，跟名次或什麼人講這些題材無關。筆者自己在私下除非幾個熟人，沒有特別提到自己在這方面有什麼經驗或獎項，也沒有跟熟的人強調自己專業如何如何的習慣。所以對方在跟筆者談論想法時，基本上是很自然的，依於他們自己本來的面貌，陳述他們對這些意見的看法與觀點。

Q. 可是我看上面提了不少強調本書技術的部份阿(笑? 
A. 就事情的討論是需要的，這算是在外面的場合包裝跟社交面具吧。為什麼這樣呢?不少人是先看話誰說的，再決定是否要接受。這些場合以外，應該可以把面具拿下來了吧!。

Q. 讓別人對自己有不一樣的看法，不好嗎?不是生活中會方便許多。

A. 是因為上面這樣做的結果，最終是對自己的方向跟走向最好的，所以才選擇這種方式。

阿阿，你知道職場上所謂的良性競爭可以被主管或老闆怎麼樣造成的嗎

刻意稱讚某一個人
刻意忽視某個人
用這種方式產生忌妒之類或不服氣的想法
藉此讓員工多做點事
還不一定要多付薪水

此類情境繁多，進一步的就是大家耳熟能詳的二桃殺三士的典故了。
阿阿，這樣競爭，為的是誰? 

為什麼會花這麼多心神?因為，比較，在乎別人看法。

直接說，我就是這樣，人家講什麼，不為所動，
不見得比較不好吧!

可能你沒法用自己的影響力控制或制約別人
要求別人幫自己做事情吧

但至少，別人在某些對自己重要的時刻，沒有任何偏離你決定的可能。


