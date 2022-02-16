# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  url "https://github.com/zhangshyue/regex-library/archive/refs/tags/v1.0.13.tar.gz"
  sha256 "0a8981bcf7ab49d0be375fdf9f25bb60056c097c64a4d21dab02815facded275"
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