
  *** 純正ROM su入り factoryfs.img(system.img.ext4)生成スクリプト rev2 base ma34 rev1 ***
  ma34 Modded

基本的にreadme.txtをまずみてください。
SC02E向けの変更についてのみ書きます

  1. rev2 baseからの変更点？
　　SC02Eで（任意の）プリインストールアプリを消したimageを作成できるようにしたもの
　　まだSC02Eで起動するrootedイメージできてないので、rooted処理は外しています
    


  3. どうやって使うの？

    readme.txtがあるディレクトリに純正ROMのfactoryfs.img(system.img.ext4)に置いてください。
    以下のように配置すればOK

      (dir)
       ├ bin/
       ├ sed/
       ├ list.SC02E
       ├ make_rooted_factoryfs_SC02E.sh
       ├ system.img ※追加するもの
       └ cahhe.img ※追加するもの

    削除するプリインストールアプリの指定
    list.SC02Eを開き、削除しないアプリの先頭に"#"（シャープ）でコメントアウト
　　もしくは、行ごと削除してください。

    配置が終わったら"端末"から"make_rooted_factoryfs_SC02E.sh"を実行してください。

    ※.shの実行権が外れていることがあります。
      make_rooted_factoryfs_SC02E.sh と bin/ext4_utils/mkuserimg.sh に実行権を追加してください。
        (dir) $ chmod a+x make_rooted_factoryfs_SC02E.sh
        (dir) $ chmod a+x bin/ext4_utils/mkuserimg.sh

    管理者権限が必要なコマンド(mount)を実行するため、途中でパスワードを要求されますので
    入力してください。

    エラーが無ければoutにOdin3で焼ける形式の"SC0XXOMXXX-ROOTED-FACTORYFS(system).tar.md5"が
    作成されているはずです。


  4. 更新履歴
   Mod by ma43s
   r1 任意のプリインストール削除できる機能を追加
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
