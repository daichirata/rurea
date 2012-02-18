#@since 1.8.0

Ruby �� curses �饤�֥��(�ʲ���Ruby curses)�ϡ�C �Υץ�����फ��ü��
�β��̤����椹�뤿��� curses �饤�֥��(�ʲ���C curses)�����Ѥ��ơ�ü
���˰�¸���ʤ������ǥƥ����ȥ桼�����󥿥ե��������ۤ��뤿��Υ饤��
���Ǥ���

C curses �ˤϡ����Τ褦�ʼ���������ޤ���
#@# ���Ѳ�ǽ�� curses �μ����򸫤Ĥ����顢����ɲä��Ƥ���������

  * [[url:http://www.gnu.org/software/ncurses/ncurses.html]]
  * [[url:http://pdcurses.sourceforge.net/]]

Ruby curses ��Ȥäƥƥ����ȥ桼�����󥿥ե�����(�ʲ���TUI)��
���ۤ���ή��ϼ��Τ褦�ˤʤ�ޤ���

  (1) [[m:Curses.#init_screen]] �ǽ������Ԥ��ޤ���
  (2) [[c:Curses]] �Υ⥸�塼��ؿ���Ȥ���
      ���ϤΥ�������̵���ˤ���ʤɤ� Ruby curses �������Ԥ��ޤ���
  (3) [[m:Curses.#stdscr]] �䤽�Υ��֥�����ɥ�������TUI ���ۤ��ޤ���
  (4) [[m:Curses.#getch]] �� [[m:Curses.#getstr]] �ˤ�ꡢ
      �桼����������Ϥ�������ޤ������Ϥ�������˽��äƽ�����Ԥ���
      �����ơ����Ϥ��ԤĤȤ������Ȥ򷫤��֤��ޤ���
  (5) �Ǹ�� [[m:Curses.#close_screen]] �ǽ�λ������Ԥ��ޤ���

��: ��������ˡ�Hello World!�פ�ɽ�������������Ϥ�����Ƚ�λ���롣

  require "curses"
  
  Curses.init_screen
  begin
    s = "Hello World!"
    Curses.setpos(Curses.lines / 2, Curses.cols / 2 - (s.length / 2))
    Curses.addstr(s)
    Curses.refresh
    Curses.getch
  ensure
    Curses.close_screen
  end

��: �嵭�����Ʊ�ͤ�����Curses �⥸�塼��� include ������

  require "curses"

  include Curses
  
  init_screen
  begin
    s = "Hello World!"
    setpos(lines / 2, cols / 2 - (s.length / 2))
    addstr(s)
    refresh
    getch
  ensure
    close_screen
  end

�ʤ���C curses �����ѤǤ��ʤ��Ķ��� Ruby �򥳥�ѥ��뤷�Ƥ����硢
Ruby curses �����ѤǤ��ޤ���
���ѤǤ��ʤ���硢require �λ������㳰 LoadError ��ȯ�����ޤ���

  foo:1:in `require': no such file to load -- curses (LoadError)
          from foo:1:in `<main>'

Ruby curses �����ˤ�äƤϡ�
���Ѥ��� C curses ���󶡤��Ƥ��ʤ���ǽ��Ȥ���Τ�����ޤ���
���Τ褦������Ԥä���硢�㳰 NotImplementedError ��ȯ�����ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�����Ĥ��������㳰 SecurityError ��ȯ�����ޤ���

= module Curses

Curses �⥸�塼��� [[c:Curses::Window]] ���饹�ϡ�curses �饤�֥������Ѥ��ơ�
ü���˰�¸���ʤ������ǥƥ����ȥ桼�����󥿥ե�����������Ǥ��ޤ���
curses �饤�֥��Ȥϡ�
C �Υץ�����फ��ü���Υǥ����ץ쥤���̤����椹�뤿��Υ饤�֥��Τ��Ȥǡ�
���Τ褦�ʼ���������ޤ���
#@# ���Ѳ�ǽ�� curses �μ����򸫤Ĥ����顢����ɲä��Ƥ���������

  * [[url:http://pdcurses.sourceforge.net/]]
  * [[url:http://www.gnu.org/software/ncurses/ncurses.html]]

�ܥ⥸�塼���Ȥäƥƥ����ȥ桼�����󥿥ե��������������ή��ϼ��Τ褦�ˤʤ�ޤ���

  (1) [[m:Curses.#init_screen]] �ǽ������Ԥ��ޤ���
  (2) [[c:Curses]] �Υ⥸�塼��ؿ���Ȥäơ�
  ���ϤΥ�������̵���ˤ���ʤɤ� curses �������Ԥ��ޤ���
  (3) [[m:Curses.#stdscr]] �� [[c:Curses::Window]] ���֥������Ȥ��������
  �����Ȥäƥ��󥿥ե��������ۤ��롣
  (4) [[m:Curses.#getch]] �� [[m:Curses.#getstr]] �ˤ�ꡢ
  �桼����������Ϥ�������ޤ������Ϥ�������˽��äƽ�����Ԥ���
  �����ơ����Ϥ��ԤĤȤ������Ȥ򷫤��֤��ޤ���
  (5) �Ǹ�� [[m:Curses.#close_screen]] �ǽ�λ������Ԥ��ޤ���

��: ��������ˡ�Hello World!�פ�ɽ�������������Ϥ�����Ƚ�λ���롣

  require "curses"
  
  Curses.init_screen
  begin
    s = "Hello World!"
    Curses.setpos(Curses.lines / 2, Curses.cols / 2 - (s.length / 2))
    Curses.addstr(s)
    Curses.refresh
    Curses.getch
  ensure
    Curses.close_screen
  end

�ʤ���curses �� ncurses �򥤥󥹥ȡ��뤷�Ƥ��ʤ��Ķ��Ǥϡ�
�ܥ⥸�塼������ѤǤ��ޤ���
���ѤǤ��ʤ���硢require �λ����ǰʲ��Τ褦���㳰��ȯ�����ޤ���

  foo:1:in `require': no such file to load -- bar (LoadError)
          from foo:1:in `<main>'

�����Ĥ������ˤ����ơ����ݡ��Ȥ��Ƥ��ʤ��Ķ��Ǥϡ�
�㳰 NotImplementedError ��ȯ�����ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�ۤȤ�ɤ������㳰 SecurityError ��ȯ�����ޤ���

== Constants

--- REPORT_MOUSE_POSITION -> Integer

�ޥ����ΰ��֤�������뤿��˻��Ѥ���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- ALL_MOUSE_EVENTS -> Integer

���ƤΥܥ���ξ��֤��Ѳ���������뤿��˻��Ѥ���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- A_ALTCHARSET -> Integer

����ʸ�����åȤ�ɽ��°���Υޥ���������Ǥ���

@see [[m:Curses.attrset]]

--- A_ATTRIBUTES -> Integer

°����Ÿ�����뤿��˻��Ѥ���ʸ�����°���ޥ���������Ǥ���

@see [[m:Curses.inch]], [[m:Curses::Window.inch]]

--- A_BLINK -> Integer

ʸ��������Ǥ�ɽ��°���Υޥ����Ѥ�����Ǥ���

@see [[m:Curses.attrset]]

--- A_BOLD -> Integer

ʸ��������뤯���뤫�����ˤ��뤿���°���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.attrset]]

--- A_CHARTEXT -> Integer

ʸ������Ф��뤿���°���ޥ���������Ǥ���

@see [[m:Curses.attrset]]

--- A_COLOR -> Integer

���ڥ��Υե�����ɾ������Ф��뤿���ʸ�����°���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.inch]], [[m:Curses::Window.inch]]

--- A_DIM -> Integer

ʸ�����Ⱦʬ���뤯���뤿���°���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.attrset]]

--- A_HORIZONTAL -> Integer

��ʿ�����Υϥ��饤�Ȥ�ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[man:curs_attr(3x)]]

--- A_INVIS -> Integer

����ӥ��֥뤫�֥�󥯤�ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.attrset]]

--- A_LEFT -> Integer


???��ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[man:curs_attr(3x)]]

--- A_LOW -> Integer
#@todo ???

???��ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[man:curs_attr(3x)]]

--- A_NORMAL -> Integer
#@todo

???��ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.attrset]]

--- A_PROTECT -> Integer
#@todo
�ץ��ƥ��ȥ⡼�ɤ�ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.attrset]]

--- A_REVERSE -> Integer

ʸ�����ȿž��ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.attrset]]

--- A_RIGHT -> Integer
#@todo
???��ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[man:curs_attr(3x)]]

--- A_STANDOUT -> Integer
#@todo
�����ߥʥ�ǻ��ѤǤ���Ǥ⶯Ĵ����⡼�ɤ�ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.attrset]]

--- A_TOP -> Integer
#@todo
top highlight
@see [[man:curs_attr(3x)]]

--- A_UNDERLINE -> Integer

ʸ����˲�����������Ȥ�ɽ��°���ޥ����Ѥ�����Ǥ���

@see [[m:Curses.attrset]]

--- A_VERTICAL -> Integer
#@todo
vertical highlight
@see [[man:curs_attr(3x)]]

--- BUTTON1_CLICKED -> Integer

�ޥ����ܥ��� 1 �򥯥�å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON1_DOUBLE_CLICKED -> Integer

�ޥ����ܥ��� 1 ����֥륯��å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON1_PRESSED -> Integer

�ޥ����ܥ��� 1 �򲡤������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON1_RELEASED -> Integer

�ޥ����ܥ��� 1 ��Υ�������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON1_TRIPLE_CLICKED -> Integer

�ޥ����ܥ��� 1 ��ȥ�ץ륯��å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON2_CLICKED -> Integer

�ޥ����ܥ��� 2 �򥯥�å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON2_DOUBLE_CLICKED -> Integer

�ޥ����ܥ��� 2 ����֥륯��å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON2_PRESSED -> Integer

�ޥ����ܥ��� 2 �򲡤������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON2_RELEASED -> Integer

�ޥ����ܥ��� 2 ��Υ�������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON2_TRIPLE_CLICKED -> Integer

�ޥ����ܥ��� 2 ��ȥ�ץ륯��å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON3_CLICKED -> Integer

�ޥ����ܥ��� 3 �򥯥�å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON3_DOUBLE_CLICKED -> Integer

�ޥ����ܥ��� 3 ����֥륯��å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON3_PRESSED -> Integer

�ޥ����ܥ��� 3 �򲡤������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON3_RELEASED -> Integer

�ޥ����ܥ��� 3 ��Υ�������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON3_TRIPLE_CLICKED -> Integer

�ޥ����ܥ��� 3 ��ȥ�ץ륯��å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON4_CLICKED -> Integer

�ޥ����ܥ��� 4 �򥯥�å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON4_DOUBLE_CLICKED -> Integer

�ޥ����ܥ��� 4 ����֥륯��å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON4_PRESSED -> Integer

�ޥ����ܥ��� 4 �򲡤������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON4_RELEASED -> Integer

�ޥ����ܥ��� 4 ��Υ�������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON4_TRIPLE_CLICKED -> Integer

�ޥ����ܥ��� 3 ��ȥ�ץ륯��å��������Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON_ALT -> Integer

�ޥ��������� ALT �����򲡲����Ƥ��뤳�Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON_CTRL -> Integer

�ޥ��������� CTRL �����򲡲����Ƥ��뤳�Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- BUTTON_SHIFT -> Integer

�ޥ��������� SHIFT �����򲡲����Ƥ��뤳�Ȥ�ɽ���ޥ������٥���Ѥ�����Ǥ���

@see [[m:Curses.getmouse]]

--- COLOR_BLACK -> Integer

����ɽ������Ǥ���

--- COLOR_BLUE -> Integer

�Ĥ�ɽ������Ǥ���

--- COLOR_CYAN -> Integer

�������ɽ������Ǥ���

--- COLOR_GREEN -> Integer

�Ф�ɽ������Ǥ���

--- COLOR_MAGENTA -> Integer

�ޥ��󥿤�ɽ������Ǥ���

--- COLOR_RED -> Integer

�֤�ɽ������Ǥ���

--- COLOR_WHITE -> Integer

���ɽ������Ǥ���

--- COLOR_YELLOW -> Integer

������ɽ������Ǥ���

--- KEY_A1 -> Integer

�����ѥåɤκ����ɽ������Ǥ���

--- KEY_A3 -> Integer

�����ѥåɤα����ɽ������Ǥ���

--- KEY_B2 -> Integer

�����ѥåɤ��濴��ɽ������Ǥ���

--- KEY_BACKSPACE -> Integer

�Хå����ڡ���������ɽ������Ǥ���

--- KEY_BEG -> Integer
#@todo ???
BEG ������ɽ������Ǥ���

--- KEY_BREAK -> Integer

BREAK ������ɽ������Ǥ���

--- KEY_BTAB -> Integer

Back TAB ������ɽ������Ǥ���

--- KEY_C1 -> Integer

�����ѥåɤκ�����ɽ������Ǥ���

--- KEY_C3 -> Integer

�����ѥåɤα�����ɽ������Ǥ���

--- KEY_CANCEL -> Integer

Cancel ������ɽ������Ǥ���

--- KEY_CATAB -> Integer
#@todo
Clear all tabs

--- KEY_CLEAR -> Integer

�����꡼��Υ��ꥢ��ɽ������Ǥ���

--- KEY_CLOSE -> Integer

Close ������ɽ������Ǥ���

--- KEY_COMMAND -> Integer

Command ������ɽ������Ǥ���

--- KEY_COPY -> Integer

Copy ������ɽ������Ǥ���

--- KEY_CREATE -> Integer

Create ������ɽ������Ǥ���

--- KEY_CTAB -> Integer
#@todo
Clear tab

--- KEY_CTRL_A -> Integer

Ctrl + A ��ɽ������Ǥ���

--- KEY_CTRL_B -> Integer

Ctrl + B ��ɽ������Ǥ���

--- KEY_CTRL_C -> Integer

Ctrl + C ��ɽ������Ǥ���

--- KEY_CTRL_D -> Integer

Ctrl + D ��ɽ������Ǥ���

--- KEY_CTRL_E -> Integer

Ctrl + E ��ɽ������Ǥ���

--- KEY_CTRL_F -> Integer

Ctrl + F ��ɽ������Ǥ���

--- KEY_CTRL_G -> Integer

Ctrl + G ��ɽ������Ǥ���

--- KEY_CTRL_H -> Integer

Ctrl + H ��ɽ������Ǥ���

--- KEY_CTRL_I -> Integer

Ctrl + I ��ɽ������Ǥ���

--- KEY_CTRL_J -> Integer

Ctrl + J ��ɽ������Ǥ���

--- KEY_CTRL_K -> Integer

Ctrl + K ��ɽ������Ǥ���

--- KEY_CTRL_L -> Integer

Ctrl + L ��ɽ������Ǥ���

--- KEY_CTRL_M -> Integer

Ctrl + M ��ɽ������Ǥ���

--- KEY_CTRL_N -> Integer

Ctrl + N ��ɽ������Ǥ���

--- KEY_CTRL_O -> Integer

Ctrl + O ��ɽ������Ǥ���

--- KEY_CTRL_P -> Integer

Ctrl + P ��ɽ������Ǥ���

--- KEY_CTRL_Q -> Integer

Ctrl + Q ��ɽ������Ǥ���

--- KEY_CTRL_R -> Integer

Ctrl + R ��ɽ������Ǥ���

--- KEY_CTRL_S -> Integer

Ctrl + S ��ɽ������Ǥ���

--- KEY_CTRL_T -> Integer

Ctrl + T ��ɽ������Ǥ���

--- KEY_CTRL_U -> Integer

Ctrl + U ��ɽ������Ǥ���

--- KEY_CTRL_V -> Integer

Ctrl + V ��ɽ������Ǥ���

--- KEY_CTRL_W -> Integer

Ctrl + W ��ɽ������Ǥ���

--- KEY_CTRL_X -> Integer

Ctrl + X ��ɽ������Ǥ���

--- KEY_CTRL_Y -> Integer

Ctrl + Y ��ɽ������Ǥ���

--- KEY_CTRL_Z -> Integer

Ctrl + Z ��ɽ������Ǥ���

--- KEY_DC -> Integer
#@todo ???
Delete ������ɽ������Ǥ���

--- KEY_DL -> Integer

�Ԥ������륭����ɽ������Ǥ���

--- KEY_DOWN -> Integer

�����������ɽ������Ǥ���

--- KEY_EIC -> Integer

�����⡼�ɤ����륭����ɽ������Ǥ���

--- KEY_END -> Integer

End ������ɽ������Ǥ���

--- KEY_ENTER -> Integer

Enter ������ɽ������Ǥ���

--- KEY_EOL -> Integer

�����ޤǥ��ꥢ���륭����ɽ������Ǥ���

--- KEY_EOS -> Integer

�����꡼��������ޤǥ��ꥢ���륭����ɽ������Ǥ���

--- KEY_EXIT -> Integer

Exit ������ɽ������Ǥ���

--- KEY_F0 -> Integer

F0 ������ɽ������Ǥ���

--- KEY_F1 -> Integer

F1 ������ɽ������Ǥ���

--- KEY_F10 -> Integer

F10 ������ɽ������Ǥ���

--- KEY_F11 -> Integer

F11 ������ɽ������Ǥ���

--- KEY_F12 -> Integer

F12 ������ɽ������Ǥ���

--- KEY_F13 -> Integer

F13 ������ɽ������Ǥ���

--- KEY_F14 -> Integer

F14 ������ɽ������Ǥ���

--- KEY_F15 -> Integer

F15 ������ɽ������Ǥ���

--- KEY_F16 -> Integer

F16 ������ɽ������Ǥ���

--- KEY_F17 -> Integer

F17 ������ɽ������Ǥ���

--- KEY_F18 -> Integer

F18 ������ɽ������Ǥ���

--- KEY_F19 -> Integer

F19 ������ɽ������Ǥ���

--- KEY_F2 -> Integer

F2 ������ɽ������Ǥ���

--- KEY_F20 -> Integer

F20 ������ɽ������Ǥ���

--- KEY_F21 -> Integer

F21 ������ɽ������Ǥ���

--- KEY_F22 -> Integer

F22 ������ɽ������Ǥ���

--- KEY_F23 -> Integer

F23 ������ɽ������Ǥ���

--- KEY_F24 -> Integer

F24 ������ɽ������Ǥ���

--- KEY_F25 -> Integer

F25 ������ɽ������Ǥ���

--- KEY_F26 -> Integer

F26 ������ɽ������Ǥ���

--- KEY_F27 -> Integer

F27 ������ɽ������Ǥ���

--- KEY_F28 -> Integer

F28 ������ɽ������Ǥ���

--- KEY_F29 -> Integer

F29 ������ɽ������Ǥ���

--- KEY_F3 -> Integer

F3 ������ɽ������Ǥ���

--- KEY_F30 -> Integer

F30 ������ɽ������Ǥ���

--- KEY_F31 -> Integer

F31 ������ɽ������Ǥ���

--- KEY_F32 -> Integer

F32 ������ɽ������Ǥ���

--- KEY_F33 -> Integer

F33 ������ɽ������Ǥ���

--- KEY_F34 -> Integer

F34 ������ɽ������Ǥ���

--- KEY_F35 -> Integer

F35 ������ɽ������Ǥ���

--- KEY_F36 -> Integer

F36 ������ɽ������Ǥ���

--- KEY_F37 -> Integer

F37 ������ɽ������Ǥ���

--- KEY_F38 -> Integer

F38 ������ɽ������Ǥ���

--- KEY_F39 -> Integer

F39 ������ɽ������Ǥ���

--- KEY_F4 -> Integer

F4 ������ɽ������Ǥ���

--- KEY_F40 -> Integer

F40 ������ɽ������Ǥ���

--- KEY_F41 -> Integer

F41 ������ɽ������Ǥ���

--- KEY_F42 -> Integer

F42 ������ɽ������Ǥ���

--- KEY_F43 -> Integer

F43 ������ɽ������Ǥ���

--- KEY_F44 -> Integer

F44 ������ɽ������Ǥ���

--- KEY_F45 -> Integer

F45 ������ɽ������Ǥ���

--- KEY_F46 -> Integer

F46 ������ɽ������Ǥ���

--- KEY_F47 -> Integer

F47 ������ɽ������Ǥ���

--- KEY_F48 -> Integer

F48 ������ɽ������Ǥ���

--- KEY_F49 -> Integer

F49 ������ɽ������Ǥ���

--- KEY_F5 -> Integer

F5 ������ɽ������Ǥ���

--- KEY_F50 -> Integer

F50 ������ɽ������Ǥ���

--- KEY_F51 -> Integer

F51 ������ɽ������Ǥ���

--- KEY_F52 -> Integer

F52 ������ɽ������Ǥ���

--- KEY_F53 -> Integer

F53 ������ɽ������Ǥ���

--- KEY_F54 -> Integer

F54 ������ɽ������Ǥ���

--- KEY_F55 -> Integer

F55 ������ɽ������Ǥ���

--- KEY_F56 -> Integer

F56 ������ɽ������Ǥ���

--- KEY_F57 -> Integer

F57 ������ɽ������Ǥ���

--- KEY_F58 -> Integer

F58 ������ɽ������Ǥ���

--- KEY_F59 -> Integer

F59 ������ɽ������Ǥ���

--- KEY_F6 -> Integer

F6 ������ɽ������Ǥ���

--- KEY_F60 -> Integer

F60 ������ɽ������Ǥ���

--- KEY_F61 -> Integer

F61 ������ɽ������Ǥ���

--- KEY_F62 -> Integer

F62 ������ɽ������Ǥ���

--- KEY_F63 -> Integer

F63 ������ɽ������Ǥ���

--- KEY_F7 -> Integer

F7 ������ɽ������Ǥ���

--- KEY_F8 -> Integer

F8 ������ɽ������Ǥ���

--- KEY_F9 -> Integer

F9 ������ɽ������Ǥ���

--- KEY_FIND -> Integer

Find ������ɽ������Ǥ���

--- KEY_HELP -> Integer

Help ������ɽ������Ǥ���

--- KEY_HOME -> Integer

Home ������ɽ������Ǥ���

--- KEY_IC -> Integer

ʸ�����������뤫�����⡼�ɤ����륭����ɽ������Ǥ���

--- KEY_IL -> Integer

�Ԥ��������륭����ɽ������Ǥ���

--- KEY_LEFT -> Integer

�����������ɽ������Ǥ���

--- KEY_LL -> Integer
#@todo
Home down or bottom (lower left)

--- KEY_MARK -> Integer

Mark ������ɽ������Ǥ���

--- KEY_MAX -> Integer

curses �����Ѳ�ǽ�ʥ�����ɽ������κ����ͤǤ���

--- KEY_MESSAGE -> Integer

Message ������ɽ������Ǥ���

--- KEY_MIN -> Integer

curses �����Ѳ�ǽ�ʥ�����ɽ������κǾ��ͤǤ���

--- KEY_MOUSE -> Integer
#@todo
Mouse event read

--- KEY_MOVE -> Integer
#@todo
Move ������ɽ������Ǥ���

--- KEY_NEXT -> Integer

Next object ������ɽ������Ǥ���

--- KEY_NPAGE -> Integer

Next Page ������ɽ������Ǥ���

--- KEY_OPEN -> Integer

Open ������ɽ������Ǥ���

--- KEY_OPTIONS -> Integer

Opetions ������ɽ������Ǥ���

--- KEY_PPAGE -> Integer

Previous Page ������ɽ������Ǥ���

--- KEY_PREVIOUS -> Integer

Previous object ������ɽ������Ǥ���

--- KEY_PRINT -> Integer

Print ������ɽ������Ǥ���

--- KEY_REDO -> Integer

Redo ������ɽ������Ǥ���

--- KEY_REFERENCE -> Integer

Reference ������ɽ������Ǥ���

--- KEY_REFRESH -> Integer

Refresh ������ɽ������Ǥ���

--- KEY_REPLACE -> Integer

Replace ������ɽ������Ǥ���

--- KEY_RESET -> Integer

Reset ������ɽ������Ǥ���

--- KEY_RESIZE -> Integer

�����꡼�󤬥ꥵ�������줿���Ȥ�ɽ������Ǥ���

--- KEY_RESTART -> Integer

Restart ������ɽ������Ǥ���

--- KEY_RESUME -> Integer

Resume ������ɽ������Ǥ���

--- KEY_RIGHT -> Integer

�����������ɽ������Ǥ���

--- KEY_SAVE -> Integer

Save ������ɽ������Ǥ���

--- KEY_SBEG -> Integer
#@todo
Shifted beginning key

--- KEY_SCANCEL -> Integer

Shift + Cancel ������ɽ������Ǥ���

--- KEY_SCOMMAND -> Integer

Shift + Command ������ɽ������Ǥ���

--- KEY_SCOPY -> Integer

Shift + Copy ������ɽ������Ǥ���

--- KEY_SCREATE -> Integer

Shift + Create ������ɽ������Ǥ���

--- KEY_SDC -> Integer
#@todo ???
Shift + Delete ������ɽ������Ǥ���

--- KEY_SDL -> Integer

Shift + �Ԥ������륭����ɽ������Ǥ���

--- KEY_SELECT -> Integer

Select ������ɽ������Ǥ���

--- KEY_SEND -> Integer

Shift + End ������ɽ������Ǥ���

--- KEY_SEOL -> Integer

Shift + �����ޤǥ��ꥢ���륭����ɽ������Ǥ���

--- KEY_SEXIT -> Integer

Shift + Exit ������ɽ������Ǥ���

--- KEY_SF -> Integer

���˰�ԥ��������뤹�뤳�Ȥ�ɽ������Ǥ���

--- KEY_SFIND -> Integer

Shift + Find ������ɽ������Ǥ���

--- KEY_SHELP -> Integer

Shift + Help ������ɽ������Ǥ���

--- KEY_SHOME -> Integer

Shift + Home ������ɽ������Ǥ���

--- KEY_SIC -> Integer
#@todo ???
Shift + ... ������ɽ������Ǥ���

--- KEY_SLEFT -> Integer

Shift + �����������ɽ������Ǥ���

--- KEY_SMESSAGE -> Integer

Shift + Message ������ɽ������Ǥ���

--- KEY_SMOVE -> Integer

Shift + Move ������ɽ������Ǥ���

--- KEY_SNEXT -> Integer

Shift + Next ������ɽ������Ǥ���

--- KEY_SOPTIONS -> Integer

Shift + Options ������ɽ������Ǥ���

--- KEY_SPREVIOUS -> Integer

Shift + Previous ������ɽ������Ǥ���

--- KEY_SPRINT -> Integer

Shift + Print ������ɽ������Ǥ���

--- KEY_SR -> Integer

��˰�ԥ��������뤹�뤳�Ȥ�ɽ������Ǥ���

--- KEY_SREDO -> Integer

Shift + Redo ������ɽ������Ǥ���

--- KEY_SREPLACE -> Integer

Shift + Replace ������ɽ������Ǥ���

--- KEY_SRESET -> Integer

Shift + Reset ������ɽ������Ǥ���

--- KEY_SRIGHT -> Integer

Shift + �����������ɽ������Ǥ���

--- KEY_SRSUME -> Integer

Shift + Resume ������ɽ������Ǥ���

--- KEY_SSAVE -> Integer

Shift + Save ������ɽ������Ǥ���

--- KEY_SSUSPEND -> Integer

Shift + Suspend ������ɽ������Ǥ���

--- KEY_STAB -> Integer

Shift + TAB ������ɽ������Ǥ���

--- KEY_SUNDO -> Integer

Shift + Undo ������ɽ������Ǥ���

--- KEY_SUSPEND -> Integer

Suspend ������ɽ������Ǥ���

--- KEY_UNDO -> Integer

Undo ������ɽ������Ǥ���

--- KEY_UP -> Integer

�����������ɽ������Ǥ���

== Module Functions

--- init_screen -> Curses::Window
--- stdscr -> Curses::Window

ü���μ���� curses �˴ؤ���ǡ����������������̤򥯥ꥢ���ޤ���
stdscr �ȸƤФ��������Τ�ɽ��������ɥ����֤��ޤ���

ncurses �����Ѥ��Ƥ����硢
���Υ᥽�åɤ˼��Ԥ����ɸ�२�顼���Ϥ˥��顼��å���������Ϥ�����λ���ޤ���
�����Ǥʤ���硢���Υ᥽�åɤ˼��Ԥ�����㳰 RuntimeError ��ȯ�����ޤ���

�ܤ����ϡ� man �ڡ����� curs_initscr(3X) �� initscr �ؿ��ȡ�
curs_clear(3X) �� clear �ؿ��򻲾Ȥ���������

[[c:Curses]] �Τ����Ĥ��Υ᥽�åɤϡ������Ǥ��Υ᥽�åɤ�ƤӽФ��ޤ���
����ˤ�ꡢ���Υ᥽�åɤ�ƤӽФ��Ƥ��ʤ����Ǥ⡢
�����Ĥ��ν�����Ǥ���褦�ˤʤäƤ��ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�㳰 SecurityError ��ȯ�����ޤ���

@see [[m:Curses.#close_screen]]

--- close_screen -> nil

curses �ν�λ������Ԥ��ޤ���
ü���ξ��֤��������������������ü�˰�ư�����ޤ���

�ܤ����ϡ� man �ڡ����� curs_initscr(3X) �� endwin �ؿ��򻲾Ȥ���������

@see [[m:Curses.#init_screen]]��[[m:Curses.#stdscr]], [[man:curs_initscr(3X)]]

--- closed? -> bool

curses ����λ���Ƥ��뤫�ɤ������֤��ޤ���

�ܤ����ϡ� man �ڡ����� curs_initscr(3X) �� isendwin �ؿ��򻲾Ȥ���������

���ݡ��Ȥ��Ƥ��ʤ��Ķ��Ǥϡ��㳰 NotImplementedError ��ȯ�����ޤ���

@see [[m:Curses.#close_screen]]

--- clear -> nil

�������Τ�ɽ��������ɥ� stdscr ��ʸ����õ�����̤򥯥ꥢ���ޤ���
���̤Υ��ꥢ��ȿ�Ǥ����뤿��ˡ�
�ܥ᥽�åɤΤ��Ȥ� [[m:Curses.#refresh]] ��ƤӽФ�ɬ�פϤ���ޤ���

�ܤ����ϡ� man �ڡ����� curs_clear(3X) �� clear �ؿ��򻲾Ȥ���������

���Υ᥽�åɤ���� [[m:Curses.#init_screen]] ��ƤӽФ��ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�㳰 SecurityError ��ȯ�����ޤ���

--- refresh -> nil

�������Τ�ɽ��������ɥ� stdscr ��ɽ���򹹿����ޤ���

�ܤ����ϡ� man �ڡ����� curs_refresh(3X) �� refresh �ؿ��򻲾Ȥ���������

���Υ᥽�åɤ���� [[m:Curses.#init_screen]] ��ƤӽФ��ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�㳰 SecurityError ��ȯ�����ޤ���

--- doupdate -> nil

�������Τ�ɽ��������ɥ� stdscr ��ɽ���򹹿����ޤ���
[[m:Curses.#refresh]] �ʾ��ǽΨ�ɤ�����������Ԥ��ޤ���

�ܤ����ϡ� man �ڡ����� curs_refresh(3X) �� doupdate �ؿ��򻲾Ȥ���������

���Ѥ��Ƥ��� curses �Υ饤�֥�꤬ doupdate �ؿ����󶡤��Ƥ��ʤ���硢
doupdate �ؿ�������ˡ�refresh �ؿ���ƤӽФ��ޤ���

���Υ᥽�åɤ���� [[m:Curses.#init_screen]] ��ƤӽФ��ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�㳰 SecurityError ��ȯ�����ޤ���

--- echo -> nil

�桼�����������Ƥ���̤�ɽ������褦�ˤ��ޤ���
�Ĥޤꡢ���ϤΥ�������ͭ���ˤ��ޤ���

�ܤ����ϡ� man �ڡ����� curs_inopts(3X) �� echo �ؿ��򻲾Ȥ���������

���Υ᥽�åɤ���� [[m:Curses.#init_screen]] ��ƤӽФ��ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�㳰 SecurityError ��ȯ�����ޤ���

--- noecho

�桼�����������Ƥ���̤�ɽ�����ʤ��褦�ˤ��ޤ���
�Ĥޤꡢ���ϤΥ�������ߤ�ޤ���

�ܤ����ϡ� man �ڡ����� curs_inopts(3X) �� noecho �ؿ��򻲾Ȥ���������

���Υ᥽�åɤ���� [[m:Curses.#init_screen]] ��ƤӽФ��ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�㳰 SecurityError ��ȯ�����ޤ���

--- cbreak -> nil
--- crmode -> nil

�����ܡ������ϤΥХåե���󥰤��ᡢ�桼�������Ϥ�¨�¤˽����Ǥ���褦�ˤ��ޤ���

���Υ᥽�åɤ���� [[m:Curses.#init_screen]] ��ƤӽФ��ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�㳰 SecurityError ��ȯ�����ޤ���

@see [[m:Curses.#nocbreak]]��[[m:Curses.#nocrmode]]

--- nocbreak -> nil
--- nocrmode -> nil

�̾��ü���Τ褦�ˡ������ܡ������ϤΥХåե���󥰤�ͭ���ˤ��ޤ���
�桼�������Ϥϥ��󥿡������ʤɤ򲡤��ޤǽ����Ǥ��ޤ���
���ξ��֤Τ��Ȥ��cooked�ץ⡼�ɤȤ����ޤ���

���Υ᥽�åɤ���� [[m:Curses.#init_screen]] ��ƤӽФ��ޤ���

�����ե�٥� ($SAFE) �� 4 �ξ�硢�㳰 SecurityError ��ȯ�����ޤ���

@see [[m:Curses.#cbreak]]��[[m:Curses.#crmode]]

--- raw -> nil

[[m:Curses.#cbreak]] ��Ʊ�ͤˡ������ܡ������ϤΥХåե���󥰤��ᡢ
�桼�������Ϥ�¨�¤˽����Ǥ���褦�ˤ��ޤ����ʤ����ġ�
������(Ctrl-C)�������ڥ��(Ctrl-Z) �ʤɤ��ü쥭���ν�������ޤ���
���ξ��֤Τ��Ȥ��raw�ץ⡼�ɤȤ����ޤ���

@see [[m:Curses.#cbreak]]��[[m:Curses.#noraw]]

--- noraw -> nil

raw �⡼�ɤ�ȴ�����̾�ξ��֤ˤ��ޤ���
�Ĥޤꡢ�����ܡ������ϤΥХåե���󥰤�Ԥ���
������(Ctrl-C)�������ڥ��(Ctrl-Z) �ʤɤ��ü쥭���ν�����Ԥ��褦�ˤ��ޤ���

@see [[m:Curses.#raw]]

--- nl -> nil
#@todo

cooked �⡼�ɤΤȤ���return ���������Ϥ��Ф���
LF (Ctrl-j) ���֤��褦�ˤ��ޤ���

�ܤ����ϡ� man �ڡ����� curs_outopts(3X) �� nl �ؿ��򻲾Ȥ���������

 Enable the underlying display device to translate
 the return key into newline on input, and whether it
 translates newline into return and line-feed on output
 (in either case, the call Curses.addch('\n') does the
 equivalent of return and line feed on the virtual screen).
 
 Initially, these translations do occur. If you disable
 them using Curses.nonl, curses will be able to make better use
 of the line-feed capability, resulting in faster cursor
 motion. Also, curses will then be able to detect the return key.

--- nonl -> nil
#@todo

cooked �⡼�ɤΤȤ���return ���������Ϥ��Ф���
CR (Ctrl-m) ���֤��褦�ˤ��ޤ���

�ܤ����ϡ� man �ڡ����� curs_outopts(3X) �� nonl �ؿ��򻲾Ȥ���������

 Disable the underlying display device to translate
 the return key into newline on input

@see [[m:Curses.#nl]]

--- beep -> nil

����Ф��ޤ���
���ε�ǽ���ʤ��Ȥ����Ǥ�ñ��̵�뤵��ޤ���

--- flash -> nil

���̤������Ǥ����ޤ���
���ε�ǽ���ʤ��Ȥ����Ǥ�ñ��̵�뤵��ޤ���

--- getch -> Integer

ɸ�����Ϥ��� 1 �Х����ɤ߹��ߤޤ���
����ͤ� ASCII �����ɤ�ɽ�������Ǥ���

@see [[c:Curses::Key]]

--- getstr -> String

ɸ�����Ϥ������ɤ߹��ߤޤ���
����ͤ�ʸ����Ǥ���

���Υ᥽�åɤ� getnstr() ����������Ƥ��ʤ�
�ץ�åȥۡ���ǤϥХåե������С��ե����򤪤������줬
����ޤ���

@see [[m:Curses::Window#getstr]]

--- ungetch(ch) -> nil

ʸ�� ch (ASCII �����ɤ򼨤�����) �򥹥ȥ꡼����ᤷ�ޤ���

���ƤΥ�����ɥ��ǰ�Ĥ������塼������ޤ���

@param ch ʸ������ ASCII �����ɤǻ��ꤷ�ޤ���


--- setpos(y, x) -> nil

stdscr �Υ���������ɸ (x,y) �˰�ư���ޤ���
��ɸ�ϤȤ�� 0 �������Ǥ���

ʸ�����ʤ����� setpos �������ε�ư�� OS �˰�¸���ޤ���

@param y Y ��ɸ���ͤ���ꤷ�ޤ���

@param x X ��ɸ���ͤ���ꤷ�ޤ���

--- standout ->nil

�ʹ߽񤭹���ʸ����Ĵ���ޤ���

�ֶ�Ĵ�פ�ȿž�Ǥ��뤳�Ȥ�¿���褦�Ǥ�����
���������Ƥ���櫓�ǤϤ���ޤ���

�ʲ��Υ����ɤ�Ʊ���Ǥ���

  Curses:Window.attron(A_STANDOUT)

@see [[m:Curses::Window.attrset]]

--- standend -> nil

��Ĵ����ʸ���ν񤭹��ߤ򽪤��ޤ���

�ʲ��Υ����ɤ�Ʊ���Ǥ���

  Curses.attron(A_NORMAL)

@see [[m:Curses::Window.attrset]]

--- addch(ch) -> nil

stdscr �Υ�������ΰ��֤� ch (1 �Х���) ���񤭤��ޤ���

@param ch ʸ������ꤷ�ޤ���

@see [[man:curs_addch(3)]]

--- insch(ch) -> nil

stdscr �Υ�������ΰ��֤� ch (1 �Х���) ���������ޤ���

@param ch ʸ������ꤷ�ޤ���

--- addstr(str) -> nil

stdscr �Υ�������ΰ��֤�ʸ���� str ���������ޤ���

@param str ʸ�������ꤷ�ޤ���

--- delch -> nil

stdscr �Υ�������ΰ��֤��� 1 �Х��Ⱥ�����ޤ���

--- deleteln -> nil

stdscr �Υ������뤬����Ԥ���������ιԤ��˵ͤ�ޤ���

--- lines -> Integer

���̤�ɽ����ǽ�ʹԿ����֤��ޤ���

--- cols -> Integer

���̤�ɽ����ǽ�ʷ��(�Х���)���֤��ޤ���

�������ºݤˤϤ⤦ 1 �Х��Ⱦ��ʤ�����ɽ���Ǥ��ʤ��饤�֥�꤬
����褦�Ǥ���

--- inch -> Integer

stdscr �Υ���������֤��� 1 �Х����ɤߤȤä��֤��ޤ���

#@since 1.8.3

--- clrtoeol -> nil

���ߤΥ���������֤��饦����ɥ��κǸ�ޤǤ򥯥ꥢ���ޤ���

--- insertln -> nil

���ߤΥ���������֤˰���������ޤ���

#@end

#@since 1.8.1

--- def_prog_mode -> bool
#@todo
Save the current terminal modes as the "program"
state for use by the Curses.reset_prog_mode

This is done automatically by Curses.init_screen

--- reset_prog_mode -> bool
#@todo
Reset the current terminal modes to the saved state
by the Curses.def_prog_mode

This is done automatically by Curses.close_screen

--- timeout=(delay)
#@todo
Sets block and non-blocking reads for the window.
- If delay is negative, blocking read is used (i.e., waits indefinitely for input).
- If delay is zero, then non-blocking read is used (i.e., read returns ERR if no input is waiting).
- If delay is positive, then read blocks for delay milliseconds, and returns ERR if there is still no input.

#@end

--- attroff(attrs) -> Integer
#@todo
Turns on the named attributes +attrs+ without affecting any others.

@see [[m:Curses::Window.attrset]]

--- attron(attron) -> Integer
#@todo
Turns off the named attributes +attrs+
without turning any other attributes on or off.

@see [[m:Curses::Window.attrset]]

--- attrset(attrs) -> Integer
#@todo
Sets the current attributes of the given window to +attrs+.

@see [[m:Curses::Window.attrset]]

--- bkgd(ch) -> bool
#@todo

Window background manipulation routines.

Set the background property of the current
and then apply the character Integer +ch+ setting
to every character position in that window.

@see [[man:curs_bkgd(3)]]

--- bkgdset(ch) -> nil

Manipulate the background of the named window
with character Integer +ch+

The background becomes a property of the character
and moves with the character through any scrolling
and insert/delete line/character operations.

@see [[man:curs_bkgd(3)]]

--- can_change_color? -> bool

ü���������ѹ��Ǥ�����Ͽ����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

#@since 1.9.2
--- colors -> Integer
#@todo ???

���ο����֤��ޤ���

@raise NotImplementedError ���ݡ��Ȥ��Ƥ��ʤ��Ķ���ȯ�����ޤ���

#@end
--- color_content(color) -> Array

Ϳ����줿���� RGB �ͤ����Ǥ�����Ȥ����֤��ޤ���

@param color ���� Curses::COLOR_RED �ʤɤǻ��ꤷ�ޤ���

--- color_pair(attrs) -> Integer
#@todo

Sets the color pair attributes to +attrs+.

�ʲ��Υ����ɤ�Ʊ���Ǥ���

  Curses.attrset(COLOR_PAIR(+attrs+))

@param attr 

#@since 1.9.2
--- color_pairs -> Integer
#@todo

Returns the COLOR_PAIRS available, if the curses library supports it.

@raise NotImplementedError ���ݡ��Ȥ��Ƥ��ʤ��Ķ���ȯ�����ޤ���

#@end
--- curs_set(visibility) -> Integer | nil
#@todo

Sets Cursor Visibility.

 * 0: invisible
 * 1: visible
 * 2: very visible

@param visibility ��������βĻ�������ꤷ�ޤ���

--- delch -> nil

��������β���ʸ���������ޤ���

--- getmouse -> Integer | nil
#@todo

Returns coordinates of the mouse.

This will read and pop the mouse event data off the queue

@see [[m:Curses::ALL_MOUSE_EVENTS]], [[m:Curses::REPORT_MOUSE_POSITION]]

--- has_colors? -> bool

ü�������顼ɽ�����б����Ƥ�����Ͽ����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

--- init_color(color, r, g, b) -> bool
#@todo

Changes the definition of a color. It takes four arguments:
 * the number of the color to be changed, +color+
 * the amount of red, +r+
 * the amount of green, +g+
 * the amount of blue, +b+

The value of the first argument must be between 0 and  COLORS.
(See the section Colors for the default color index.)  Each
of the last three arguments must be a value between 0 and 1000.
When Curses.init_color is used, all occurrences of that color
on the screen immediately change to the new definition.

@param color ???

@param r ��åɤ��̤���ꤷ�ޤ���
@param g ���꡼����̤���ꤷ�ޤ���
@param b �֥롼���̤���ꤷ�ޤ���

--- init_pair(pair, f, b) -> bool
#@todo

Changes the definition of a color-pair.

It takes three arguments: the number of the color-pair to be changed +pair+,
the foreground color number +f+, and the background color number +b+.

If the color-pair was previously initialized, the screen is
refreshed and all occurrences of that color-pair are changed
to the new definition.


--- keyname(c) -> String | nil
#@todo

���� c ���б�����ʸ������֤��ޤ���

@param c ������̾������ꤷ�ޤ���

--- mouseinterval(interval) -> bool
#@todo
The Curses.mouseinterval function sets the maximum time
(in thousands of a second) that can elapse between press
and release events for them to be recognized as a click.

Use Curses.mouseinterval(0) to disable click resolution.
This function returns the previous interval value.

Use Curses.mouseinterval(-1) to obtain the interval without
altering it.

The default is one sixth of a second.

@param interval

--- mousemask(mask) -> Integer

Ϳ����줿 mask ��������ǽ�ʥ��٥�Ȥ���Ф����֤��ޤ���

@param mask �ޥ����ͤ���ꤷ�ޤ���

--- pair_content(pair) -> Array
#@todo
Ϳ����줿 pair �˴ޤޤ��ʸ�������طʿ������ǤȤ��������Ǥ�������֤��ޤ���

@param pair 

--- pair_number(attrs) -> Integer
#@todo
Returns the Fixnum color pair number of attributes +attrs+.
@param attrs 

--- resizeterm(lines, cols) -> bool | nil
--- resize(lines, cols) -> bool | nil

���ߤ�ü�����������ѹ����ޤ���

@param lines �ѹ���ιԿ�����ꤷ�ޤ���

@param cols �ѹ���Υ���������ꤷ�ޤ���

@return ���������ѹ��������������ϡ������֤��ޤ������Ԥ������ϵ����֤��ޤ���
        ��ǽ�򥵥ݡ��Ȥ��Ƥ��ʤ����� nil ���֤��ޤ���

--- scrl(num) -> bool
#@todo
Scrolls the current window Fixnum +num+ lines.
The current cursor position is not changed.

For positive +num+, it scrolls up.

For negative +num+, it scrolls down.

@param num ���������뤹��Կ�����ꤷ�ޤ���

--- setscrreg(top, bottom) -> bool
#@todo
Set a software scrolling region in a window.
+top+ and +bottom+ are lines numbers of the margin.

If this option and Curses.scrollok are enabled, an attempt to move off
the bottom margin line causes all lines in the scrolling region
to scroll one line in the direction of the first line.
Only the text of the window is scrolled.

@param top �������Υޡ�����Կ�����ꤷ�ޤ���

@param bottom �������Υޡ�����Կ�����ꤷ�ޤ���

--- start_color -> bool
#@todo
Initializes the color attributes, for terminals that support it.

This must be called, in order to use color attributes.
It is good practice to call it just after Curses.init_screen

--- ungetmouse(mevent) -> bool
#@todo
It pushes a KEY_MOUSE event onto the input queue, and associates with that
event the given state data and screen-relative character-cell coordinates.

The Curses.ungetmouse function behaves analogously to Curses.ungetch.

@param mevent ���ϥ��塼���᤹�ޥ������٥�Ȥ���ꤷ�ޤ���

#@since 1.9.2
--- ESCDELAY -> Integer

ESC �����Ϥ��˴��������(�ߥ���ñ��)��������ޤ���

@raise  NotImplementedError ���ݡ��Ȥ��Ƥ��ʤ��Ķ���ȯ�����ޤ���

--- ESCDELAY=(val)

ESC �����Ϥ��˴��������(�ߥ���ñ��)�� val �����ꤷ�ޤ���
���ꤷ���ͤ��֤��ޤ���

@param val ESC �����Ϥ��˴��������(�ߥ���ñ��)����ꤷ�ޤ���

@raise  NotImplementedError ���ݡ��Ȥ��Ƥ��ʤ��Ķ���ȯ�����ޤ���

--- TABSIZE -> Integer

��������������ޤ���

@raise  NotImplementedError ���ݡ��Ȥ��Ƥ��ʤ��Ķ���ȯ�����ޤ���

--- TABSIZE=(val)

�������� val �����ꤷ�ޤ������ꤷ���ͤ��֤��ޤ���

@param val ����������ꤷ�ޤ���

@raise  NotImplementedError ���ݡ��Ȥ��Ƥ��ʤ��Ķ���ȯ�����ޤ���

--- use_default_colors -> nil

���ʿ����طʿ���ü���Υǥե������ (-1) �����ꤷ�ޤ���

@raise  NotImplementedError ���ݡ��Ȥ��Ƥ��ʤ��Ķ���ȯ�����ޤ���

@see [[man:default_colors(3X)]]

#@end

#@include(curses/Curses__Key)
#@include(curses/Curses__MouseEvent)
#@include(curses/Curses__Window)

#@end