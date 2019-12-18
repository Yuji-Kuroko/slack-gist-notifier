require 'fileutils'
require 'yaml'

# idだけを保持する
class GistManager
  def self.load    
    FileUtils.mkdir_p(store_path.dirname.to_s)

    if store_path.exist?
      YAML.load(store_path.binread)
    else
      []
    end
  end

  def self.save(gist_ids)
    FileUtils.mkdir_p(store_path.dirname.to_s)
    store_path.binwrite(gist_ids.to_yaml)
  end

  def self.store_path
    store_path = App.root / 'data/gist_ids.yml'
  end
end
