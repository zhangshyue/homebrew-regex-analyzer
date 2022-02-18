# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  url "https://github.com/zhangshyue/regex-library/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "1042a18ec38003d66066690a5bb273debd68ac2d2da8a0c5f39a6aa20c73341c"
  license "MIT"

  depends_on "protobuf"
  depends_on "python@3.8"
  depends_on "rust"

  def install
    system "make install"
    libexec.install "regex-analyzer.sh" => "regex-analyzer" and libexec.install Dir["*"] and bin.write_exec_script (libexec/"regex-analyzer")
  end

  test do
    assert_match "regexanalyzer version 1.0.0", shell_output("#{bin}/regexanalyzer -v", 2)
  end
end