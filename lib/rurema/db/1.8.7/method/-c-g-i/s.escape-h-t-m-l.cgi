names=escapeHTML
visibility=public
kind=defined

--- escapeHTML(string) -> String

Ϳ����줿ʸ������� &"<> ����λ��Ȥ��ִ�����ʸ����򿷤����������֤��ޤ���

@param string ʸ�������ꤷ�ޤ���

        require "cgi"

        p CGI.escapeHTML("3 > 1")   #=> "3 &gt; 1"

        print('<script type="text/javascript">alert("�ٹ�")</script>')

        p CGI.escapeHTML('<script type="text/javascript">alert("�ٹ�")</script>')
        #=> "&lt;script type=&quot;text/javascript&quot;&gt;alert(&quot;�ٹ�&quot;)&lt;/script&gt;"
