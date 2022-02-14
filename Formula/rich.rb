class Rich < Formula
  desc "Rich is a Python library for rich text and beautiful formatting in the terminal."
  homepage "https://rich.readthedocs.io/en/latest/"
  url "https://github.com/Textualize/rich/archive/refs/tags/v11.2.0.tar.gz"
  sha256 "e78fef5862084ec595acf149710571096ab58c04062dbf939148e5eb43dea9da"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install Dir["*"]
  end