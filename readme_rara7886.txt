
　make_rooted_systemオリジナルとは、若干異なります。 Moded by rara7886
以下、仕様について

    0.make_rooted_system.shを実行する前に、zlib1g-dev,7z,java入ってない人はインストールしてください。

　　1.systemにSuperSUをインストールしているので、
	焼く前にdataにインストールしている場合は、アンインストール後odin　imageを焼く。
	GNT3eXTもインストールしている場合は、アンインストールしてください。
	一応wipe推奨（○○が使えなくなった起動しない等の問題を防ぐため）

　　2.起動時Scanを回避し、
	常時root化
	Felica有効
	SystemStatusがOfficial
	になるので、起動時にroot権限を必要とするアプリが使えます。

　　　　※スクリプトで自動でやってますので　GNT3eXT　は必要ないです。

	※改変boot.img,recovery.imgを焼いた場合は、カウントアップし、Felicaが無効になります。
	保障が必要な方は、注意してください。

　　3.オリジナルのmake_rooted_systemではSupeSUが不安定な時がありましたが、SysScope.apkの改変により安定してます。

　　4. mountの罠について
　　　　/system/bin/mountをスクリプト化し、busyboxとtoolboxで使い分けるように対策

    5. init.dスクリプトに対応。

　　6. SuperSUの更新について
	初回起動時、SuperSUからsuバイナリの更新を通常OKで更新してください。
　　　	suバイナリ更新後は再起動が必要になります。
	SuperSUをアップデートした場合も同様です。

    7. SuperSu pro対応
　

