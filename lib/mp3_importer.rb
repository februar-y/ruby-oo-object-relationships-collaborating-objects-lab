class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        mp3_list = Dir.entries('./spec/fixtures/mp3s').select{|file| file.include?('mp3')}
        mp3_list
    end

    def import
        files.map {|mp3| Song.new_by_filename(mp3)}
    end
end