= String

* String#((<String/split>))�ϺǸ�ζ�ʸ�����������Τǡġ�

    string = ""
    p string.split(//) #=> []
    
  �Ĥͤ�String���֤�Ȥϸ¤�ޤ���

  �Ǹ�ζ�ʸ���������������ʤ����ϡ���2��������ꤷ�ޤ���

    string = ""
    p string.split(//, -1) #=> [""]

  �����������ξ��ʲ��Τ褦�ˤʤ뤳�Ȥ����ա�

    string = "abc"
    p string.split(//, -1) #=> ["a", "b", "c", ""]

* String#((<String/[]>)) �ϡ�������1�Ĥ������ξ��ϡ��������֤��ޤ���ʸ����ǤϤ���ޤ���

    p 'hoge'[2, 1] # => "g"
    p 'hoge'[2] # => 103

* ����Ⱦ�Ѥ��Ѵ��ǡ����Ѥ�Ⱦ�ѥ���ե��٥åȤˤ������������ tr("��-��","A-Z")���Ǥ��ʤ��ΤϤʤ��� 

  jcode �� require ���ޤ��礦��

   $ ruby -Ke -rjcode -e 'p "��-��".tr("��-��","A-Z")'
   "A-Z"