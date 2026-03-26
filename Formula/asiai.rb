class Asiai < Formula
  include Language::Python::Virtualenv

  desc "Multi-engine LLM benchmark & monitoring CLI for Apple Silicon"
  homepage "https://github.com/druide67/asiai"
  url "https://files.pythonhosted.org/packages/source/a/asiai/asiai-1.3.0.tar.gz"
  sha256 "8e4c8e0dae137201527e92b607d9f1b526e9fbd3943bdd1769621bce156c8f26"
  license "Apache-2.0"

  depends_on "python@3.13"
  depends_on :macos

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asiai --version")
  end
end
