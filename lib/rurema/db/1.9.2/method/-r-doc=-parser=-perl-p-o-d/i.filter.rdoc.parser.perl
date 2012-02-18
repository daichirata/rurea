names=filter
visibility=public
kind=defined

--- filter(comment) -> String

Perl のコメントの各行のマークアップを rdoc 向けのものに変換した文字列を
返します。

現在は基本的な部分のみを処理できます。まだ C<<...>> などを適切に処理す
る事ができません。

@param comment ソースコードの内容を文字列で指定します。
