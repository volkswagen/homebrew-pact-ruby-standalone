class PactRubyStandalone < Formula
  desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone/"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.67.0/pact-1.67.0-osx.tar.gz"
  version "1.67.0"
  sha256 "6a7e789477ec14a5dda61010e4460b1007c02719bdcfe25e789549b6e5497add"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]

    puts "# Usage `pact-mock-service help [COMMAND]`"
    puts "#"
    puts "# For other tools related to PACT in this bundle see https://github.com/pact-foundation/pact-ruby-standalone/releases/"
    puts "#"
  end

  test do
    system "#{bin}/pact-mock-service", "help"
  end

end
