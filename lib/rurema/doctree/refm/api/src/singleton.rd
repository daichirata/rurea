Singleton �ѥ�����򰷤�����Υ饤�֥��Ǥ���

= module Singleton

Singleton �ѥ�������󶡤���⥸�塼��Ǥ���

Mix-in �ˤ�� singleton �ѥ�������󶡤��ޤ���

Singleton �⥸�塼��� include ���뤳�Ȥˤ�ꡢ���饹��
�⡹�ҤȤĤΥ��󥹥��󥹤��������ʤ����Ȥ��ݾڤ���ޤ���

Singleton �� Mix-in �������饹��
���饹�᥽�å� instance �Ϥ���ͣ��Υ��󥹥��󥹤��֤��ޤ���

new �� private �᥽�åɤ˰ܤ��졢��������ƤӽФ����Ȥ���ȥ��顼�ˤʤ�ޤ���

=== ����ץ륳����

  require 'singleton'
  class SomeSingletonClass
    include Singleton
   #....
  end
  a = SomeSingletonClass.instance
  b = SomeSingletonClass.instance  # a and b are same object
  p [a,b]
  a = SomeSingletonClass.new               # error (`new' is private)

== Singleton Methods

--- instance -> object

���Υ��饹��ͣ��Υ��󥹥��󥹤��֤��ޤ���
�ǽ�˸ƤФ줿�Ȥ��Ϥ��Υ��󥹥��󥹤��������ޤ���

Singleton �� include �������饹���������ޤ��Τǡ�
���Τˤ� Singleton �⥸�塼��Υ᥽�åɤǤϤ���ޤ���