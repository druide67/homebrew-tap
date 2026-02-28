class Asiai < Formula
  include Language::Python::Virtualenv

  desc "Multi-engine LLM benchmark & monitoring CLI for Apple Silicon"
  homepage "https://github.com/druide67/asiai"
  url "https://github.com/druide67/asiai/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3c7e4477784d8d78cc9ef971ab38add8354836dfca9cb4d103c3bf7888c2f765"
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
