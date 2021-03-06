#AsWork
##このトレーニングをするとどうなるか
Adobe AIRを使ってモバイルアプリケーションを開発することができるようになります。

あと、AIRじゃないプラットフォームでも結局は似たようなことをやります。
根底にあるものは使い回しが効くはずです。
- - -
##トレーニングの進め方
目次に沿って、進めていってください(あせり禁物)。

1. ソース内"work"配下のActxxx.asというファイルをコピーしてファイルを作ります。(例：Act001.asなど)
2. Main.asにテストするファイル名を指定してデバッグしてください。
3. sample"というフォルダには各項目の例が記載されています。参考にどうぞ。

### 詰まったら
* [ActionScript入門Wiki](http://www40.atwiki.jp/spellbound/)を覗いてみましょう。
* 全くわからないと感じたら、sampleを写経してとにかく実行するとよいです。
* 周りの人に質問してみるのもよいでしょう。

- - -

##トレーニング 目次
###Stage0 環境の準備
この章は特に周囲の人に聞きながら進めるとよいです
####Act001 GitHubから当リポジトリからgit cloneしましょう。
####Act002 Adobe AIR SDKの最新版をダウンロードしておきます。
####Act003 開発するためのIDEを用意しましょう。
* Flash Builder
* FlashDevelop(Windowsの場合のみ)

FlashSDKさえあれば、実はもっと好きな環境で開発もできます。興味のある人は調べてみましょう。
####Act004 IDEに積まれているAIR SDKをAct002でダウンロードしたSDKに置き換えてみましょう。

###Stage1 Flash part.1
####Act101 画面に文字を表示させてみましょう。
####Act102 画面に図形を３種類描きましょう。丸、四角、三角。
####Act103 前に描いた三つの図形の位置を画面の中央に移動して表示させましょう。
ただし、どんな画面サイズの端末で表示させても中央に表示されるようにしましょう。
####Act104 好きな画像を読み込んでみましょう。画像はres/imgフォルダの下に配置します。
####Act105 花の画像を3倍の大きさに拡大してみましょう。自分が足した画像を90度回転させてみましょう。
####Act106 現在の時刻を表示させましょう。
####Act107 現在の時刻を表示させましょう。そして、一秒ごとに時間が更新して表示されるようにしてみましょう。
####Act108 クリックしたら色が変わる図形を書きましょう。
####Act109 Trace文を試しましょう。図形をクリックした時にTraceも同時に出力するようにします。
ここでデバッガも使ってみましょう。ブレークポイントを設定し、変数の状態を確認します。
####Act110 四角オブジェクトを3秒単位で移動させるプログラムを書きましょう。
条件(1.移動処理は四角オブジェクトに書く 2.四角オブジェクトへイベントを送る)
####Act111 四角オブジェクトが移動すると共に色が変わるプログラムを書きましょう。
色は外部クラスから引数として受け取るようにします。

###Stage2 Flash part.2
####(ここで下準備)
テスト用のローカルサーバー環境を構築します。
まだ、以下がローカルに入っていない場合はインストールしましょう。
* VirtualBox
* Vagrant
以下をgit cloneしましょう。htdocsフォルダにhtmlのコンテンツを配置します。

[vagrant-engine](https://github.com/niji-ohnami/vagrant-engine.git)

####Act201 ネットワーク通信を行い、好きな画像を表示させてみましょう。
画像は先ほど作成したローカルサーバーに配置します。

####Act202 文字列を返すプログラムをサーバー側で作成し、APIを作りましょう。
その後、クライアント側でAPIを実行し、取得した文字列を画面に表示させてみましょう。
####Act203 存在しないAPIやない画像名を指定して間違ってAPIを使ってみましょう。
例外処理を補足してアプリケーションがダウンしないようにしてみましょう。
####Act204 POSTメソッドを使う
POSTメソッドでAPIへパラメーターを渡し、APIの返り値を文字列として画面に表示させてみましょう。
####Act205 APIからJSONを取得して、JSONの中身を表示させるプログラムを作りましょう。
####Act206 パースエラー制御
Act205を改良して、JSONに想定の項目が含まれていなかった場合にはクライアント側でデフォルトの値を表示させてみましょう。
####Act207 XMLを取得してXMLの中身を表示させるプログラムを作りましょう。
以下のサイトから天気情報のXMLを取得し、"東京地方"の本日の天気を表示させてみましょう。

[天気](http://www.drk7.jp/weather/)

####Act208 jsonをクラスへパースする
jsonファイルのデータ構造と同じプロパティを持つクラスを作り、Jsonで取得したデータをクラスに流しこんでみましょう。
####Act209 アプリケーション内に好きなWebサイトを表示させてみましょう。
####Act210 Act209でユーザーがリンクをクリックしたときに、URLをtrace文で表示させてみましょう。
####Act211 何かをタップしたら、指定したURLでブラウザが起動するプログラムを書きましょう。

###Stage2.5 実機テスト
####Act251 AndroidまたはiOS端末でデバッグをしてみましょう。
####Act252 Androidの戻るボタンを無効にしてみましょう。

###Stage3 フレームワークを使う(Starling)
####(ここで下準備)
Adobe GamingSDKの最新版をダウンロードしておいてください。

####Act301 Starlingを使って Act001をやってみましょう。
####Act302 Starlingを使って Act003をやりましょう。
####Act303 Starlingの機能でAct004同様に画像を読み込んでみましょう
####Act304 img/sprite1.pngとimg/sprite1.xmlを読み込んで各画像パーツごとに画面に表示させてみましょう。
####Act305 png画像からatf画像を作り、それをStarlingから表示させてみましょう。
まずはAdobeから最新のGaming SDKをダウンロードしてみて png2atfコマンドを入手しましょう。
また、作ったatf画像はATFViewerで中を覗いてみましょう。

####Act306 ENTER_FRAMEイベントを使う
ENTER_FRAMEを使い図形や画像が画面の中心を基準にして円運動をするプログラムを書きましょう。
そして、Starlingのfps設定を調整すると動きがどのように変わるか確認してみましょう。
####Act307 について円運動しつつ、自身も回転するプログラムを書きましょう。
ただし、回転の軸は中心にしましょう。

###Stage4 スプライトシート
Texturepacker
スプライトシートからデータを読み込む
スプライトシートに更新をかける
　文字を変えてみる
　UIを表示させてみる

###Stage5 アニメーションを再生させる(Tween24)
####Act501 Tween24を使ってAct307と同じプログラムを書きましょう。
####Act502 Tween24を使ってアニメーションを3パターン作ってみましょう。

###Stage6 フレームワークを使う(Feather)

####Act601 Featherの機能を使用してボタンを配置してみましょう。
押したら何かが起きるギミックを入れてみましょう。
####Act602 Featherのリストを使って任意のデータ一覧を表示させてみましょう。
####Act603 Stage5で作成したアニメをリストの目次として表示します。
タッチしたらアニメが再生されるようにしてみましょう。
####Act604 Listで制作したものをPickerListで置き換えてみましょう。
####Act605 Fethersのテーマを切り替えてみましょう。
fethers.themesに３種類のスキンが用意されています。

###Stage7 メモリ管理対策/負荷対策
####(ここで下準備)
Adobe Scoutの最新版をダウンロードしておいてください。

####Act701 すごくメモリを消費しそうなプログラムを書き、リソース消費状況を観察してみましょう。
####Act702 Act701のプログラムについて、メモリリークポイントを発見し、対策を入れてみましょう。

###Stage8 応用
ATFが如何に速いかを実感できるテストプログラムを書いてみましょう。
複数の画像やAPIを連続して実行し、画面に表示させるプログラムを作りましょう。
ただし、URLLoaderやLoaderのインスタンスはそれぞれひとつしか作らないでください。
コマンドパターン。
スクリーンロックを明示に出す。

- - -

##(TODO)
* 音楽を鳴らす
* ローカルストレージを使う
* 物理エンジンを使ってみる

##補足
ひととおり進めてみて、以下がわからない場合は周りの人に聞いてみましょう。

* アプリケーションのアイコンを差し替える
* ソースコードフォーマッタの適用
* インポート文の整理

##参考になりそうなサイト
* [ActionScript入門Wiki](http://www40.atwiki.jp/spellbound/)
* [akihiro kamijoさんのブログ](http://cuaoar.jp/)
* [にゃあプロジェクト](http://www.project-nya.jp/)
* [Starling](http://gamua.com/starling/)
* [Feathers](http://feathersui.com/)
* [Tween24](http://package.a24.cat/tween24/)
