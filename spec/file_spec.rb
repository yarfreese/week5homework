$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem::File do

  context 'instance' do

    it 'File::first should return first line of file' do
      TestGem::File.first('./lib/test_gem.rb').should eq \
        %{$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)}
    end

    it 'MyFile::first should return first line of file' do
      TestGem::MyFile.first('./lib/test_gem.rb').should eq \
        %{$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)}
    end

    it 'MyFile::last should return last line of file' do
      TestGem::MyFile.last('./README.md').should eq \
        %{this is the last line of the README.md file}
    end

  end
    
end
