require webrick/httputils
require webrick/httputils
require webrick/httpstatus

= class WEBrick::HTTPServlet::HTTPServletError < StandardError

�桼�����������������֥�å�����㳰��ȯ��������Ȥ��˻Ȥ����������⤷
��ޤ���


= class WEBrick::HTTPServlet::AbstractServlet < Object

�����֥�åȤ���ݥ��饹�Ǥ��������� AbstractServlet �Υ��֥��饹�ǹԤ��ޤ���

�����֥�åȤϰʲ��Τ褦�˻Ȥ��ޤ���[[c:WEBrick::HTTPServlet::CGIHandler]] ��
[[lib:webrick/httpservlet/cgihandler]] ���󶡤���Ƥ��륵���֥�åȤǤ���
CGIHandler �� AbstractServlet �Υ��֥��饹�Ǥ���

 require 'webrick'
 srv = WEBrick::HTTPServer.new({ :DocumentRoot => './',
                                 :BindAddress => '127.0.0.1',
                                 :Port => 20080})
 srv.mount('/view.cgi', WEBrick::HTTPServlet::CGIHandler, 'view.rb')
 trap("INT"){ srv.shutdown }
 srv.start

��Υ�����ץȤǤϰʲ��Τ褦��ή��� view.rb �ϼ¹Ԥ���ޤ���

 (1) �����ФΥѥ� /view.cgi �� CGIHandler ���ޥ���Ȥˤ���ӤĤ����ޤ���
 (2) �ѥ� /view.cgi �˥������������뤿�Ӥ˥�����(WEBrick::HTTPServer ���֥�������)�� 'view.rb' 
     ������Ȥ��� CGIHandler ���֥������Ȥ��������ޤ���
 (3) �����Фϥꥯ�����ȥ��֥������Ȥ�����Ȥ��� CGIHandler#service �᥽�åɤ�ƤӤޤ���
 (4) CGIHandler ���֥������Ȥ� view.rb �� CGI ������ץȤȤ��Ƽ¹Ԥ��ޤ���

���Τ褦�� [[c:WEBrick]] �Ǥ� Web �����Фε�ǽ������ʬ�������֥�åȤη����󶡤���Ƥ��ޤ���
�ޤ������֥�åȤ�������뤳�Ȥˤ�꿷���ʵ�ǽ�� Web �����Ф��ɲä��뤳�Ȥ�Ǥ��ޤ���

== Class Methods

--- new(server, *options)    -> WEBrick::HTTPServlet::AbstractServlet

�����֥�åȤ����������֤��ޤ���
[[c:WEBrick::HTTPServer]] ���֥������Ȥ� server �˼��Ȥ���ꤷ�ƥ����֥�åȤ��������ޤ���

@param server �����֥�åȤ��������� WEBrick::HTTPServer ���֥������Ȥ���ꤷ�ޤ���

@param options [[m:WEBrick::HTTPServer#mount]] ��3�����ʹߤ˻��ꤵ�줿�ͤ����Τޤ�Ϳ�����ޤ���

--- get_instance(server, *options)    -> WEBrick::HTTPServlet::AbstractServlet

new(server, *options) ��ƤӽФ��ƥ����֥�åȤ����������֤��ޤ���
[[c:WEBrick::HTTPServer]] ���֥������ȤϼºݤˤϤ��� get_instance �᥽�åɤ�ƤӽФ���
�����֥�åȤ��������ޤ���

�ä���ͳ��̵���¤� AbstractServlet �Υ��֥��饹�����Υ᥽�åɤ���������ɬ�פϤ���ޤ���

@param server [[m:WEBrick::HTTPServer#mount]] ��3�����ʹߤ˻��ꤵ�줿�ͤ����Τޤ�Ϳ�����ޤ���

@param options [[m:WEBrick::HTTPServer#mount]] ��3�����ʹߤ˻��ꤵ�줿�ͤ����Τޤ�Ϳ�����ޤ���

== Instance Methods

--- service(request, response)    -> ()

���ꤵ�줿 [[c:WEBrick::HTTPRequest]] ���֥������� request �� [[m:WEBrick::HTTPRequest#request_method]] �˱����ơ�
���Ȥ� do_GET, do_HEAD, do_POST, do_OPTIONS... �����줫�Υ᥽�åɤ� request �� response ������Ȥ��ƸƤӤޤ���

[[c:WEBrick::HTTPServer]] ���֥������Ȥϥ��饤����Ȥ���Υꥯ�����Ȥ����뤿�Ӥ�
�����֥�åȥ��֥������Ȥ������� service �᥽�åɤ�ƤӤޤ���

�ä���ͳ��̵���¤� AbstractServlet �Υ��֥��饹�����Υ᥽�åɤ��������ɬ�פϤ���ޤ���

@param request ���饤����Ȥ���Υꥯ�����Ȥ�ɽ�� [[c:WEBrick::HTTPRequest]] ���֥������ȤǤ���

@param response ���饤����ȤؤΥ쥹�ݥ󥹤�ɽ�� [[c:WEBrick::HTTPResponse]] ���֥������ȤǤ���

@raise WEBrick::HTTPStatus::MethodNotAllowed 
       ���ꤵ�줿 [[c:WEBrick::HTTPRequest]] ���֥�������  req �����Ȥ��������Ƥ��ʤ� 
       HTTP �Υ᥽�åɤǤ��ä����ȯ�����ޤ���


--- do_GET(request, response)        -> ()
--- do_HEAD(request, response)       -> ()
--- do_POST(request, response)       -> ()
--- do_PUT(request, response)        -> ()
--- do_DELETE(request, response)     -> ()
--- do_OPTIONS(request, response)    -> ()

���Ȥ� service �᥽�åɤ��� HTTP �Υꥯ�����Ȥ˱�����
�ƤФ��᥽�åɤǤ���AbstractServlet �Υ��֥��饹�Ϥ����Υ᥽�åɤ�Ŭ�ڤ˼�����
�ʤ���Ф����ޤ����֤��ͤ��ä˵��ꤵ��Ƥ��ޤ���

���饤����Ȥ��Ȥ���ǽ���Τ��� RFC ��������줿 HTTP �Υ᥽�åɤϤ��٤Ƽ�������ɬ�פ�����ޤ���
���饤����Ȥ���Υꥯ�����Ȥ˻Ȥ��ʤ���ʬ���äƤ���᥽�åɤϼ������ʤ��Ƥ⤫�ޤ��ޤ���
��������Ƥ��ʤ� HTTP �᥽�åɤǤ��ä���硢���Ȥ� service �᥽�åɤ�
�㳰��ȯ�������ޤ���

���Υ᥽�åɤ��ƤФ줿�����Ǥϡ����饤����Ȥ���Υꥯ�����Ȥ˴ޤޤ�� Entity Body ���ɤ߹��ߤ�
�ޤ��Ԥ��Ƥ��ޤ���[[m:WEBrick::HTTPRequest#query]], [[m:WEBrick::HTTPRequest#body]] �ʤɤ�
�᥽�åɤ��ɤФ줿�������ɤ߹��ߤ��Ԥ��ޤ������饤����Ȥ������ʥǡ����������Ƥ��뤳�Ȥ��θ����
�桼���ϥץ�����ߥ󥰤�Ԥ��٤��Ǥ���

@param request ���饤����Ȥ���Υꥯ�����Ȥ�ɽ�� [[c:WEBrick::HTTPRequest]] ���֥������ȤǤ���

@param response ���饤����ȤؤΥ쥹�ݥ󥹤�ɽ�� [[c:WEBrick::HTTPResponse]] ���֥������ȤǤ���

��:

  require 'webrick'
  class HogeServlet < WEBrick::HTTPServlet::AbstractServlet 
    def do_GET(req, res)
       res.body = 'hoge'
    end
  end

  srv = WEBrick::HTTPServer.new({ :DocumentRoot => './',
                                  :BindAddress => '127.0.0.1',
                                  :Port => 20080})
  srv.mount('/', HogeServlet)
  trap("INT"){ srv.shutdown }
  srv.start