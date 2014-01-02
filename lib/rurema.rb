class Rurema
  STATUS =
    { :complete => 200, :still => 202, :not_found => 404 }

  class << self

    def init(version)
      new(version).init
    end

    def update
      new(version).update
    end

    def search(version, query = "", num = nil)
      new(version, query, num).send(:search)
    end

  end

  def initialize(version, query = "", num = nil)
    @version = version
    @query = query.sub(/@/, "#")
    @num = (num && (num.to_i > 0) ? num.to_i : num)
  end

  def init
    system %.svn co -rHEAD #{svn_url}/doctree/trunk #{doc_path}.
    system %.svn co -rHEAD #{svn_url}/bitclust/trunk #{bitclust_path}.
    system %.#{bitclust_bin} -d #{db_path} init version=#{version} encoding=utf-8.
    system %.#{bitclust_bin} -d #{db_path} update --stdlibtree=#{refm_src_path}.
  end

  def update
    system %.svn up #{doc_path}.
    system %.#{bitclust_bin} -d #{db_path} update --stdlibtree=#{refm_src_path}.
  end

private
  def search
    if params_valid? && (refes = search_reference) && refes.present?
      if refes.multiple?
        if @num
          set_query(refes[@num])
          search
        else
          [STATUS[:still], refes.with_index_value]
        end
      else
        [STATUS[:complete], refes.value]
      end
    else
      [STATUS[:not_found], no_such_class_or_number]
    end
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

  def no_such_class_or_number
    "no such class or number: #{@query || @q_buffer} #{@num}"
  end

  def svn_url
    "http://jp.rubyist.net/svn/rurema"
  end

  def rurema_path
    File.expand_path(File.join(File.dirname(__FILE__) , 'rurema'))
  end

  def version
    @version
  end

  def doc_path
    File.join(rurema_path, 'doctree')
  end

  def bitclust_path
    File.join(rurema_path, 'bitclust')
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

  def refm_src_path
    File.join(doc_path, 'refm', 'api', 'src')
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
