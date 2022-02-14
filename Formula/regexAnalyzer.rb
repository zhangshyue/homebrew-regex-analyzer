# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  homepage "https://github.com/ase-regex-comps/regex-library"
  url "https://github.com/zhangshyue/regex-library/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3a0b2fdaf35d503eba9b121abbc5d5d44010366a007c4fab91aaa6608f74a319"
  license "MIT"

  depends_on "protobuf"

  def install
    # libexec.install Dir["*"]
    # bin.write_exec_script (libexec/"regex-analyzer")
    # bin.install "regex-analyzer"
    # bin.install "main.py"      
    # bin.install Dir["./extraction"]    
    # bin.install Dir["./generalizability"]    
    # bin.install Dir["./output"]    
    # bin.install Dir["./parser"]
    # bin.install Dir["./protobuf"]
    # bin.install Dir["./security"]
    # bin.install Dir["./understandability"]
    libexec.install Dir["*"]
    # bin.install_symlink "#{libexec}/bin/regex-library"
    bin.write_exec_script (libexec/"regex-analyzer")
  end

  test do
    assert_match "regexanalyzer version 1.0.0", shell_output("#{bin}/regexanalyzer -v", 2)
  end
end