###nonref

= 4. ��ʸ

* ((<FAQ::��ʸ/4.1 (({:exit}))����(({:}))�ΤĤ������̻Ҥϲ��Ǥ���>))
* ((<FAQ::��ʸ/4.2 ����ܥ��Ʊ̾���ѿ����ͤ���Ф��ˤϤɤ�����Ф����Ǥ���>))
* ((<FAQ::��ʸ/4.3 (({loop}))�����湽¤�Ǥ���>))
* ((<FAQ::��ʸ/4.4 (({a +b}))�����顼�ˤʤ�ޤ���>))
* ((<FAQ::��ʸ/4.5 (({s = "x"; puts s *10})) �����顼�ˤʤ�ޤ���>))
* ((<FAQ::��ʸ/4.6 (({p {}}))�ǲ���ɽ������ޤ���>))
* ((<FAQ::��ʸ/4.7 pos=() �Ȥ��� setter �᥽�åɤ�����Τˡ�pos = 1 �Ȥ��Ƥ�ʤˤⵯ���äƤ��ʤ��褦�˸�����>))
* ((<FAQ::��ʸ/4.8 (({'\1'}))��(({'\\1'}))�Ϥɤ��㤤�ޤ���>))
* ((<FAQ::��ʸ/4.9 (({p true or true and false}))��(({true}))��ɽ������Τˡ�(({a=true if true or true and false}))�Ǥϡ�(({a}))��(({true}))����������ޤ���>))
* ((<FAQ::��ʸ/4.10 (({p(nil || "")})) �Ϥʤ�Ǥ�ʤ��Τˡ� (({p(nil or "")})) �ϥѡ������顼���ȸ����ޤ�>))

== 4.1 (({:exit}))����(({:}))�ΤĤ������̻Ҥϲ��Ǥ���

����ܥ�ȸƤФ�롢���̻Ҥ�1��1�б����륪�֥������ȤǤ�
((-version 1.4 �����ϥ���ܥ������(Fixnum)�Ǽ�������Ƥ��ޤ��������ߤ�Symbol���饹�Υ��󥹥��󥹤Ǥ�-))��
"exit".intern�Ȥ��Ƥ�����ޤ���catch, throw, autoload�ʤɤǤϡ�
�����Ȥ���ʸ����⥷��ܥ��Ȥ��ޤ���

== 4.2 ����ܥ��Ʊ̾���ѿ����ͤ���Ф��ˤϤɤ�����Ф����Ǥ���

(({symbol}))�Υ������פ�(({eval( (:symbol).id2name)}))�Ȥ���ȡ�
�ͤ����Ф��ޤ���

  a = 'This is the content of "a"'
  b = eval(:a.id2name)
  a.object_id == b.object_id

== 4.3 (({loop}))�����湽¤�Ǥ���

�᥽�åɤǤ����֥��å��Ͽ��������������ѿ��Υ������פ�Ƴ�����ޤ���

== 4.4 (({a +b}))�����顼�ˤʤ�ޤ���

(({a(+b)}))�Ȳ��Ϥ���Ƥ��ޤ���(({+}))��ξ¦�ζ����ʤ�����������뤫
�Τɤ��餫�ˤ��Ƥ���������

== 4.5 (({s = "x"; puts s *10})) �����顼�ˤʤ�ޤ���

(({puts s *10})) �ΤȤ�������s(*10)�Ȥ����᥽�åɸƤӽФ��Ȳ��Ϥ����
���ޤ��ޤ���(({s*10}))�ˤ��뤫��(({s * 10}))�ˤ��Ƥ���������

((<ruby 1.8 feature>)): 1.8(?) �ʹߤǤϥ��顼�ˤʤ�ޤ���

== 4.6 (({p {}}))�ǲ���ɽ������ޤ���

{}���ϥå���Υ��󥹥ȥ饯���ǤϤʤ����֥��å��Ȳ��Ϥ���Ƥ��ޤ���
p({}) �� p Hash.new �Τ褦�ˤ��Ʋ��򤷤Ƥ���������

== 4.7 pos=() �Ȥ��� setter �᥽�åɤ�����Τˡ�pos = 1 �Ȥ��Ƥ�ʤˤⵯ���äƤ��ʤ��褦�˸�����

����ϰʲ��Τ褦����Ǥ���

  class C
    attr_reader :pos
    def pos=(n)
      @pos = n * 3
    end

    def set
      pos = 1   #A
    end
  end

  a = C.new
  a.set
  p a.pos    #=> nil (3 ����Ԥ��Ƥ���)

�Ǹ�ιԤ� 3 ����Ԥ��Ƥ⡢�ºݤˤ� nil �ˤʤ�ޤ���
Ruby �� A �ιԤ���������ѿ��ؤ������Ȳ�᤹�뤫��Ǥ���
pos=() �θƤӤ����ˤ���ˤ� (({self.pos = 1})) �Ȥ��Ƥ���������

== 4.8 (({'\1'}))��(({'\\1'}))�Ϥɤ��㤤�ޤ���

Ʊ���Ǥ������󥰥륯�����Ȥ���Ǥϡ�(({\'}))��(({\\}))��������(({\}))
(���Ԥ�̵���ˤ��ޤ�)��������ᤵ�졢����ʳ��ϲ�ᤵ��ޤ���
((-((<ruby 1.8 feature>)): 1.8.1(?) �ʹߤǤϥ��󥰥륯�����ȤǰϤޤ�
��ʸ����ǤϹ�����\�� \ ���Τ�ΤȤ��Ʋ�ᤵ��ޤ���((<ruby-dev:21339>))-))

== 4.9 (({p true or true and false}))��(({true}))��ɽ������Τˡ�(({a=true if true or true and false}))�Ǥϡ�(({a}))��(({true}))����������ޤ���

�ǽ�μ��ϡ�(({(p true) or true and false}))�Ȳ�ᤵ��ޤ���
(({and/or}))��
ʸ�ι������ǤȤ��Ʋ�ᤵ�졢(({p}))�ΰ������ֱ黻�ҤȤ��Ƥϲ�ᤵ��
�ޤ���

2���ܤΤϡ�(({a=true if (true or true and false)}))�Ȳ�ᤵ��Ƥ��ޤ���
(({if}))������(({and/or}))���ͥ���̤��㤤���ȡ�
(({or}))��(({and}))��ͥ���̤�Ʊ���ʤΤǡ�
�������˲�ᤵ��뤳�Ȥˤ��ޤ���

== 4.10 (({p(nil || "")})) �Ϥʤ�Ǥ�ʤ��Τˡ� (({p(nil or "")})) �ϥѡ������顼���ȸ����ޤ�

|| �ϰ������֤��Ȥ��Ǥ��ޤ�����or ��ʸ��ʸ���֤��Ȥ����Ǥ�����
�������֤��Ȥ��Ǥ��ʤ�����Ǥ������ΰ㤤�ϡ����Ȥ��аʲ��Τդ��Ĥ�
���η�̤��ɤ��ʤ뤫��Ƥߤ�Ф狼��ޤ���

    p nil || ""
    p nil or ""