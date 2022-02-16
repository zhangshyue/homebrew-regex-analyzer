# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  homepage "https://github.com/ase-regex-comps/regex-library"
  url "https://github.com/zhangshyue/regex-library/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "8526d99ba981c73ec0c777b424b06f658d8a59a49dc97ff43ad6e1a1791ca038"
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
    # system "make", "install"
    libexec.install Dir["*"]
    # bin.install_symlink "#{libexec}/bin/regex-library"
    bin.write_exec_script (libexec/"regex-analyzer")
  end

  test do
    assert_match "regexanalyzer version 1.0.0", shell_output("#{bin}/regexanalyzer -v", 2)
  end
end