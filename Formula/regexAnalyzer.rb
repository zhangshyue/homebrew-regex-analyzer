# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  url "https://github.com/zhangshyue/regex-library/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "98c3ca56f0426de8284a6d1e1d0889c28db73a5b99892a7dec89b12bbeb748bf"
  license "MIT"

  depends_on "protobuf"
  depends_on "python@3.8"

  def install
    # bin.install "Makefile"
    # bin.install "regex-analyzer"
    # bin.install "main.py"   
    # bin.install "root_pb2.py"   
    # libexec.install Dir["build"]
    # libexec.install Dir["extraction"]    
    # libexec.install Dir["generalizability"]    
    # libexec.install Dir["output"]    
    # libexec.install Dir["parser"]
    # libexec.install Dir["protobuf"]
    # libexec.install Dir["security"]
    # libexec.install Dir["understandability"]
    system "make install"
    libexec.install "regex-analyzer" and libexec.install Dir["*"] and bin.write_exec_script (libexec/"regex-analyzer")
    # bin.install_symlink "#{libexec}/bin/regex-library"
    # bin.write_exec_script (libexec/"regex-analyzer")
  end

  test do
    assert_match "regexanalyzer version 1.0.0", shell_output("#{bin}/regexanalyzer -v", 2)
  end
end