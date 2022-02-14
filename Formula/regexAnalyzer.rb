# typed: false
# frozen_string_literal: true

class RegexAnalyzer < Formula
  desc "A Regex Analyzer"
  homepage "https://github.com/ase-regex-comps/regex-library"
  url "https://github.com/ase-regex-comps/regex-library/blob/homebrew/archive/regex-library-1.0.0.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "25420f532eb0ef4e4219defe36f4e6c1d02ca306f4ac4ad4050c5577f79af014"
  license "MIT"

  def install
    libexec.install "regexAnalyzer"
  end

  test do
    assert_match "regexAnalyzer version 1.0.0", shell_output("#{bin}/regexAnalyzer -v", 2)
  end
end