# typed: false
# frozen_string_literal: true

class Regexanalyzer < Formula
  desc "A Regex Analyzer"
  homepage "https://github.com/ase-regex-comps/regex-library"
  url "https://github.com/ase-regex-comps/regex-library/blob/homebrew/archive/regex-library-1.0.0.tar.gz"
  sha256 "25420f532eb0ef4e4219defe36f4e6c1d02ca306f4ac4ad4050c5577f79af014"
  license "MIT"

  def install
    libexec.install "regexanalyzer"
  end

  test do
    assert_match "regexanalyzer version 1.0.0", shell_output("#{bin}/regexanalyzer -v", 2)
  end
end