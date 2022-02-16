# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  url "https://github.com/zhangshyue/regex-library/archive/refs/tags/v1.0.11.tar.gz"
  sha256 "f56478b6cc3e241b9d6ceed6ba70caeb499343ab8388de2f7a7e107942926b39"
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