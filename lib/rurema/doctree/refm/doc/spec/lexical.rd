= ���繽¤

  * [[ref:identifier]]
  * [[ref:comment]]
  * [[ref:embed]]
  * [[ref:reserved]]

Ruby�θ��ߤμ�����ASCII����饯�����åȤ��Ѥ��Ƥ��ޤ�������
�ե��٥åȤ���ʸ���Ⱦ�ʸ���϶��̤���ޤ������̻ҤȰ����Υ��
�������������Ƥ�Ǥ�դξ��˶���ʸ���䥳���Ȥ��֤�����
���Ǥ��ޤ�������ʸ���Ȥϥ��ڡ��������֡���ľ���֡��Хå����ڡ�
���������å��꥿���󡢥饤��ե����ɡ����ڡ����Ǥ������ԤϹԤ����餫�˼���
�Ԥ˷�³���������������ʸ���Ȥ��ơ�����ʳ��Ǥ�ʸ�ζ��ڤ��
���Ʋ�ᤵ��ޤ���

���Ԥ�ǧ�������Τϡ������å��꥿����+�饤��ե����ɤ��饤��ե����ɤǤ���

===[a:identifier] ���̻�

��:

          foobar
          ruby_is_simple

Ruby�μ��̻Ҥϱ�ʸ���ޤ��ϥ������������('_')��
��Ϥޤꡢ��ʸ�����������������('_')�ޤ��Ͽ���
����ʤ�ޤ������̻Ҥ�Ĺ�������¤Ϥ���ޤ���

===[a:comment] ������

��:

          # this is a comment line

������ץȸ���ν����ˤʤ餤��ʸ���������ͥ�ƥ�� `?#' �ʳ���
#��������ޤǤ򥳥��Ȥȸ��ʤ��ޤ���

===[a:embed] �����ߥɥ������

��:

          =begin
          the everything between a line beginning with `=begin' and
          that with `=end' will be skipped by the interpreter.
          =end

Ruby�Υ����������ɤ˥ɥ�����Ȥ�����������Ǥ��ޤ���ʸ��
�Ϥޤ���ʬ�ι�Ƭ��=begin���顢=end�ǻϤޤ�ԤޤǤ�
�����ߥɥ�����ȤǤ���Ruby ���󥿥ץ꥿�Ȥ��Ƥ����Ƥ������
�����ޤ��󤬡��̾�� RD �����ǥɥ�����Ȥ������ळ�Ȥ�
���Ԥ��Ƥ��ޤ���

===[a:reserved] ͽ���

ͽ���ϰʲ��Τ�ΤǤ���

          BEGIN    class    ensure   nil      self     when
          END      def      false    not      super    while
          alias    defined? for      or       then     yield
          and      do       if       redo     true     __LINE__
          begin    else     in       rescue   undef    __FILE__
#@since 1.9.1
          break    elsif    module   retry    unless   __ENCODING__
#@else
          break    elsif    module   retry    unless
#@end
          case     end      next     return   until

ͽ���ϥ��饹̾���ѿ�̾�ʤɤ��Ѥ��뤳�ȤϤǤ��ޤ��󡣤�����
��Ƭ��$, @��@@����Ƭ�ˤĤ�����Τ�ͽ���
�Ȥϸ��ʤ���ޤ��󡣤ޤ���def �Τ��Ȥ�᥽�åɸƤӽФ���
�ԥꥪ�ɤΤ��Ȥʤɥ᥽�å�̾�Ǥ���ȤϤä���ʬ������Ǥ�
�᥽�å�̾�Ȥ����Ѥ��뤳�Ȥ��Ǥ��ޤ���