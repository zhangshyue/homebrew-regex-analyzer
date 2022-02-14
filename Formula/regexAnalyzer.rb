# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  homepage "https://github.com/ase-regex-comps/regex-library"
  url "https://assets.ctfassets.net/4kcufowvm8o9/5tbA5pkaSCp0yOl3RwPiTD/09440a90c172c20218bc6c9aa6e60362/regex-library-1.0.0.tar.gz"
  sha256 "25420f532eb0ef4e4219defe36f4e6c1d02ca306f4ac4ad4050c5577f79af014"
  license "MIT"

  bottle :unneeded

  depends_on "protobuf"

  def install
    # libexec.install Dir["*"]
    # bin.write_exec_script (libexec/"regex-analyzer")
    bin.install "regex-analyzer"
    bin.install "main.py"      
    bin.install Dir["./extraction"]    
    bin.install Dir["./generalizability"]    
    bin.install Dir["./output"]    
    bin.install Dir["./parser"]
    bin.install Dir["./protobuf"]
    bin.install Dir["./security"]
    bin.install Dir["./understandability"]
    # bin.write_exec_script libexec/"regex-analyzer"
  end

  test do
    assert_match "regexanalyzer version 1.0.0", shell_output("#{bin}/regexanalyzer -v", 2)
  end
end