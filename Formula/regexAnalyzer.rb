# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  homepage "https://github.com/ase-regex-comps/regex-library"
  url "https://github.com/zhangshyue/regex-library/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "cf5cff2097da2001d616f9be984c5e57683f07d1c8b740563ad0fe3a605d2b5d"
  license "MIT"

  depends_on "protobuf"
  depends_on "python@3.8"
  depends_on "Textualize/rich/rich"

  def install
    # libexec.install Dir["*"]
    # bin.write_exec_script (libexec/"regex-analyzer")
    bin.install "regex-analyzer"
    bin.install "main.py"   
    bin.install "root_pb2.py"   
    bin.install Dir["./build"]
    bin.install Dir["./extraction"]    
    bin.install Dir["./generalizability"]    
    bin.install Dir["./output"]    
    bin.install Dir["./parser"]
    bin.install Dir["./protobuf"]
    bin.install Dir["./security"]
    bin.install Dir["./understandability"]
    # libexec.install Dir["*"]
    # bin.install_symlink "#{libexec}/bin/regex-library"
    # bin.write_exec_script (libexec/"regex-analyzer")
  end

  test do
    assert_match "regexanalyzer version 1.0.0", shell_output("#{bin}/regexanalyzer -v", 2)
  end
end