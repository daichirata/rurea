require rake
require rake/tasklib

��˥åȥƥ��Ȥ�¹Ԥ��뤿��Υ��������������饤�֥��Ǥ���

= class Rake::TestTask < Rake::TaskLib

��˥åȥƥ��Ȥ�¹Ԥ��뤿��Υ�������������륯�饹�Ǥ���

��:
  Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/test*.rb']
    t.verbose = true
  end

�ʲ��� test �������åȤλ�����򼨤��ޤ���

��:
   rake test                           # run tests normally
   rake test TEST=just_one_file.rb     # run just one test file.
   rake test TESTOPTS="-v"             # run in verbose mode
   rake test TESTOPTS="--runner=fox"   # use the fox test runner

== Public Instance Methods

--- define -> self

��������������ޤ���

--- libs -> Array

�ƥ��ȼ¹����� [[m:$LOAD_PATH]] ���ɲä���ѥ����֤��ޤ���

--- libs=(libs)

�ƥ��ȼ¹����� [[m:$LOAD_PATH]] ���ɲä���ѥ��򥻥åȤ��ޤ���

@param libs [[m:$LOAD_PATH]] ���ɲä���ѥ�������ǻ��ꤷ�ޤ���

--- loader -> Symbol

�ƥ��Ȥ�����ɤ�����ˡ���֤��ޤ���

--- loader=(style)

�ƥ��Ȥ�����ɤ�����ˡ����ꤷ�ޤ���

����Ǥ�����ˡ�ϰʲ����̤�Ǥ���

: rake
  Rake ���󶡤�����ˡ�ǥƥ��Ȥ�����ɤ��ޤ����ǥե���ȤϤ���Ǥ���
: testrb
  Ruby ���󶡤��� testrb ���ޥ�ɤ��Ѥ��ƥƥ��Ȥ�����ɤ��ޤ���
: direct
  ���ޥ�ɥ饤��ǻ��ꤷ���ե����������ɤ��ޤ���

@param style ����ܥ�ǥƥ��Ȥ�����ɤ�����ˡ����ꤷ�ޤ���

--- name -> String

�ƥ��ȥ�������̾�����֤��ޤ����ǥե���Ȥ� "test" �Ǥ���

--- name=(str)

�ƥ��ȥ�������̾���򥻥åȤ��ޤ���

@param str �ƥ��ȥ�������̾������ꤷ�ޤ���

--- options -> String

�ƥ��ȥ������Ȥ��Ϥ��ѥ�᡼�����֤��ޤ���

���ޥ�ɥ饤��� "TESTOPTS=options" �����ꤵ���ȡ������ͤ��񤭤��ޤ���
�ǥե���Ȥϲ�����ꤵ��Ƥ��ޤ���

--- options=(option_str)

�ƥ��ȥ������Ȥ��Ϥ��ѥ�᡼���򥻥åȤ��ޤ���

@param option_str �ƥ��ȥ������Ȥ��Ϥ��ѥ�᡼������ꤷ�ޤ���

--- pattern -> String

�ƥ��ȥե�����˥ޥå����� glob �ѥ�������֤��ޤ���

�ǥե���Ȥ� 'test/test*.rb' �Ǥ���

--- pattern=(pattern)

�ƥ��ȥե�����˥ޥå����� glob �ѥ��������ꤷ�ޤ���

#@# --- rake_loader
#@# nodoc

--- ruby_opts -> Array

�ƥ��ȼ¹Ի��� Ruby ���ޥ�ɤ��Ϥ���륪�ץ������֤��ޤ���

--- ruby_opts=(options)

�ƥ��ȼ¹Ի��� Ruby ���ޥ�ɤ��Ϥ���륪�ץ����򥻥åȤ��ޤ���

@param options ����ǥ��ץ�������ꤷ�ޤ���

--- test_files=(list)

����Ū�˥ƥ����оݤΥե��������ꤷ�ޤ���

[[m:Rake::TestTask#pattern=]], [[m:Rake::TestTask#test_files=]] ��
ξ���ǥƥ����оݤ���ꤷ����硢ξ�Ԥϰ�ĤˤޤȤ�ƻ��Ѥ���ޤ���

@param list ���� [[c:Rake::FileList]] �Υ��󥹥��󥹤���ꤷ�ޤ���

--- verbose -> bool

�����ͤ����Ǥ����硢�ƥ��Ȥμ¹Է�̤�ܺ٤�ɽ�����ޤ���

--- verbose=(flag)

�ƥ��Ȥμ¹Է�̤�ܺ٤�ɽ�����뤫�ɤ����򥻥åȤ��ޤ���

@param flag ���ޤ��ϵ�����ꤷ�ޤ���

--- warning -> bool

�����ͤ����Ǥ����硢�ƥ��ȼ¹Ի��� ruby -w ��¹Ԥ����Τ�Ʊ�����̤������ޤ���

--- warning=(flag)

�ƥ��ȼ¹Ի��˷ٹ��ɽ�������뤫�ɤ����򥻥åȤ��ޤ���

@param flag ���ޤ��ϵ�����ꤷ�ޤ���

== Singleton Methods

--- new(name = :test){|t| ... } -> Rake::TestTask

���Ȥ��������ޤ���

�֥��å���Ϳ����줿���ϡ����Ȥ�֥��å��ѥ�᡼���Ȥ���Ϳ����줿
�֥��å���ɾ�����ޤ���

@param name �������å�̾����ꤷ�ޤ���