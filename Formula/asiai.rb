class Asiai < Formula
  include Language::Python::Virtualenv

  desc "Multi-engine LLM benchmark & monitoring CLI for Apple Silicon"
  homepage "https://github.com/druide67/asiai"
  url "https://github.com/druide67/asiai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "Apache-2.0"

  depends_on "python@3.13"
  depends_on :macos

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "asiai", shell_output("#{bin}/asiai --version")
  end
end
