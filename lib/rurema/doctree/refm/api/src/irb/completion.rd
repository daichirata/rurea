#@# Author: Keiju ISHITSUKA

require readline

irb �� completion ��ǽ���󶡤���饤�֥��Ǥ���

=== �Ȥ���

   $ irb -r irb/completion

�Ȥ��뤫, ~/.irbrc ���

   require "irb/completion"

������Ƥ�������.
irb�¹���� require "irb/completion" ���Ƥ�褤�Ǥ�.

irb �¹���� [Tab] �򲡤��ȥ���ץ졼����󤷤ޤ�.

�ȥåץ�٥�� [Tab] �򲡤��Ȥ��٤Ƥι�ʸ����, ���饹,
�᥽�åɤθ��䤬�Ǥޤ�. ���䤬ͣ��ʤ�д������䴰���ޤ�.

  irb(main):001:0> in    
  in                    inspect               instance_eval
  include               install_alias_method  instance_of?
  initialize            install_aliases       instance_variables
  irb(main):001:0> inspect
  "main"
  irb(main):002:0> foo = Object.new
  #<Object:0x4027146c>

"�ѿ�̾." �θ�� [Tab] �򲡤���, ���Υ��֥������ȤΥ᥽�åɰ������Ǥޤ�.

  irb(main):003:0> foo.
  foo.==                  foo.frozen?             foo.protected_methods
  foo.===                 foo.hash                foo.public_methods
  foo.=~                  foo.id                  foo.respond_to?
  foo.__id__              foo.inspect             foo.send
  foo.__send__            foo.instance_eval       foo.singleton_methods
  foo.class               foo.instance_of?        foo.taint
  foo.clone               foo.instance_variables  foo.tainted?
  foo.display             foo.is_a?               foo.to_a
  foo.dup                 foo.kind_of?            foo.to_s
  foo.eql?                foo.method              foo.type
  foo.equal?              foo.methods             foo.untaint
  foo.extend              foo.nil?                
  foo.freeze              foo.private_methods     

= module IRB::Completor

irb �� completion ��ǽ���󶡤���⥸�塼��Ǥ���
�桼�������Υ⥸�塼���ľ�ܻ��Ѥ��뤳�ȤϤ���ޤ���
