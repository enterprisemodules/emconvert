class Converter

  def self.convert(options)
    @from = options[:from]
    @to   = options[:to]
  end

  def initialize(content)
    @content      = content
  end

  def convert
    change from:'orawls::bsu', to:'ora_install::bsu'
    change from:'oradb::autostartdatabase', to:'ora_install::autostartdatabase'
    change from:'oradb::client', to:'ora_install::client'
    change from:'oradb::database', to:'ora_install::database'
    change from:'oradb::database_pluggable', to:'ora_install::database_pluggable'
    change from:'oradb::dbactions', to:'ora_install::dbactions'
    change from:'oradb::goldengate', to:'ora_install::goldengate'
    change from:'oradb::installdb', to:'ora_install::installdb'
    change from:'oradb::installasm', to:'ora_install::installasm'
    change from:'oradb::installem', to:'ora_install::installem'
    change from:'oradb::installem_agent', to:'ora_install::installem_agent'
    change from:'oradb::listener', to:'ora_install::listener'
    change from:'oradb::net', to:'ora_install::net'
    change from:'oradb::opatch', to:'ora_install::opatch'
    change from:'oradb::opatchupgrade', to:'ora_install::opatchupgrade'
    change from:'oradb::prepareautostart', to:'ora_install::prepareautostart'
    change from:'oradb::rcu', to:'ora_install::rcu'
    change from:'oradb::tnsnames', to:'ora_install::tnsnames'
    change from:'oradb::utils::dborainst', to:'ora_install::utils::dborainst'
    change from:'orwls::resourceadapter', to:'wls_config::resourceadapter'
    change from:'orawls::bsu', to:'wls_install::bsu'
    change from:'orawls::control', to:'wls_install::control'
    change from:'orawls::copydomain', to:'wls_install::copydomain'
    change from:'orawls::domain ', to:'wls_install::domain '
    change from:'orawls::fmw', to:'wls_install::fmw'
    change from:'orawls::fmwlogdir', to:'wls_install::fmwlogdir'
    change from:'orawls::nodemanager ', to:'wls_install::nodemanager '
    change from:'orawls::opatch', to:'wls_install::opatch'
    change from:'orawls::packdomain', to:'wls_install::packdomain'
    change from:'orawls::weblogic', to:'wls_install::software'
    change from:'orawls::storeuserconfig', to:'wls_install::storeuserconfig'
    change from:'orawls::urandomfix', to:'wls_install::urandomfix'
    change from:'orawls::utils::fmwcluster', to:'wls_install::utils::fmwcluster'
    change from:'orawls::utils::fmwclusterjrf', to:'wls_install::utils::fmwclusterjrf '
    change from:'orawls::utils::forms11gpatch', to:'wls_install::utils::forms11gpatch'
    change from:'orawls::utils::oimconfig', to:'wls_install::utils::oimconfig'
    change from:'orawls::utils::orainst', to:'wls_install::utils::orainst'
    change from:'orawls::utils::rcu', to:'wls_install::utils::rcu'
    change from:'orawls::utils::webtier', to:'wls_install::utils::webtier'
    change from:'wls_install::support::files', to:'wls_install::support::files'
    change from:'wls_install::support::nodemanagerautostart',to:'wls_install::support::nodemanagerautostart'
    change from:'wls_install::support::params', to:'wls_install::support::params'
    @content
  end

  def change(options)
    @from = options[:from]
    @to   = options[:to]
    @content = convert_reference
    @content = convert_calls
  end

  def convert_calls
    @content.gsub(@from, @to)
  end

  def convert_reference
    @content.gsub(from_reference, to_reference)
  end

  def upcase(string)
    string.split('::').map(&:capitalize).join('::')
  end

  def from_reference
    as_reference(@from)
  end

  def to_reference
    as_reference(@to)
  end

  def as_reference(ref)
    upcase(ref)
  end

end
