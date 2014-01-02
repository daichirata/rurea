class Rurema

  RUBY_VERSIONS = [
    '1.9.3',
    '2.0.0',
    '2.1.0'
  ]

  STATUS = {
    :complete  => 200,
    :still     => 202,
    :not_found => 404
  }

  SVN_URL = "http://jp.rubyist.net/svn/rurema"

  def self.search(version, query = "", num = nil)
    new(version, query, num).send(:search)
  end

  def initialize(version, query = "", num = nil)
    @version = version
    @query = query.sub(/@/, "#")
    @num = (num && (num.to_i > 0) ? num.to_i : num)
  end

  attr_reader :version

  def init
    unless doc_path_exists?
      system %.svn co -rHEAD #{SVN_URL}/doctree/trunk #{doc_path}.
    end

    unless bitclust_path_exists?
      system %.svn co -rHEAD #{SVN_URL}/bitclust/trunk #{bitclust_path}.
    end

    unless db_path_exists?
      system %.#{bitclust_bin} -d #{db_path} init version=#{version} encoding=utf-8.
      system %.#{bitclust_bin} -d #{db_path} update --stdlibtree=#{refm_src_path}.
    end
  end

  def update
    unless doc_path_exists?
      raise "#{doc_path} not exists."
    end

    unless db_path_exists?
      raise "#{db_path} not exists."
    end

    system %.svn up #{doc_path}.
    system %.#{bitclust_bin} -d #{db_path} update --stdlibtree=#{refm_src_path}.
  end

  private

  def search
    unless db_path_exists?
      return [STATUS[:not_found], ruby_version_not_found]
    end

    unless params_valid? && (refes = search_reference) && refes.present?
      return [STATUS[:not_found], no_such_class_or_number]
    end

    unless refes.multiple?
      return [STATUS[:complete], refes.value]
    end

    unless @num
      return [STATUS[:still], refes.with_index_value]
    end

    set_query(refes[@num])
    search
  end

  def search_reference
    Refe.exec @query, refe_bin, db_path
  end

  def params_valid?
    query_valid? && num_valid?
  end

  def query_valid?
    @query && @query != ""
  end

  def num_valid?
    !@num || @num.to_i > 0
  end

  def set_query(query)
    @q_buffer = @query
    @query = query
  end

  def rurema_path
    File.expand_path(File.join(File.dirname(__FILE__) , 'rurema'))
  end

  def doc_path
    File.join(rurema_path, 'doctree')
  end

  def doc_path_exists?
    File.exists?(doc_path)
  end

  def bitclust_path
    File.join(rurema_path, 'bitclust')
  end

  def bitclust_path_exists?
    File.exists?(bitclust_path)
  end

  def bitclust_bin
    File.join(bitclust_path, 'bin', 'bitclust')
  end

  def refe_bin
    File.join(bitclust_path, 'bin', 'refe')
  end

  def db_path
    File.join(rurema_path, 'db', version)
  end

  def db_path_exists?
    File.exists?(db_path)
  end

  def refm_src_path
    File.join(doc_path, 'refm', 'api', 'src')
  end

  def no_such_class_or_number
    "no such class or number: #{@query || @q_buffer} #{@num}"
  end

  def ruby_version_not_found
    "version #{version} does not exist."
  end

  class Refe
    require 'shellwords'

    def self.exec(_query, refe_bin, db_path )
      query = Shellwords.escape(_query)
      value = `#{refe_bin} #{query} -d #{db_path}`
      new(query, value)
    end

    def initialize(query, value)
      @_query = query
      @value = value
    end
    attr_reader :value

    def container
      @container ||= @value.lines.to_a
    end
    private :container

    def multiple?
      container.first(2).join =~ /#{@_query}.*#{@_query}/m && container[1] !~ /^--- /
    end

    def present?
      !@value.nil? && @value != ""
    end

    def separation
      container.join.split(" ")
    end

    def [](num)
      separation[num.pred]
    end

    def with_index_value
      separation.map.with_index(1) do |line, index|
        "(#{index})#{line}"
      end
    end
  end
end
