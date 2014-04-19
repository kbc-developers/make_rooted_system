
  *** 純正ROM su入り factoryfs.img(system.img.ext4)生成スクリプト ***
  ほむらModded  and ma34s modded

  1. これはなに？

    純正ROMのfactoryfs.img(system.img.ext4)にsuなんかを入れて再生成するツールです。
    また海外ROMのfactoryfs.img(system.img.ext4)のリサイズも可能です。

  2. 必要なものは？
    
    ・linux環境 (Ubuntu12.04 32bit/64bitで動作確認しています、zlib1g-devに依存しています)
    ・純正ROM(バージョン問わず)のfactoryfs.img、SE02Eはcache.imgも必要です 
     (SoCがmsmの端末はsystem.img.ext4)

    
  3. どうやって使うの？

    readme.txtがあるディレクトリに純正ROMのfactoryfs.img(system.img.ext4)に置いてください。
    以下のように配置すればOK

      (dir)
       ├ bin/
       ├ config/
       ├ img/
       │  └XXXX (SC02Eなど機種名)
       │    ├(cache.img)  ※追加するもの
       │    └factoryfs.img(system.img.ext4 or system.img) ※追加するもの
       ├ sed/
       ├ user/  (option)
       │  └XXXX (SC02Eなど機種名)
       │    └YYYY(適当な名前)
       │        ├install.sh
       │        └xxxx.so 
       │ readme.txt
       ├ install_su
       ├ make_rooted_factoryfs.sh
       └ user_custom.sh

    配置が終わったら"端末(Terminal)"から"make_rooted_factoryfs.sh"を実行してください。

    ※.shの実行権が外れていることがあります。
      make_rooted_factoryfs.sh と bin/ext4_utils/mkuserimg.sh に実行権を追加してください。
        (dir) $ chmod a+x make_rooted_factoryfs.sh
        (dir) $ chmod a+x bin/ext4_utils/mkuserimg.sh

    管理者権限が必要なコマンド(mount)を実行するため、途中でパスワードを要求されますので
    入力してください。

    エラーが無ければoutにOdin3で焼ける形式の"SC0XXOMXXX-ROOTED-FACTORYFS(system).tar.md5"が
    作成されているはずです。

  4. プリインストールアプリの削除について
　　削除するプリインストールアプリの指定
    config/list.XXXXを開き、削除したいアプリを１行に一つ記述します。
　　　例）app/XXXXXX.apk

  5. ユーザカスタム処理について
　　追加でapkやlibを入れたい。カスタムした設定を入れるなど
　　user_custom.shに処理を追記する事で対応できます。

	user/XXXX/以下のYYYY/install.shがあると、自動実行します
		例)user/SC02E/test/install.sh

  6. SC-01F(Galaxy note3 docomo)/SC-02F(Galaxy J docomo)について
　　1.PlayストアからSuperSUのインストールが必要です。
　　2.Felica利用するためには、SystemStatusがOfficialである必要があり
　　　現状、起動時Scanを回避するために、毎起動後に手動でrooted化が必要になります
　　　　->起動時にroot権限を必要とするアプリが使えません
　　　　※Terminal/adbより su_enable と打つ必要があります
　　　　※GNT3eXT起動にて対応可能です(起動時一定時間後の自動enableにも対応）

　　3.SupeSUが不安定な時があります。
　　　アプリの許可設定時に、SuperSUから制御が返らず、結果アプリがハング状態になる事があります
　　　　一度許可した後は、特に問題ないのでrootedアプリの初回起動時にハングした場合には
　　　　アプリを強制終了して起動し直して下さい。

　　4. mountについて
　　　busybox mountを利用してください。
　　　mount(/system/bin/mount)では罠により挙動不審な事もあるようです。

　　その他にも制限があるかもしれません。

　　5. SuperSUの更新について
　　　SuperSUアプリからsuバイナリの更新はできません
　　　　現状では更新はエラーとなり結果問題ないですが、
　　　　仮に更新出来た場合、起動時からRootedとなりFelicaが使えなくなります
　　　　そのためSuperSUからsuバイナリの更新はしないでください
　　　　
　　　　suバイナリの更新は、SuperSUアプリをアップデート後に、
　　　　su_updateコマンドを実行する事で可能です。
　　　　GNTeXT3ではsu_enable実行時にsuバイナリの更新を判断し自動で更新します。
　
　　　　suバイナリ更新後は再起動が必要になります。


  7. 更新履歴
   Mod by ma43s,homuhomu
  v3.2.2
    SC02E/SC03E ND2
  v3.2.1
    SC02E/SC03E ND2
  v3.2.0
    SC02E/SC03E ND2

  v3.1.1(=v3.1r1)
    SuperSu proインストール環境に対応

  v3.1.0(=v3.1r0)
    typo修正などコード整理

  v3.0r12 以下デバイスにてSuperSUの更新に対応
    SC-01F(Galaxy note3 docomo)/SC-02F(Galaxy J docomo)/SCL22(Galaxy note3 au)

  v3.0r11 以下デバイスにて制限付きでRootedでFelica利用可能に
	SCL22(Galaxy note3 au) ->実機確認して頂きました

  v3.0r10 type5のbusybox追加,mount安定したかも？
      もしかしたら、SCL22(Galaxy note3 au)で動く様になったかも、持ってないので不明

  v3.0r9 以下デバイスにて制限付きでRootedでFelica利用可能に
     ・SC-01F(Galaxy note3 docomo)/SC-02F(Galaxy J docomo)

  v3.0r8 以下デバイスに脳内対応(=未テスト)
     ・SC-02F(Galaxy J docomo)
     ・SCL22(Galaxy note3 au)->現状使えませんでしたorz

  v3.0r7 SC-01F(Galaxy note3 docomo)対応

  v3.0r6予定? 複数機種のイメージをおけるようにimg置き場変更

  v3.0r5 機種別に複数のユーザ処理をできるようにした
     同梱のlistベースでプリインが消せない不具合修正(改行コードが\r\nになっていた)
   
  v3.0r4 スクリプトを整理し、機種選択するように変更
　　　user_custom処理を追加できるようにした

  v3.0r2 SE02Eでrooted処理を選択できるようにした
 
  v3.0r1 任意のプリインストール削除できる機能を追加
　    SE02Eでrooted処理を一旦外した

   Mod by ほむら
　　　 GT-N7000 SC03D SC05D SC06D に対応

   r2  SuperUser.apk version up v3.0.1 -> v3.0.7
       ICS v4.0.2対応

   r1  cpコマンドからrsyncコマンドに変更
       typo修正
       SuperUser.apk version up v3.0 -> v3.0.1
       実行権の注意書きを追記

   r0  初版作成
