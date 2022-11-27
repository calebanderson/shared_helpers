require "shared_helpers/version"
require "shared_helpers/railtie"

module SharedHelpers
  class << self
    def print_file_link(*file_and_line)
      file, line = sanitize_for_link(file_and_line)
      return if file.blank?

      print [file, line].compact.join(':')
      print ' | ', URI::Generic.build(scheme: 'file', path: URI::DEFAULT_PARSER.escape(file)) if file.include?(' ')
      print "\n"
      true
    end

    def sanitize_for_link(*file_and_line)
      file, line = file_and_line.flatten.map(&:to_s).map(&:dup) # Need to #dup since String#to_s returns self, not a dup
      return [] if file.blank?

      line&.remove!(/\D/) # Remove non-digits
      [linkable_fullpath(file), line.presence]
    end

    # Because Rubymine console links don't work if they contain spaces, this looks for existing
    # paths to the same file without spaces via symlinks or hidden symlinks.
    def linkable_fullpath(fullpath)
      Dir.glob(fullpath.gsub(File::SEPARATOR, '\\0{.,}').remove(' '), File::FNM_DOTMATCH).first || fullpath
    end
  end
end
