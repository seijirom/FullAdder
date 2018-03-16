qflowの簡単なテストデータ（フルアダー）です
fa.vは、秋田先生に提供いただきました。

実行した内容は、workディレクトリで、
1.source, synthesis, layoutというサブディレクトリを作り、fa.vをsourceの下に置く
2.workで、qflow synthesize place route fa を実行
3.layoutで、magic
    lef read /usr/local/share/qflow/tech/osu035/osu035_stdcells.lef
    def read fa.def
4.magicで領域を選択しexpandでレイアウト図が表示されます。

つぎに、以下の方法でgdsに変換しました。
1. layoutディレクトリで、magicを起動して、以下のスタセルのセルがすべて入った
レイアウトを読み込みます。
gds read osu035_stdcells.gds2
2. 次に、
writeall force
すると、ayoutディレクトリに AND2X1.mag とか、スタセルのgdsがmagicフォーマット
で作られます。
3. 一応magicを終了して、もういちどmagicを起動し、
.def read fa.def
するとlefじゃない、gdsのスタセルを使ったレイアウトを表示できます。
4. gdsファイルを作るのは、ふつうにメニュから、File->WriteGDS　です。

gladeに読み込むときは、File->NewLibで新しいライブラリを作ります。そのとき、
ひびきのフェニテックのテクノロジーファイルをつかいました。次に、File-> 
Import->Import GDS2...
で、layout/fa.gdsを読み込みました。
