require tk

= module TkGrid

extend Tk
include Tk

���������åȤ����֤��뤿��Υ⥸�塼��Ǥ���
���Υ⥸�塼��ˤ�ꡢ���������åȤϳʻҾ������֤���ޤ���

���̡����������åȤ�ʻҾ������֤���ˤ�[[m:TkWindow#grid]]���Ȥ��ޤ���

== Module Functions

--- bbox(master, *args)
#@todo

--- configure(widget1, widget2, ..., options=nil)
--- grid(widget1, widget2, ..., options=nil)
#@todo

wigetN���Ф��ơ�options�ǻ��ꤷ�����֤�Ԥ��ޤ���
options�ϡ��ʲ��Υ�������ĥϥå���Ǥ���

*"column"

����֤���ꤷ�ޤ�������֤Ϻ�������0,1,2,...�ȿ����ޤ���

*"columnspan"

���֤˻��Ѥ��벣�����Υ���ο�����ꤷ�ޤ���

*"in"
*"ipadx"
*"ipady"
*"padx"
*"pady"

*"row"

�԰��֤���ꤷ�ޤ����԰��֤Ͼ夫����0,1,2,...�ȿ����ޤ���

*"rowspan"

���֤˻��Ѥ���������Υ���ο�����ꤷ�ޤ���

*"sticky"

--- columnconfigure(master, index, args)
#@todo

�ޥ������������å�master�η����index�˴ؤ���°����
args�ǻ��ꤷ�ޤ���args�ϡ��ʲ��򥭡��˻��ĥϥå���Ǥ���

*"minsize"
*"weight"
*"pad"

args�˶��Υϥå���{}����ꤹ��ȸ��ߤ�������֤��ޤ���
((-args�Υǥե�����ͤϡ�[[c:TkComm::None]]�ˤ��������ɤ�-))

  require "tk"
  
  f = TkFrame.new.pack
  p TkGrid.columnconfigure(f, 0, {})
  
  => "-minsize 0 -pad 0 -weight 0"

((-����ͤϡ�hash�ˤ�����-))

--- rowconfigure(master, index, args)
#@todo

�ޥ������������å�master�ι԰���index�˴ؤ���°����
args�ǻ��ꤷ�ޤ���args�ϡ��ʲ��򥭡��˻��ĥϥå���Ǥ���

*"minsize"
*"weight"
*"pad"

args�˶��Υϥå���{}����ꤹ��ȸ��ߤ�������֤��ޤ���
((-args�Υǥե�����ͤϡ�[[c:TkComm::None]]�ˤ��������ɤ�-))

  require "tk"
  
  f = TkFrame.new.pack
  p TkGrid.rowconfigure(f, 0, {})
  p TkGrid.rowconfigure(f, 0, {'minsize'=>10})
  p TkGrid.rowconfigure(f, 0, {})
  
  => "-minsize 0 -pad 0 -weight 0"
     ""
     "-minsize 10 -pad 0 -weight 0"

((-����ͤϡ�hash�ˤ�����-))

  require "tk"
  
  module TkGrid
    def columnconfigure(master, index, args=None)
      Hash[tk_split_list(tk_call "grid", 'columnconfigure', master, index, *hash_kv(args))]
    end
  
    def rowconfigure(master, index, args=None)
      tk_tcl2ruby(tk_call "grid", 'rowconfigure', master, index, *hash_kv(args))
    end
  
    module_function :columnconfigure, :rowconfigure
  end
  
  
  f = TkFrame.new.pack
  p TkGrid.columnconfigure(f, 0)
  p TkGrid.columnconfigure(f, 0, {'minsize'=>10})
  p TkGrid.columnconfigure(f, 0)
  
  f = TkFrame.new.pack
  p TkGrid.rowconfigure(f, 0)
  p TkGrid.rowconfigure(f, 0, {'minsize'=>10})
  p TkGrid.rowconfigure(f, 0)

--- columnconfiginfo(master, index, slot=nil)
#@todo

--- rowconfiginfo(master, index, slot=nil)
#@todo

--- forget(*args)
#@todo

--- info(slave)
#@todo

--- location(master, x, y)
#@todo

--- propagate(master, mode = Tk::None)
#@todo

--- remove(*args)
#@todo

--- size(master)
#@todo

--- slaves(master, args)
#@todo

== Instance Methods

--- anchor(master, anchor = Tk::None)
#@todo

--- add(widget, *args)
#@todo

== Constants

--- TkCommandNames
#@todo
