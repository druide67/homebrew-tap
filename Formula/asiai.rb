class Asiai < Formula
  include Language::Python::Virtualenv

  desc "Multi-engine LLM benchmark & monitoring CLI for Apple Silicon"
  homepage "https://github.com/druide67/asiai"
  url "https://files.pythonhosted.org/packages/source/a/asiai/asiai-1.1.1.tar.gz"
  sha256 "e92a977895b012034743de11ec7471143f2a77f5d7af95be6bfc4f28bcc13e8d"
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
