###nonref

= 11 Ruby の処理系について

* ((<FAQ::Rubyの処理系について/11.1 Ruby スクリプトをコンパイルすることはできますか？>))
* ((<FAQ::Rubyの処理系について/11.2 Java VM 上で動く Ruby ってありますか？>))
* ((<FAQ::Rubyの処理系について/11.3 オリジナル以外の Ruby の実装はありますか？>))
* ((<FAQ::Rubyの処理系について/11.4 Ruby 用の indent みたいなものはありますか？>))
* ((<FAQ::Rubyの処理系について/11.5 ネイティブスレッドを使った Ruby はない？>))
* ((<FAQ::Rubyの処理系について/11.6 GC が遅い！ どうにかならないの？>))
* ((<FAQ::Rubyの処理系について/11.7 Mac では Ruby は動かないの？>))

== 11.1 Ruby スクリプトをコンパイルすることはできますか？

RAA に、試験的に作成された x86 向けの Just In Time コンパイラが
あります。ただしバージョン 1.5 用ですし、実用にもならないでしょう。

コンパイルしたい理由がソースコードの隠蔽なら、近いうちに進展があるかも
しれません(((<ruby-list:35194>)))。速度についてはかなり意欲的に改良が
進んでいます。

== 11.2 Java VM 上で動く Ruby ってありますか？

JRuby( ((<URL:http://jruby.sf.net/>)) ) という処理系が現在開発されています。

== 11.3 オリジナル以外の Ruby の実装はありますか？

現在のところありません。最初の一人を狙うのもいいですね。((- NETRuby には触れるべきですか？ -))

== 11.4 Ruby 用の indent みたいなものはありますか？

これもありません。基本的に Ruby スクリプトの解析は非常に面倒です。
しかしユーザが増えればかなり実現可能性は高いでしょう。

== 11.5 ネイティブスレッドを使った Ruby はない？

ネイティブスレッドは、現在の GC (ガベージコレクション……自動メモリ回収)
の実装と非常に相性が悪いため実現していません。またインタプリタおよび
基本ライブラリには C レベルでスレッドセーフでない部分がありますので
その部分を洗いだして修正する必要もあります。

== 11.6 GC が遅い！ どうにかならないの？

GC は現在の Ruby インタプリタの最大のボトルネックになりつつあるようで、
特に大規模なプログラムにおいては顕著です。これを解決するのが次の安定版
に向けての核となるでしょう。たとえば世代別 GC のような新アルゴリズムが
試験実装されたりしています。それまでの対処としては 1. 黙って耐える
2. 生成されるオブジェクトを減らす 3. 大量にオブジェクトを生成するのが
わかっているならそのあいだだけ GC を止めておく……などが考えられます。

ただし通常のプログラムではそうそう GC の影響を受けることはありません。
安易に GC のせいにせず、どこが遅いのかちゃんと計測してみましょう。

== 11.7 Mac では Ruby は動かないの？

MacOS X ならば .pkg フォーマットのRubyがRAAで公開されています。
MacOS 9 以前でも動いていたことは
あるそうですが現在のバージョンは動いていません。消えゆく OS に積極的に
対応しようとする人もあまりいないのでは……。