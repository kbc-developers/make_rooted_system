
  *** 純正ROM su入り factoryfs.img(system.img.ext4)生成スクリプト rev2 ***
  ほむらModded

  1. これはなに？

    純正ROMのfactoryfs.img(system.img.ext4)にsuなんかを入れて再生成するツールです。
    また海外ROMのfactoryfs.img(system.img.ext4)のリサイズも可能です。

  2. 必要なものは？
    
    ・linux環境 (Ubuntu11.04 64bitで動作確認しています)
    ・純正ROMのfactoryfs.img (バージョン問わず)
     (SoCがmsmの端末はsystem.img.ext4)

  3. どうやって使うの？

    readme.txtがあるディレクトリに純正ROMのfactoryfs.img(system.img.ext4)に置いてください。
    以下のように配置すればOK

      (dir)
       ├ bin
       ├ readme.txt
       ├ make_rooted_factoryfs.sh
       └ factoryfs.img(system.img.ext4) ※追加するもの

    配置が終わったら"端末"から"make_rooted_factoryfs.sh"を実行してください。

    ※.shの実行権が外れていることがあります。
      make_rooted_factoryfs.sh と bin/ext4_utils/mkuserimg.sh に実行権を追加してください。
        (dir) $ chmod a+x make_rooted_factoryfs.sh
        (dir) $ chmod a+x bin/ext4_utils/mkuserimg.sh

    管理者権限が必要なコマンド(mount)を実行するため、途中でパスワードを要求されますので
    入力してください。

    エラーが無ければoutにOdin3で焼ける形式の"SC0XXOMXXX-ROOTED-FACTORYFS(system).tar.md5"が
    作成されているはずです。


  4. 更新履歴
   Mod by ほむら
　　　 GT-N7000 SC03D SC05D SC06D に対応

   r2  SuperUser.apk version up v3.0.1 -> v3.0.7
       ICS v4.0.2対応

   r1  cpコマンドからrsyncコマンドに変更
       typo修正
       SuperUser.apk version up v3.0 -> v3.0.1
       実行権の注意書きを追記

   r0  初版作成
