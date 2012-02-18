requires=rdoc.parser,rdoc,rdoc.code_objects,rdoc.code_object,rdoc.context,rdoc.top_level,rdoc.class_module,rdoc.normal_class,rdoc.normal_module,rdoc.anon_class,rdoc.single_class,rdoc.any_method,rdoc.alias,rdoc.ghost_method,rdoc.meta_method,rdoc.attr,rdoc.constant,rdoc.require,rdoc.include,rdoc.stats,rdoc.parser.simple
classes=RDoc=Parser=PerlPOD
methods=
sublibraries=
is_sublibrary=true

Perl のソースコードを解析するためのサブライブラリです。Perl のソースコー
ド中に記述された POD (Plain old Documentation) 形式のコメントを解析する
事ができます。

拡張子が .pl、.pm のファイルを解析する事ができます。

[注意] rdoc 3.0.1 から rdoc-perl_pod に分かれたため、1.9.3 から
[[lib:rdoc/parser/perl]] は標準添付ライブラリに含まれなくなりました。
1.9.3 以降でも使用したい場合は rdoc-perl_pod を RubyGems でインストール
してください。
