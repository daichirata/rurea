
BDD ���˥ƥ��Ȥ�񤯤���Υ��饹��᥽�åɤ�������뤿��Υ饤�֥��Ǥ���

���Υ饤�֥��� [[c:Object]] �� BDD (Behavior Driven Development) �Ѥθ����᥽�åɤ��ɲä��ޤ���
�ɲä����᥽�åɤ� [[c:MiniTest::Assertions]] ���������Ƥ���᥽�åɤؤ�
������åѡ��ˤʤäƤ��ޤ���

#@# message ����ꤹ��Ȥ������ʤ��Ȥˤʤ�

= reopen Module

== Public Instance Methods

--- infect_with_assertions(positive_prefix, negative_prefix, skip_regexp, map = {}) -> ()

BDD ���˥ƥ��Ȥ�񤯤���˻��Ѥ���᥽�åɷ���������ޤ���

@param positive_prefix assert ������Υץ�ե��å�������ꤷ�ޤ���

@param negative_prefix refute ������Υץ�ե��å�������ꤷ�ޤ���

@param skip_regexp ��������ɽ���˥ޥå������᥽�åɤ�������ޤ���

@param map �᥽�å�̾���Ѵ���§�Υϥå������ꤷ�ޤ���

= reopen Object

== Public Instance Methods

--- must_be_empty -> true

���Ȥ����Ǥ����硢�����˥ѥ��������Ȥˤʤ�ޤ���

@raise MiniTest::Assertion ���Ȥ� empty? �᥽�åɤ�����ʤ�����ȯ�����ޤ���
                           �ޤ������Ȥ����Ǥʤ����ˤ�ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_empty]]

--- must_equal(expected) -> true

���Ȥ�����оݤΥ��֥������Ȥ���������硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param expected ����оݤΥ��֥������Ȥ���ꤷ�ޤ���

@raise MiniTest::Assertion Ϳ����줿�����ͤȼºݤ��ͤ��������ʤ�����ȯ�����ޤ���

@see [[m:Object#==]], [[m:MiniTest::Assertions#assert_equal]]

--- must_be_within_delta(expected, delta = 0.001) -> true
--- must_be_close_to(expected, delta = 0.001) -> true

���Ȥȴ����ͤκ��������ͤ�Ϳ����줿���и����ʲ��Ǥ����硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param expected �����ͤ���ꤷ�ޤ���

@param delta ���Ƥ������и�������ꤷ�ޤ���

@raise MiniTest::Assertion Ϳ����줿�����ͤȼºݤ��ͤκ��������ͤ�Ϳ����줿��ʬ��ۤ������ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_in_delta]]

--- must_be_within_epsilon(actual, epsilon = 0.001) -> true
���Ȥȼºݤ��ͤ����и����������ϰ���Ǥ����硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param actual �ºݤ��ͤ���ꤷ�ޤ���

@param epsilon ���Ƥ������и�������ꤷ�ޤ���

@raise MiniTest::Assertion �����˼��Ԥ�������ȯ�����ޤ���

--- must_include(object) -> true

���Ȥ�Ϳ����줿���֥������Ȥ��ޤޤ�Ƥ����硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param object Ǥ�դΥ��֥������Ȥ���ꤷ�ޤ���

@raise MiniTest::Assertion ���Ȥ� include? �᥽�åɤ�����ʤ�����ȯ�����ޤ���
                           ���Ȥ�Ϳ����줿���֥������Ȥ��ޤޤ�Ƥ��ʤ�����ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_includes]]

--- must_be_instance_of(klass) -> true

���Ȥ�Ϳ����줿���饹�Υ��󥹥��󥹤Ǥ����硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param klass Ǥ�դΥ��饹����ꤷ�ޤ���

@raise MiniTest::Assertion ���Ȥ���Ϳ����줿���饹��ľ�ܤΥ��󥹥��󥹤Ǥʤ�����ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_instance_of]]

--- must_be_kind_of(klass) -> true

���Ȥ���Ϳ����줿���饹�ޤ��Ϥ��Υ��֥��饹�Υ��󥹥���
�Ǥ����硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param klass ���Ȥ���°���뤳�Ȥ���Ԥ��륯�饹����ꤷ�ޤ���

@raise MiniTest::Assertion ���Ȥ�Ϳ����줿���饹�ޤ��Ϥ��Υ��֥��饹�Υ��󥹥��󥹤ǤϤʤ�����ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_kind_of]]

--- must_match(regexp) -> true

���Ȥ���Ϳ����줿����ɽ���˥ޥå�������硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param regexp ����ɽ����ʸ�������ꤷ�ޤ���ʸ�������ꤷ����������ɽ�����Ѵ����Ƥ���
              ���Ѥ��ޤ���

@raise MiniTest::Assertion ���Ȥ�Ϳ����줿����ɽ���˥ޥå����ʤ��ä�����ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_match]]

--- must_be_nil -> true

���Ȥ� nil �Ǥ����硢�����˥ѥ��������Ȥˤʤ�ޤ���

@raise MiniTest::Assertion ���Ȥ� nil �Ǥʤ�����ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_nil]]

--- must_be -> true

���Ȥ�ɾ����̤����Ǥ����硢�����˥ѥ��������Ȥˤʤ�ޤ���

@raise MiniTest::Assertion ���Ȥ�ɾ����̤����Ǥ������ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert]]

--- must_raise(*args) -> true
���Ȥ�ɾ�����Ϳ����줿�㳰��ȯ�������硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param args ���Ȥ�ɾ�����ȯ�������ǽ���Τ����㳰���饹���İʾ���ꤷ�ޤ���

@raise MiniTest::Assertion ���Ȥ�ɾ��������̡��㳰��ȯ�����ʤ�����ȯ�����ޤ���
                           �ޤ������Ȥ�ɾ�����ȯ�������㳰����Ϳ����줿�㳰
                           �ޤ��Ϥ��Υ��֥��饹�Ǥʤ�����ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_raises]]

--- must_respond_to(method_name) -> true
���Ȥ�Ϳ����줿�᥽�åɤ���ľ�硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param method_name �᥽�å�̾����ꤷ�ޤ���

@raise MiniTest::Assertion ���Ȥ�Ϳ����줿�᥽�åɤ�����ʤ�����ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_respond_to]]

--- must_be_same_as(actual) -> true
���Ȥ�Ϳ����줿���֥������Ȥ� [[m:Object#object_id]] ��Ʊ����硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param actual Ǥ�դΥ��֥������Ȥ���ꤷ�ޤ���

@raise MiniTest::Assertion ���Ȥ�Ϳ����줿���֥������Ȥ��ۤʤ����ȯ�����ޤ���

--- must_send -> true
#@todo
#@# �ɤ���äƻȤ���
#@# �������顢������Ф���ɾ��������̤����ξ�硢�����˥ѥ��������Ȥˤʤ�ޤ���
#@# 
#@# @param array ������Ǥ˥쥷���ФȤʤ�Ǥ�դΥ��֥������ȡ��������Ǥ˥᥽�å�̾��
#@#              �軰���Ǥ˥ѥ�᡼���򤽤줾����ꤷ���������ꤷ�ޤ���
#@# 
#@# @raise MiniTest::Assertion ���Ф������������֤�����ȯ�����ޤ���
#@#
#@# @see [[m:MiniTest::Assertions#assert_send]]

--- must_throw(tag) -> true
���Ȥ�ɾ����ˡ�Ϳ����줿������ [[m:Kernel.#throw]] ���줿��硢�����˥ѥ��������Ȥˤʤ�ޤ���

@param tag ���Ȥ�ɾ����� [[m:Kernel.#throw]] ����륿����Ǥ�դΥ��֥������ȤȤ��ƻ��ꤷ�ޤ���

@raise MiniTest::Assertion Ϳ����줿������ [[m:Kernel.#throw]] ����ʤ��ä�����ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_throws]]

= reopen Kernel

== Private Instance Methods

--- describe(desc){ ... }

Ϳ����줿����ʸ����̾����������ƥƥ��ȥ��饹��������ޤ���

���饹������ϡ�Ϳ����줿�֥��å������Ƥˤʤ�ޤ���

@param desc �֥��å����Ф�����������ꤷ�ޤ���

= class MiniTest::Unit::TestCase
= class MiniTest::Spec < MiniTest::Unit::TestCase

BDD ���˥ƥ��Ȥ�񤯤���� [[c:MiniTest::Unit::TestCase]] ���Ф����åѡ����饹�Ǥ���

== Singleton Methods

--- new(name)

Ϳ����줿̾���Ǽ��Ȥ��������ޤ���

--- current -> MiniTest::Spec

���߼¹���� [[c:MiniTest::Spec]] �Υ��󥹥��󥹤��֤��ޤ���

--- before(type = :each){ ... } -> Proc

�ƥƥ��Ȥ����˼¹Ԥ���֥��å�����Ͽ���ޤ���

@param type :each ����ꤹ�뤳�Ȥ��Ǥ��ޤ���

@raise RuntimeError type �� :each �ʳ�����ꤹ���ȯ�����ޤ���

--- after(type = :each){ ... } -> Proc

�ƥƥ��Ȥθ�˼¹Ԥ���֥��å�����Ͽ���ޤ���

@param type :each ����ꤹ�뤳�Ȥ��Ǥ��ޤ���

@raise RuntimeError type �� :each �ʳ�����ꤹ���ȯ�����ޤ���

--- it(desc){ ... } -> ()

�ƥ��ȥ���������������ޤ���

Ϳ����줿�֥��å�����ĤΥƥ��ȥ��������������ޤ���

@param desc �ƥ��ȥ���������������ꤷ�ޤ���
