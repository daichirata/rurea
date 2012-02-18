= ruby 1.8.4 feature

ruby 1.8.4 �Ǥ� ruby 1.8.3 ������ѹ����Ǥ���

�Ǻ�����

*�Х������αƶ���ޤ��ư��Ѥ���Τ��Ͽ���롣
*ñ�˥Х���ľ���������Τ�Τϼ�Ͽ���ʤ���
*�饤�֥��ؤ�ñ�ʤ�������ɲäϼ�Ͽ���ʤ���

�ʲ��ϳ��ѹ������դ���٤������Ǥ���

����ˤĤ���(�ä˽��פʤ�Τ���ʸ��(���))

# * ���ƥ���
#   * [ruby]: ruby ���󥿥ץ꥿���ѹ�
#   * [api]: ��ĥ�饤�֥�� API
#   * [lib]: �饤�֥��
* ��٥�
  * [bug]: �Х�����
  * [new]: �ɲä��줿���饹���᥽�åɤʤ�
  * [compat]: �ѹ����줿���饹���᥽�åɤʤ�
    * �ߴ����Τ����ѹ�
    * only backward-compatibility
    * �ƶ����ϰϤ��������Ȼפ����ѹ��⤳����
  * [change]: �ѹ����줿���饹���᥽�åɤʤ�(�ߴ����Τʤ��ѹ�)
  * [obsolete]: �ѻߤ��줿(�����ͽ���)��ǽ
  * [platform]: �б��ץ�åȥե�������ɲ�

== �ܼ�

* ((<ruby 1.8.4 feature/Ruby����>))
  * ((<ruby 1.8.4 feature/Symbol [bug]>))
  * ((<ruby 1.8.4 feature/Symbol [bug]>))
  * ((<ruby 1.8.4 feature/super [bug]>))
  * ((<ruby 1.8.4 feature/����ɽ�� [bug]>))
  * ((<ruby 1.8.4 feature/�����ʥ� [bug]>))
* ((<ruby 1.8.4 feature/�Ȥ߹��ߥ饤�֥��>))
  * ((<ruby 1.8.4 feature/UnboundMethod#bind [bug]>))
  * ((<ruby 1.8.4 feature/set_trace_func [bug]>))
  * ((<ruby 1.8.4 feature/set_trace_func [change]>))
  * ((<ruby 1.8.4 feature/printf [bug]>))
  * ((<ruby 1.8.4 feature/Hash [bug]>))
  * ((<ruby 1.8.4 feature/test [bug]>))
  * ((<ruby 1.8.4 feature/File.identical? [new]>))
  * ((<ruby 1.8.4 feature/FileTest.identical? [new]>))
  * ((<ruby 1.8.4 feature/File.split [change]>))
  * ((<ruby 1.8.4 feature/File.basename [change]>))
  * ((<ruby 1.8.4 feature/File.dirname [change]>))
  * ((<ruby 1.8.4 feature/Dir.glob (Win����) [bug]>))
  * ((<ruby 1.8.4 feature/File.basename (Win����) [change]>))
  * ((<ruby 1.8.4 feature/File.dirname (Win����) [bug]>))
  * ((<ruby 1.8.4 feature/File::Stat#pipe? [bug]>))
  * ((<ruby 1.8.4 feature/Array#fill [bug]>))
  * ((<ruby 1.8.4 feature/String#scan [bug]>))
  * ((<ruby 1.8.4 feature/File.join [bug]>))
  * ((<ruby 1.8.4 feature/Thread#pass [bug]>))
  * ((<ruby 1.8.4 feature/Module#const_missing [bug]>))
  * ((<ruby 1.8.4 feature/IO [bug]>))
* ((<ruby 1.8.4 feature/ź�ե饤�֥��>))
  * ((<ruby 1.8.4 feature/"Ruby/Tk">))
  * ((<ruby 1.8.4 feature/REXML [compat]>))
  * ((<ruby 1.8.4 feature/TCPSocket#initialize [bug]>))
  * ((<ruby 1.8.4 feature/TCPServer#initialize [bug]>))
  * ((<ruby 1.8.4 feature/"optparse">))
  * ((<ruby 1.8.4 feature/"find">))
  * ((<ruby 1.8.4 feature/Iconv>))
  * ((<ruby 1.8.4 feature/WEBrick::Config::FileHandler [compat]>))
  * ((<ruby 1.8.4 feature/WEBrick>))
  * ((<ruby 1.8.4 feature/WEBrick::HTTPRequest#query_string= [new]>))
  * ((<ruby 1.8.4 feature/Readline [bug]>))
  * ((<ruby 1.8.4 feature/Syck [bug]>))
  * ((<ruby 1.8.4 feature/irb [bug]>))
  * ((<ruby 1.8.4 feature/RDoc [bug]>))
  * ((<ruby 1.8.4 feature/Win32API [bug]>))
  * ((<ruby 1.8.4 feature/Rinda [bug]>))
  * ((<ruby 1.8.4 feature/Iconv [compat]>))
  * ((<ruby 1.8.4 feature/cgi [bug]>))
  * ((<ruby 1.8.4 feature/DL [bug]>))
  * ((<ruby 1.8.4 feature/fileutils [bug]>))
  * ((<ruby 1.8.4 feature/extmk, mkmf [compat]>))
  * ((<ruby 1.8.4 feature/mkmf: find_executable() [compat]>))
* ((<ruby 1.8.4 feature/��ĥ�饤�֥��API>))
  * ((<ruby 1.8.4 feature/rb_funcall2() [bug]>))
  * ((<ruby 1.8.4 feature/rb_respond_to() [change]>))
  * ((<ruby 1.8.4 feature/rb_obj_respond_to() [new]>))
* ((<ruby 1.8.4 feature/�ץ�åȥե������ͭ>))
  * ((<ruby 1.8.4 feature/bccwin32 [bug]>))
  * ((<ruby 1.8.4 feature/cygwin [bug]>))
  * ((<ruby 1.8.4 feature/BeOS [bug]>))
  * ((<ruby 1.8.4 feature/Sun [bug]>))
  * ((<ruby 1.8.4 feature/IA64 [bug]>))

== Ruby����

: Symbol [bug]

#       * parse.y (dsym): prohibit empty symbol literal by interpolation.
#         fixed: [ruby-talk:166529]

    ��Ÿ���Ƕ���Symbol���뤳�Ȥ��Ǥ����Х��ν����� ((<ruby-talk:166529>))

        p :""

        # => ruby 1.8.3 (2005-09-21) [i686-linux]
             -:1: empty symbol literal
        # => ruby 1.8.4 (2005-12-16) [i686-linux]
             -:1: empty symbol literal

        p :"#{""}"

        # => ruby 1.8.3 (2005-09-21) [i686-linux]
             :
        # => ruby 1.8.4 (2005-12-16) [i686-linux]
             -:1: empty symbol literal

: Symbol [bug]

#Sat Oct 22 13:26:57 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * object.c (sym_inspect), parse.y (parser_yylex, rb_symname_p): check
#         if valid as a symbol name more strictly.  [ruby-dev:27478]
#
#       * test/ruby/test_symbol.rb: tests for [ruby-core:03573].

    Symbol��Ŭ�礹��ʸ�����̩�ˤ�����((<ruby-core:03573>)),((<ruby-dev:27478>))

        1) alias :"foo" :"bar"

            def bar; p "bar"; end
            alias :"foo" :"bar"
            foo

            # => ruby 1.8.4 (2005-12-22) [i686-linux]
                 -:2: syntax error, unexpected tSTRING_CONTENT
                     alias :"foo" :"bar"
                                ^
                 -:2: warning: unused literal ignored
            # => ruby 1.9.0 (2005-12-10) [i686-linux]
                 "bar"


        2) Symbol#inspect sometimes returns invalid symbol representations:

            puts :"!".inspect
            puts :"=".inspect
            puts :"0".inspect
            puts :"$1".inspect
            puts :"@1".inspect
            puts :"@@1".inspect
            puts :"@".inspect
            puts :"@@".inspect

            # => ruby 1.8.3 (2005-09-21) [i686-linux]
                 :!
                 :=
                 :0
                 :$1
                 :@1
                 :@@1
                 :@
                 :@@
            # => ruby 1.8.4 (2005-12-22) [i686-linux]
                 :"!"
                 :"="
                 :"0"
                 :$1
                 :"@1"
                 :"@@1"
                 :"@"
                 :"@@"

        3) Symbol#inspect sometimes returns suboptimal symbol representations:
            puts :foo!.inspect
            puts :bar?.inspect

            # => ruby 1.8.3 (2005-09-21) [i686-linux]
                 :"foo!"
                 :"bar?"
            # => ruby 1.8.4 (2005-12-22) [i686-linux]
                 :foo!
                 :bar?

        4) :$- always treats next character literally:

            p eval(":$-\n") # => :"$-\n"
            p :$-( # => :"$-("
            p :$-  # => :"$- "
            p :$-#.object_id # => 3950350

            # => ruby 1.8.3 (2005-09-21) [i686-linux]
                 :"$-\n"
                 :"$-("
                 :"$- "
                 2631438

            # => ruby 1.8.4 (2005-12-22) [i686-linux]
                 -:2: syntax error, unexpected '(', expecting $end

#Tue Nov  1 14:20:11 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * eval.c (rb_call_super): should call method_missing if super is
#         called from Kernel method.
#
#       * eval.c (exec_under): frame during eval should preserve external
#         information.

: super [bug]

    Kernel�Υ᥽�å����super��Ƥ�����ˡ�¸�ߤ��ʤ�superclass
    �˥����������褦�Ȥ���Х��ν�����

        module Kernel
          def foo
            super
          end
        end

        foo

        # => ruby 1.8.3 (2005-09-21) [i686-linux]
             -:3:in `foo': method `foo' called on terminated object (0xb7e06970) (NotImplementedError)
                from -:7
        # => ruby 1.8.4 (2005-12-22) [i686-linux]
             -:3:in `foo'-:3: warning: too many arguments for format string
             : super: no superclass method `foo' (NoMethodError)
                from -:7

: ����ɽ�� [bug]

#Wed Oct 19 01:27:07 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * regex.c (re_compile_pattern): numeric literal inside character class
#         disabled succeeding backtrack.  fixed: [ruby-list:41328]

    ʸ�������ɤη�������ɽ����ʸ�����饹����ꤹ��ȡ�����ʹߤ�
    �Хå��ȥ�å��������ʤ��ʤ�Х��ν�����((<ruby-list:41328>))

        p(/^[a-z]+x[0-9]+$/ =~ "hogex111")
        p(/^[\x61-\x7a]+x[0-9]+$/ =~ "hogex111")

        # => ruby 1.8.3 (2005-09-21) [i686-linux]
             0
             nil
        # => ruby 1.8.4 (2005-12-22) [i686-linux]
             0
             0

: �����ʥ� [bug]

#Sun Oct 16 03:38:07 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * rubysig.h (CHECK_INTS): prevent signal handler to run during
#         critical section.  [ruby-core:04039]

    �����ʥ�ϥ�ɥ�μ¹Ԥϥ���ƥ����륻������󤬽�λ����ޤ�
    �ٱ䤵���褦�ˤʤ�ޤ�����((<ruby-core:04039>))

== �Ȥ߹��ߥ饤�֥��

#Thu Dec  8 02:07:19 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * eval.c (umethod_bind): adjust invoking class for module method.
#         [ruby-dev:27964]

: UnboundMethod#bind [bug]

    UnboundMethod#bind���줿�⥸�塼��Υ��󥹥��󥹥᥽�å����
    super��Ȥ��ʤ��ä��Х��������ޤ�����((<ruby-dev:27964>))

        module Foo
          def initialize
            super
          end
        end

        class Bar
          include Foo
          def initialize
            Foo.instance_method(:initialize).bind(self).call
          end
        end

        Bar.new

        # => ruby 1.8.3 (2005-09-21) [i686-linux]
             -:3:in `initialize': method `initialize' called on terminated object (0xb7dd2bec) (NotImplementedError)
                from -:10:in `initialize'
                from -:14
        # => ruby 1.8.4 (2005-12-16) [i686-linux]

: set_trace_func [bug]

#Thu Dec  8 00:40:52 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * eval.c (call_trace_func): klass parameter should be a
#         class/module that defines calling method.  [ruby-talk:169307]
#

    ���饹�᥽�åɤμ¹Ի��ˡ�������줿���饹�ǤϤʤ��᥿���饹��
    trace���Ϥ���Ƥ����Х��ν�����((<ruby-talk:169307>))

: set_trace_func [change]

#Mon Sep 26 22:32:13 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * eval.c (set_trace_func): add rb_secure(4) to prevent adding
#         tracing function.

    $SAFE=4��trace_func���ɲä�ػߡ�

: printf [bug]

#Wed Dec  7 15:31:35 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * sprintf.c (rb_str_format): integer overflow check added.
#
#       * sprintf.c (GETASTER): ditto.

    printf�Υե����ޥåȻ���Ҥ�integer overflow�ΥХ�������ޤ�����
    perl �Τ���Ȥϰ㤤���������ƥ��Х��Ϥʤ������Ǥ���
    ((<URL:http://www.rubyist.net/~matz/20051207.html#p01>))

        # ruby 1.8.4 (2005-12-01) [i686-linux]

        # ArgumentError
        printf("%2147483648$d\n")       # -e:1:in `printf': invalid index - -2147483648$ (ArgumentError)
        printf("%2147483649$d\n")       # -e:1:in `printf': invalid index - -2147483647$ (ArgumentError)
        printf("%4294967296$d\n")       # -e:1:in `printf': invalid index - 0$ (ArgumentError)

        # overflow
        printf("%4294967297$d\n", 1)    # 1
        printf("%4294967298$d\n", 1, 2) # 2

        # 1.8.4 �Ǥϡ��嵭��Ϥ��٤ưʲ��Υ��顼�ˤʤ�ޤ���
        # %xx$ �˻���Ǥ�������ͤ� 2147483647 �Ǥ���
        # -e:1:in `printf': width too big (ArgumentError)

: Hash [bug]

#Wed Nov 23 03:40:49 2005  Guy Decoux  <ts@moulon.inra.fr>
#
#       * re.c (KR_REHASH): should cast to unsigned for 64bit CPU.
#         [ruby-core:06721]

    sizeof(long) > sizeof(int) �ʴĶ��ǡ��ϥå���ؿ��Υ����С�
    �ե����Τ����String�򥭡��Ȥ���Hash�θ��������Ԥ��Ƥ����Х��ν�����
    ((<ruby-core:06721>))

: test [bug]

#Wed Nov 23 01:22:57 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * file.c (test_identical): test if two files are identical.
#
#       * file.c (rb_f_test): support DOSISH systems where st_ino is not
#         reliable.  fixed: [ruby-core:06672]
#
#       * win32.h, win32.c (rb_w32_osid): check the running platform.

    i-node������ʤ������ƥ�(Windows��)��test(?-, ...)�����true���֤�
    �Ƥ����Х�������((<ruby-core:06672>))

: File.identical? [new]
: FileTest.identical? [new]

    test(?-, ...) �����إ᥽�åɤȤ����ɲá�

: File.split [change]
: File.basename [change]
: File.dirname [change]

#Tue Nov 22 14:46:57 2005  NAKAMURA Usaku  <usa@ruby-lang.org>
#
#       * file.c (rb_file_s_basename): skip slashes just after UNC top slashes.
#
#       * test/ruby/test_path.rb (test_dirname, test_basename): follow new
#         spec. and add new tests.

    UNC�ѥ����Ф���File.dirname��File.basename��File.split�λ���
    ���ѹ�����(UNC�򥵥ݡ��Ȥ���ץ�åȥե�����Τ�)��

      File.split("//aaa")      #=> old: ["//", "aaa"]  new:["//aaa", "/"]
      File.split("//aaa/")     #=> old: ["//", "aaa"]  new:["//aaa", "/"]
      File.split("//aaa/bbb")  #=> old:["//aaa", "bbb"]  new:["//aaa/bbb", "/"]
      File.split("//aaa/bbb/") #=> old:["//aaa", "bbb"]  new:["//aaa/bbb", "/"]
      File.split("///aaa")     #=> old:["//", "aaa"]  new:["//aaa", "/"]

: Dir.glob (Win����) [bug]

#Tue Nov 22 13:18:32 2005  Hirokazu Yamamoto  <ocean@m2.ccsnet.ne.jp>
#
#       * win32/win32.c (rb_w32_stat): Dir.chdir('//server/shared');
#         p Dir.glob('*') should work on WinNT. (implemented our own
#         stat(2) on WinNT) [ruby-list:41552] [ruby-dev:27711]
#

    ��ͭ�ե�����ζ�ͭ̾���Ф��� Dir.glob �����Ԥ��Ƥ����Τ������ʤ�
    ���WinNT �ˤ����롢��󥿥���饤�֥��� stat �ΥХ����Ȼפ��˼�
    ���� stat ��������뤳�Ȥǲ��򤷤���((<ruby-list:41552>)),((<ruby-dev:27711>))

: File.basename (Win����) [change]

#Tue Nov 22 01:45:21 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * file.c (rb_file_s_basename): DOSISH_UNC is defined on cygwin but
#         DOSISH is not.  fixed: [ruby-dev:27797]

    �Դ�����UNC��ʬ�䤷�ʤ��褦�ˤ�����((<ruby-dev:27797>))

: File.dirname (Win����) [bug]

#Fri Nov 18 17:26:06 2005  NAKAMURA Usaku  <usa@ruby-lang.org>
#
#       * file.c (rb_file_s_dirname): added checks for some patterns with drive
#         letter. fixed: [ruby-dev:27738]
#
#       * test/ruby/test_path.rb (test_dirname): added tests for above
#         patterns.

    �ɥ饤�֥쥿����ޤ�ѥ����Ф���File.dirname�������������
    (�ɥ饤�֥쥿���򥵥ݡ��Ȥ���ץ�åȥե�����Τ�)��((<ruby-dev:27738>))

      File.dirname("C:a/b")  #=> old: "C:a."  new: "C:a"
      File.dirname("C:a///") #=> old: "C:a///"  new: "C:a"

: File::Stat#pipe? [bug]

#Fri Nov 18 12:18:02 2005  Hirokazu Yamamoto  <ocean@m2.ccsnet.ne.jp>
#
#       * win32/win32.h (S_IFIFO): r,w = IO.pipe; r.stat.pipe? now
#         returns true on VisualC++6.

    VisualC++ 6 �Ǥ� S_IFIFO ���ʤ� _S_IFIFO �����������Ƥ��ʤ����ᡢ
    �ѥ��פ��Ф��� stat.pipe? �� false ���֤��Ƥ����Τ�����

: Array#fill [bug]

#Tue Nov 15 14:39:16 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * array.c (rb_ary_fill): should adjust array length correctly when
#         an array is expanded in the fill process.  [ruby-core:06625]

    Array���Ф���fill��pop�򷫤��֤���SEGV����Х��������ޤ�����((<ruby-core:06625>))

: String#scan [bug]

#Thu Oct 27 16:45:31 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * string.c (scan_once): wrong condition to use mbclen2().
#         [ruby-dev:27535]

    String#scan�ǡ�����ʸ���ˡ�*��(0��ʾ�η����֤�)���դ���ȡ���
    ʸ����˥ޥå������Ȥ��μ���ʸ����¿�Х���ʸ���ΤȤ��˥ޥå���
    ���ϰ��֤�����뤳�Ȥ�����Х��ν�����((<ruby-dev:27535>))
# �Ǥ��äƤ�Τ���?

: File.join [bug]

#Wed Oct 19 08:28:32 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * file.c (rb_file_join): elements may contain null pointer strings.
#         report and fixed by Lloyd Zusman (hippoman): [ruby-core:06326]

    NULL�ݥ��󥿤����String���Ϥ���File.join��SEGV���뤳�Ȥ����ä�
    �Х��ν�����((<ruby-core:06326>))

: Thread#pass [bug]

#Sun Oct 16 03:38:07 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * eval.c (load_wait): need not to call rb_thread_schedule()
#         explicitly.  [ruby-core:04039]
#
#       * eval.c (rb_thread_schedule): clear rb_thread_critical.
#         [ruby-core:04039]

    Thread#pass��Ƥ֤�Thread.critical�����ꥢ�����褦�ˤʤ�ޤ�����
    ((<ruby-core:04039>))

: Module#const_missing [bug]

#Thu Sep 29 00:57:35 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * eval.c (ev_const_get), variable.c (rb_const_get_0): retry only when
#         autoload succeeded.
#
#       * variable.c (rb_autoload_load): now return true if autoload
#         succeeded.  fixed: [ruby-dev:27331]

    const_missing�����������Ƥ��Ƽ¹Ԥ��³��������SEGV�����ǽ��
    �����ä��Х��ν�����((<ruby-dev:27331>))

: IO [bug]

#Wed Sep 28 08:12:18 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * io.c (read_buffered_data): check if reached EOF.  fixed: [ruby-dev:27334]

    Solaris(64bit?)�ʤɤ�EOF��˥��ߤ��ɤ߽Ф����Ȥ����ä��Х�������
    ((<ruby-dev:27334>))

== ź�ե饤�֥��

: Ruby/Tk

    * �б��С������

       Tcl7.6/Tk4.2, Tcl/Tk8.0 �� 8.4.12, Tcl/Tk8.5a1 �� a3

       Tcl/Tk ��ĥ�饤�֥��ˤĤ��Ƥ�

          ActiveTcl8.4.12.0 �ޤ��Ϥ������
          ( beta �� �� ActiveTcl8.5.0.0b4 �ޤ��Ϥ������ )

       �˴ޤޤ���Τ��б����Ƥ��ޤ���

       �б����Ƥ��� Tcl/Tk ��ĥ�μ���ȥС������Ȥ�
          ext/tk/lib/tkextlib/SUPPPORT_STATUS
            �ޤ���
          <installed lib dir>/tkextlib/SUPPORT_STATUS
       �򻲾Ȥ��Ƥ���������

       ��������Tcl/Tk ��ĥ�ΥС������ε��Ҥϡ��б���Ԥä��ǿ���
       ��Τ򼨤��Ƥ��ޤ��Τǡ����Ҥ��줿�����ΥС������Ǥ��äƤ⡤
       ��ü�˸Ť��ʤ��¤���б��Ǥ��Ƥ���Ϥ��Ǥ���

       �ƥ饤�֥��ؤ��б��Τ�����ѹ������
          ext/tk/ChangeLog.tkextlib
       �򻲾Ȥ��Ƥ���������

    * ����ץ륹����ץ�

       : ext/tk/sample/scrollframe.rb [new]

          ���֤������������åȤ�ɽ���ϰϤ򥹥������뤹�뤳�Ȥ�
          �Ǥ���褦�ʥ���������С��դ��ե졼�०�������åȥ�
          �饹�Υ���ץ��饤�֥��

#Wed Dec  7 01:02:04 2005  Hidetoshi NAGAI  <nagai@ai.kyutech.ac.jp>
#
#       * ext/tk/README.macosx-aqua: [new document] tips to avoid the known
#         bug on platform specific dialogs of Tcl/Tk Aqua on MacOS X.

    MacOS X ��� Aqua �Ǥ� Tcl/Tk ���Ѥ����ݡ�Aqua ��ͭ�Υ���������ɽ����
    �ե꡼�����Ƥ��ޤ��Ȥ��� known bug �β�����򵭺ܤ����ɥ������
    (ext/tk/README.macosx-aqua) ���ɲä���ޤ�����

#Wed Dec  7 01:02:04 2005  Hidetoshi NAGAI  <nagai@ai.kyutech.ac.jp>
#
#       * ext/tk/tcltklib.c: fix bug on switching threads and waiting on the
#         deleted interpreter on vwait and tkwait command.

    ������줿 Tk ���󥿡��ץ꥿���Ф��� vwait �� tkwait �Ǥν����Ԥ���
    ��λ�������Ԥ�³���Ƥ��ޤ���ǽ��������Ȥ����Х��������ޤ�����

#
#       * ext/tk/lib/multi-tk.rb: kill the meaningless loop for the deleted Tk
#         interpreter.

    MultiTkIp ���������� Tk ���󥿡��ץ꥿����������⡤
    ���פȤʤä��Ϥ��Υ���åɤ�ư��³����Х��������ޤ�����

#Wed Nov 23 20:59:01 2005  Hidetoshi NAGAI  <nagai@ai.kyutech.ac.jp>
#
#       * ext/tk/lib/tk.rb: add Tk.pkgconfig_list and Tk.pkgconfig_get
#         [Tk8.5 feature].
#
#       * ext/tk/lib/tk/text.rb: supports new indices modifires on a Text
#         widget [Tk8.5 feature].
#

    Tcl/Tk8.5a3 �ؤ��б��Τ��ᡤTk.pkgconfig_list ����� Tk.pkgconfig_get
    ���ɲä���ޤ�����
    Ʊ�ͤ� Tcl/Tk8.5a3 �ؤ��б��Τ��ᡤ�ƥ����ȥ��������åȾ�Υ���ǥå�
    ������ˤ����뿷���� modifier �Ǥ��� indices ���б����ޤ�����

#       * ext/tk/lib/tk/virtevent.rb: add TkNamedVirtualEvent.
#

    Tcl/Tk ���̾�������ꤵ��Ƥ��벾�ۥ��٥�Ȥλ��ꤷ�����ۥ��٥�ȥ���
    �������Ȥ������򾯤��ưפˤ��뤿�ᡤTkNamedVirtualEvent ����̾�Ȥ���
    �������ޤ�����

#       * ext/tk/lib/tk/event.rb: add :data key for virtual events [Tk8.5
#         feature].
#

    Tcl/Tk8.5 �ؤ��б��Τ��ᡤ���ۥ��٥�ȤΥ��٥�Ⱦ���ΰ�ĤǤ��� data
    �����ξ���� :data �ǻ���Ǥ���褦�ˤʤ�ޤ�����

#Fri Nov 18 17:35:09 2005  Hidetoshi NAGAI  <nagai@ai.kyutech.ac.jp>
#
#       * ext/tk/lib/multi-tk.rb: add restriction to access the entried
#         command table and manipulate other IPs (for reason of security).
#         Now, a IP object can be controlled by only its master IP or the
#         default IP.
#
#       * ext/tk/lib/remote-tk.rb: add restriction to manipulate.
#
#       * ext/tk/tcltklib.c (ip_is_slave_of_p): add TclTkIp#slave_of?(ip)
#         to check manipulability.
#

    �������ƥ�����������򤹤뤿�ᡤMultiTkIp �ˤ����� IP ���֥�������
    ��Ǥ������Ĥ����Τϡ���������ƤӽФ����Ķ� (����å�) �� IP 
    ���֥������Ȥ��ǥե���Ȥ� IP ���֥������� (�ǥե���ȤΥ���åɥ��롼
    �פ�°�����Ρ�require 'multi-tk' �κݤ����������) �Ǥ��뤫����
    �褦�Ȥ��Ƥ��� IP ���֥������Ȥ������ľ�ܤ� slave IP �Ǥ��뤫�ξ���
    �¤���褦�ˤʤ�ޤ�����

    ���ν����ˤ�ꡤIP ���֥������Ȥ�������������뤳�Ȥǡ����� IP ������
    ������ʤ��Ϥ���¾�� IP �����Ǥ��Ƥ��ޤ������򸺾������ޤ�����������
    ObjectSpace �˥�����������ľ�ܤ� TclTkIp ���֥������Ȥ���Ф������
    ����뤳�Ȥϲ���Ǥ��ޤ���Τǡ������դ���������

#       * ext/tk/lib/tk.rb: bug fix on handling of Tcl's namespaces.
#
#       * ext/tk/lib/tk/namespace.rb: ditto.
#

    Tcl/Tk ��� namespace �ΰ���������˹Ԥ��ʤ��Ȥ����Х��������ޤ�����

#Wed Nov  2 20:14:53 2005  Hidetoshi NAGAI  <nagai@ai.kyutech.ac.jp>
#
#       * ext/tcltklib: merge into ext/tk and remove.
#

    Ruby �Υ�������� tcltklib �� tk �Ȥ� Ruby 1.9 �Ϥ�Ʊ�ͤ˰��β����ޤ����� 
    ����ˤ�ꡤtcltklib �������˼��Ԥ����Ķ��ǡ�ư���Ϥ��Τʤ� tk �Υ饤
    �֥��ե����뷲�����󥹥ȡ��뤵��Ƥ��ޤ����Ȥ��򤱤��ޤ���
    ����ϥ������˴ޤޤ�� tcltklib ��Ϣ�Υɥ�����Ȥ򻲾Ȥ�����ˤ�
    ext/tk �ǥ��쥯�ȥ�β��򸫤Ƥ���������

#Wed Nov  2 19:03:06 2005  Hidetoshi NAGAI  <nagai@ai.kyutech.ac.jp>
#
#       * ext/tcltklib/tcltklib.c (ip_rbUpdateObjCmd,
#         ip_rb_threadUpdateObjCmd): passed improper flags to DoOneEvent().
#
#       * ext/tk/tkutil.c: use rb_obj_respond_to() instead of rb_respond_to().
#

    update ��������Ŭ�ڤǤ��뤿��ˡ������δĶ��� menubar �Υ�˥塼���ܤ�
    ��Ͽ�����������¹Ԥ���ʤ���礬����Ȥ����Х� (ruby-1.8.3 �� enbug ��
    �Ƥ������) �������ޤ�����

#       * ext/tk/lib/tk.rb, ext/tk/lib/tk/canvas.rb, ext/tk/lib/tk/entry.rb,
#         ext/tk/lib/tk/frame.rb, ext/tk/lib/tk/image.rb,
#         ext/tk/lib/tk/itemconfig.rb, ext/tk/lib/tk/labelframe.rb,
#         ext/tk/lib/tk/listbox.rb, ext/tk/lib/tk/menu.rb,
#         ext/tk/lib/tk/radiobutton.rb, ext/tk/lib/tk/scale.rb,
#         ext/tk/lib/tk/spinbox.rb, ext/tk/lib/tk/text.rb,
#         ext/tk/lib/tk/toplevel.rb: improve conversion of option values.
#
#       * ext/tk/lib/tkextlib/*: ditto.
#

    ���������åȥ��֥������Ȥ�°�����Ȥ򤷤�����°���ͤȤ����֤����֥���
    ���Ȥ���Ŭ�ڤʤ�Τˤ���褦�˲������ޤ���������������������Ǥ�����
    �Ȼפ��ޤ�����������°���ˤ����ơ��֤����Τ�ʸ����Ǥ��뤳�Ȥ���Ԥ�
    �ƥ�����ץȤ�񤤤Ƥ�����ˤϽ�����ɬ�פˤʤ��礬����ޤ���

    �㤨�� bool �ͤ��֤�°���ˤĤ��Ƥ� true �ޤ��� false ���֤��褦�ˤʤ�
    �ޤ�����äơ�����ͤ� "1", "0" ��ʸ���󡤤��뤤�� 1, 0 �ο��ͤǤ��뤳
    �Ȥ���Ԥ��Ƥ�����ˤϽ�����ɬ�פȤʤ�ޤ������衤Tcl/Tk �ο����ͤ�
    ¾�ˤ� "true", "false", "yes", "no" �ʤɤ⤢��ޤ��Τǡ��ͤο���Ƚ���
    TkComm.bool (TkUtil.bool) �᥽�åɤ�Ȥä�Ƚ�ꤹ�뤳�Ȥ�侩���ޤ���

    �ޤ���Tcl/Tk ����ѿ���������Ƥ��Ƥ���°���ˤ����ơ�°���ͤȤ���
    Tcl/Tk ����ѿ�̾��ʸ����ǤϤʤ� TkVariable ���֥������Ȥ��֤�����
    ���ˤʤ�ޤ����֤��줿�ͤ��̤Υ��������åȤ�°���ͤȤ���ʤɤǤ��Τޤ�
    Tk ���󥿡��ץ꥿���Ϥ��Ƥ������ TkVarAccess.new(val) �� TkVariable
    ���֥������Ȳ����Ƥ����� (val �Ǥ��� TkVariable ���֥������Ȥ����Τ�
    ���֤���ޤ�) �ˤϸߴ������ݤ���ޤ������֤��줿�ͤ򤽤Τޤ�ʸ�������
    �Ӥ��Ƥ���褦�ʾ��ˤ���ߴ��Ȥʤ�ޤ���

: REXML [compat]

#Fri Dec  9 23:31:02 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * lib/rexml/encoding.rb (encoding=): give priority to particular
#         conversion to iconv.  [ruby-core:06520]

    ���ܸ�Υ��󥳡��ǥ����Ѵ���iconv����nkf��ͥ�褷�ƻ��Ѥ���褦�ˤ�
    �ޤ�����((<ruby-list:41325>)), ((<ruby-core:06520>))

: TCPSocket#initialize [bug]
: TCPServer#initialize [bug]

#Mon Nov 28 18:55:43 2005  NAKAMURA Usaku  <usa@ruby-lang.org>
#
#       * ext/socket/socket.c (init_inetsock_internal): remove setting
#         SO_REUSEADDR option on server socket on Cygwin.
#         fixed: [ruby-core:6765] ([ ruby-Bugs-2872 ])
#

    Cygwin�ξ��Τߡ�������socket���Ф����accept��Errno::EADDRINUSE 
    �㳰�ˤʤäƤ��ʤ��ä���((<ruby-core:6765>)),((<ruby-bugs:2872>)),((<ruby-dev:27818>))

: optparse

#Tue Nov 22 23:52:06 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * lib/optparse.rb: match incomplete (in current enconding) multibyte
#         string.  http://inamode6.tokuhirom.dnsalias.org/show/1551

    $KCODE��̵���ʥޥ���Х���ʸ����䡢���Ԥ�ޤ�ʸ������������
    �����ڤ�ΤƤ��Ƥ����Х��ν�����

        require "optparse"

        puts "[#{ARGV * ', '}]"
        ARGV.options do |opt|
          opt.on("-n NODE") {|v| puts v }
          opt.parse!
        end

        >ruby -v -Ku a.rb -n ����
        ruby 1.8.2 (2004-12-25) [i386-mswin32]
        [-n, ����]
        ��

        >ruby -v -Ku a.rb -n ����
        ruby 1.8.4 (2005-12-16) [i686-linux]
        [-n, ����]
        ����

: find

#Tue Nov 15 23:46:35 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * lib/find.rb (Find::find): should not ignore symbolic links to
#         non-existing files.  [ruby-talk:165866]

    broken symbolic link(¸�ߤ��ʤ��ե�������Ф��륷��ܥ�å����
    ��)���֤��褦�ˤʤ�ޤ�����((<ruby-talk:165866>))

: Iconv

#Sun Nov  6 23:39:13 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * ext/iconv/iconv.c (Iconv::BrokenLibrary): exception when detected a
#         bug of underlying library.

    errno�����������åȤ���ʤ��ä��Ȥ����㳰���ɲ�(Windows��
    iconv.dll�λ��Ѥ���MSVC runtime DLL�ΥС�����󤬡�ruby���Τ���
    �Ѥ����ΤȰ��פ��Ƥ��ʤ�����ޤ�)

    �����ruby��ext/iconv���ȤΥХ��ǤϤʤ��ơ��¹Ի��δĶ������꤬
    ������β�����Ǥ���

#: OpenSSL
#Wed Nov 23 07:26:44 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * ext/openssl/extconf.rb: check for X509V3_EXT_nconf_nid.
#
#       * ext/openssl/ossl_x509ext.c (MakeX509ExtFactory): should use
#         OPENSSL_malloc to allocate X509V3_CTX.
#
#       * ext/openssl/ossl_x509ext.c (ossl_x509extfactory_create_ext): use
#         X509V3_EXT_nconf_nid to avoid SEGV (and to build extensions which
#         values are placed in separate section).
#
#       * test/openssl/test_x509ext.rb: new file.
#
# ��

#Tue Nov 01 10:50:17 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * ext/openssl/extconf.rb: should check ERR_peek_last_error().
#         [ruby-dev:27597]
#
#       * ext/openssl/ossl.c (ossl_raise): ditto.
#
# ��

#Mon Oct 31 05:49:23 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * ext/openssl/ossl_cipher.c (ossl_cipher_update): input data must
#         not be empty. [ruby-talk:161220]
#
#       * test/openssl/test_cipher.rb: add test for Cipher#update("").
#
# ��

#Wed Oct 12 12:52:57 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * ext/openssl/ossl.c (Init_openssl): should call
#         OpenSSL_add_ssl_algorithms().
#
# ��

#: WEBrick
#Mon Oct 31 05:37:20 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * lib/webrick/httpservlet/cgihandler.rb
#         (WEBrick::HTTPServlet::CGIHandler#do_GET): the value of Set-Cookie:
#         header field should be splited into each cookie.  [ruby-Bugs:2199]
#
#       * lib/webrick/cookie.rb (WEBrick::Cookie.parse_set_cookie): new method
#         to parse the value of Set-Cookie: header field.
#
#       * test/webrick/test_cookie.rb, test/webrick/test_cgi.rb,
#         test/webrick/webrick.cgi: add some test for cookie.
#
# ��

: WEBrick::Config::FileHandler [compat]

#Fri Oct 14 16:57:32 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * lib/webrick/config.rb (Config::FileHandler): :UserDir should be nil.
#         It is harmful to permit the access to ~/public_html by default.
#         suggested by Hiroyuki Iwatsuki.

    WEBrick::Config::FileHandler[:UserDir]�Υǥե�����ͤ� 
    "public_html"����nil�ˤʤꡢ�տޤ����˥桼���ǥ��쥯�ȥ�
    (/~user/public_html)�ʲ�����������뤳�Ȥ��ʤ��ʤ�ޤ�����
    [webrickja:148]

: WEBrick

#Wed Sep 28 15:14:19 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * lib/webrick/cgi.rb (WEBrick::CGI#start): req.query_string should
#         refer the value of QUERY_STRING. [ruby-list:41186]

    WEBrick::CGI#start��req.query_string�����ꥸ�ʥ��
    QUERY_STRING��ؤ��褦�ˡ�

: WEBrick::HTTPRequest#query_string= [new]

#Wed Sep 28 15:14:19 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * lib/webrick/httprequest.rb (WEBrick::HTTPRequest#query_string=):
#         add new method.

    �᥽�å��ɲá�

: Readline [bug]

#Mon Oct 31 03:19:36 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * ext/readline/readline.c (readline_readline): type check.
#         [ruby-core:6089]

    IO�ʳ���$stdout�˥��åȤ����readline��SEGV���Ƥ����Х��ν�����((<ruby-core:6089>))

: Syck [bug]

#Tue Dec 20 13:11:59 2005  Hirokazu Yamamoto  <ocean@m2.ccsnet.ne.jp>
#
#       * ext/syck/rubyext.c: fixed GC problem (backported HEAD 1.55 - 1.62)
#         [ruby-dev:27839]
#
#       * ext/syck/syck.h (S_FREE): small hack. no need to check if pointer is
#         NULL or not before S_FREE.
#
#       * st.c: uses malloc instead of xmalloc to avoid GC. syck uses st_insert
#         in gram.c to insert node from rb_syck_bad_anchor_handler into
#         SyckParser's hash table. if GC occurs in st_insert, it's not under
#         SyckParser's mark system yet. so RString can be released wrongly.
#         [ruby-dev:28057]

#Wed Oct 26 09:27:27 2005  Hirokazu Yamamoto  <ocean@m2.ccsnet.ne.jp>
#
#       * ext/syck/implicit.c (syck_type_id_to_uri): should return
#         newly allocated memory. otherwise, type_id will be freed
#         twice. [ruby-dev:27384] [ruby-core:6385]

    syck �Υ���Х�������((<ruby-dev:27384>)), ((<ruby-core:6385>)) ((<ruby-dev:27839>))

: irb [bug]

#Tue Oct 25 15:32:00 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * lib/irb.rb (IRB::Irb::eval_input): handle prompts with newlines
#         in irb auto-indentation mode.  [ruby-core:06358]

    irb�Υץ���ץȤ˲���ʸ�����ޤޤ�Ƥ���Ȥ��˥����ȥ���ǥ�Ȥ�
    �����Х��ν�����((<ruby-core:06358>))

: RDoc [bug]

#Tue Oct 25 02:12:08 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * lib/rdoc/markup/simple_markup.rb (SM::SimpleMarkup::LABEL_LIST_RE):
#         reduce redundant backtrack.  [ruby-talk:161771]

    ����ɽ���ΥХå��ȥ�å��������ʤꤹ���Ƽ��Ԥ��뤳�Ȥ����ä��Х�������
    ((<ruby-talk:161771>))

: Win32API [bug]

#Mon Oct 24 20:49:45 2005  NAKAMURA Usaku  <usa@ruby-lang.org>
#
#       * ext/Win32API/lib/win32/resolv.rb (get_info): support multiple DNS.
#         fixed: [ruby-list:40058], [ruby-dev:27479]
#

    DNS���ư��ʣ�����ꤷ������������ư��Ƥ��ʤ��ä��Х�������
    ((<ruby-list:40058>)), ((<ruby-dev:27496>))

: Rinda [bug]

#Sun Oct 16 14:30:05 2005  Masatoshi SEKI  <m_seki@mva.biglobe.ne.jp>
#
#       * lib/rinda/rinda.rb (Rinda::Tuple#initialize): check remote hash
#         tuple. fixed: [ruby-list:41227]
#
#       * test/rinda/test_rinda.rb: test it.

    Hash���Τ�dump�Ǥ��ʤ����֥������ȤȤ��ư����Ƥ��ޤ�����
    ((<ruby-list:41227>))

: Iconv [compat]

#Sat Oct  8 20:04:40 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * ext/iconv/charset_alias.rb: parse config.charset_alias file directly.

    iconv/charset_alias �ˤ����ơ�Windows��Ǥ�encoding̾����̾�ơ�
    �֥����������褦�ˤ�����

    iconv/charset_alias �ϡ����󥳡��ǥ���̾�Υץ�åȥե������
    ���㤤��ۼ����뤿��Υ桼�ƥ���ƥ��Ǥ����ܺ٤ϡ�((<iconv>)) ���ȡ�

: cgi [bug]

#Fri Oct  7 09:54:00 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * lib/cgi.rb (CGI::Cookie::parse): Cookies from Nokia devices may
#         not be parsed correctly.  A patch from August Z. Flatby
#         (augustzf) in [ruby-Patches-2595].  [ruby-core:06183]

    NOKIA�η���(?)�����Cookie���������ѡ����Ǥ��ʤ��ä�����ν�����
    ((<ruby-Patches:2595>)), ((<ruby-core:06183>))

# : xmlrpc

#Wed Oct 05 04:42:38 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * lib/xmlrpc/server.rb (XMLRPC::Server#initialize): should mount the
#         servlet on "/".
#
# ��

#Wed Oct 05 03:59:09 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * lib/xmlrpc/server.rb (XMLRPC::Server#serve): delete wrong call
#         of "join".
#
# ��

: DL [bug]

#Thu Sep 29 10:26:18 2005  Tanaka Akira  <akr@m17n.org>
#
#       * ext/dl/dl.c (rb_io_to_ptr): abolish sizeof(FILE).
#         [ruby-dev:27317]

    FILE���Դ������Ȥ��Ƥ����������ʤ��Ķ����б���((<ruby-dev:27317>))

: fileutils [bug]

#Sat Sep 24 08:38:07 2005  Minero Aoki  <aamine@loveruby.net>
#
#       * lib/fileutils.rb: fix visibility of FileUtils::NoWrite, Verbose,
#         DryRun (backported from trunk, rev 1.66). [ruby-core:05954]
#
#       * test/fileutils/test_nowrite.rb: test it.
#
#       * test/fileutils/test_dryrun.rb: new file.
#
#       * test/fileutils/test_verbose.rb: new file.

    FileUtils::NoWrite, Verbose, DryRun �Υ᥽�åɤ��Ƥ٤ʤ��ʤäƤ���
    �Τ������ޤ�����((<ruby-core:05954>))

: extmk, mkmf [compat]

#Sat Oct 22 23:54:07 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * ext/extmk.rb, lib/mkmf.rb (with_config): support --with-extension
#         options.  [ruby-dev:27449]
#

    --with-extention ���ץ�����ɲá�((<ruby-dev:27449>))

: mkmf: find_executable() [compat]

#Thu Sep 22 23:36:24 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * lib/mkmf.rb (find_executable0): default path if environment is not
#         set.  [ruby-dev:27281]

  �¹ԥե������õ������Ȥ��˴Ķ��ѿ� PATH �����åȤ���Ƥ�
  �ʤ������θ���ޤ�����((<ruby-dev:27281>))

  PATH �����åȤ���Ƥ��ʤ����ϡ�
    /usr/local/bin:/usr/ucb:/usr/bin:/bin
  ��PATH����������Ѥ��Ƥ������饳�ޥ�ɤ�õ�����ޤ���

== ��ĥ�饤�֥��API

: rb_funcall2() [bug]

#Thu Dec  1 00:50:33 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * eval.c (rb_funcall2): allow to call protected methods.
#         fixed: [ruby-dev:27890]

    ��ĥ�饤�֥��(C����)����Ruby�᥽�åɤ�Ƥִؿ�
    rb_funcall2() �� (private �᥽�åɤ�Ƥ٤�Τ�) protected �᥽�å�
    ��Ƥ٤ʤ��Զ��������ޤ�����((<ruby-dev:27890>))

: rb_respond_to() [change]

#Tue Oct 11 21:41:58 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * eval.c (rb_obj_respond_to): check if obj responds to the given
#         method with the given visibility.  [ruby-dev:27408]
#
#       * eval.c (rb_respond_to): conform to Object#respond_to?.  [ruby-dev:27411]

    rb_respond_to()��Object#respond_to?�Υǥե���Ȥ�ư���Ʊ��(public 
    �᥽�åɤˤ���ȿ�����ʤ�)�ˤ�����((<ruby-dev:27411>))

: rb_obj_respond_to() [new]

    �ɲá�rb_respond_to() �Ȱۤʤ�Ļ��������Ǥ��롣((<ruby-dev:27408>))

== �ץ�åȥե������ͭ

: bccwin32 [bug]

#Mon Nov 28 13:08:54 2005  Hirokazu Yamamoto  <ocean@m2.ccsnet.ne.jp>
#
#       * win32/win32.c (rb_w32_strerror): remove all CR and LF. (avoid broken
#         error message on bccwin32 + winsock)

    bccwin32 �� winsock �Υ��顼��ɽ������Ȥ���strerror ���֤����顼
    ��å�����������˲��Ԥ����뤿��ˡ�ruby �ν��Ϥ��륨�顼��å���
    ��������Ƥ����Τ�����

: cygwin [bug]

#Sat Nov 26 19:57:45 2005  WATANABE Hirofumi  <eban@ruby-lang.org>
#
#       * dln.c (conv_to_posix_path): should initialize posix.

    cygwin�Ķ��ǡ�RUBYLIB�Ķ��ѿ��������ȡ�$LOAD_PATH�˥��ߤ����롣
    ((<ruby-dev:27830>))

: BeOS [bug]

#Fri Nov 11 07:44:18 2005  Hirokazu Yamamoto  <ocean@m2.ccsnet.ne.jp>
#
#       * configure.in: undef HAVE_LINK on BeOS. (link(2) always returns
#         EINVAL, and this causes error in test/fileutils.)
#
#       * file.c: overwride chown(2) and fchown(2) on BeOS. (these functions
#         should not change user/group id if -1 is passed as corresponding
#         argument, and this causes error in test/fileutils too)
#         [ruby-dev:27672]
#
#       * file.c (rb_file_s_link): checks HAVE_LINK.

    BeOS �ǤΤ����Ĥ��Υƥ��ȼ��Ԥ��н衣link(2) ���������Ƥ��ʤ���
    ��˼��Ԥ���Τ� test/fileutils ����ư��Ƥ����Τ��н衣BeOS ��
    �� link(2) ��¸�ߤ��ʤ��ȸ��ʤ��褦�ˤ�����chown��fchown �� id ��
    ���� -1 ���Ϥ������ϡ�POSIX Ū�ˤ� id ���ѹ����٤��Ǥʤ�����BeOS 
    �Ǥ� (unsigned) -1 ���ѹ����Ƥ��ޤäƤ�����������н衣((<ruby-dev:27672>))

: Sun [bug]

#Mon Oct 31 17:34:46 2005  Yukihiro Matsumoto  <matz@ruby-lang.org>
#
#       * configure.in: use proper option for Sun linker. A patch from
#         Shinya Kuwamura <kuwa@labs.fujitsu.com>.  [ruby-dev:27603]
#

    Sun�Υ���ѥ���ǳ�ĥ�饤�֥����󥯤Ǥ��ʤ��ä�����ν�����((<ruby-dev:27603>))

: IA64 [bug]

#Wed Oct 26 09:04:51 2005  Hirokazu Yamamoto  <ocean@m2.ccsnet.ne.jp>
#
#       * ruby.h (Qfalse, Qtrue, Qnil, Qundef): make sure these immediate
#         values have VALUE type. there is an environment where sizeof(VALUE)
#         != sizeof(int) like IA64. if 32bit integer (Qtrue) is passed to ANYARGS
#         and received by 64bit integer (VALUE), upper bits may have garbage value.
#         [ruby-dev:27513]

    IA64 �ǡ�Qtrue Qfalse Qnil �� 64bit �����Ǥʤ� 32bit �����Ȥ�����
    ������Ƥ������ᡢANYARGS ���̤��� Qtrue ���Ϥ���VALUE �Ǽ�����ȡ�
    �������ΰ㤤�����ͤ�����뤳�ȤΤ��ä����������((<ruby-dev:27513>))

# == ����
#
#Mon Nov 28 09:21:49 2005  Hirokazu Yamamoto  <ocean@m2.ccsnet.ne.jp>
#
#       * lib/mkmf.rb (create_makefile): should not change sodir with
#         dir.gsub!. (bccwin32 failed to install third party exntesions)
#         [ruby-dev:27834]
#
#�ʤ�Ȥʤ����פ��ʡ�
#
#    EXTOUT ��Ȥ鷺��extconf.rb �ǳ�����ĥ�饤�֥��򥤥󥹥ȡ��뤹��
#    ���ˡ�make �������å�̾���տޤ������Ѥ���Ƥ������ᡢbccwin32 �ǳ�
#    ĥ�饤�֥�꤬���󥹥ȡ���Ǥ��ʤ��ʤäƤ����Τ�����

#Sun Nov 27 00:56:13 2005  NAKAMURA, Hiroshi  <nahi@ruby-lang.org>
#
#       * lib/wsdl/xmlSchema/complexContent.rb: missing
#         ComplexContent#elementformdefault method.
#
# ��

#Tue Nov  8 15:32:27 2005  GOTOU Yuuzou  <gotoyuzo@notwork.org>
#
#       * lib/drb/ssl.rb (DRb::SSLConfig#accept): fixed typo.
#         [ruby-dev:27560] [ruby-core:4627]
#
# ��

#Sat Oct  8 20:04:40 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * eval.c (Init_Binding): add Binding#dup method.  [yarv-dev:666]
#
# �᥽�åɤ��ɲá����ס�

#Sat Oct  8 20:04:40 2005  Nobuyoshi Nakada  <nobu@ruby-lang.org>
#
#       * parse.y (rb_parser_malloc, rb_parser_free): manage parser stack on
#         heap.  [ruby-list:41199]
#
# Bison 2.0�б�