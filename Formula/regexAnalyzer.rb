# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  url "https://github.com/zhangshyue/regex-library/archive/refs/tags/v1.0.8.tar.gz"
  sha256 "db026d79fe7cd3bb974dcff968b3ee18bb4bad3a3e51e5c69f3f5bbb30e4e844"
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