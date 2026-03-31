class Asiai < Formula
  include Language::Python::Virtualenv

  desc "Multi-engine LLM benchmark & monitoring CLI for Apple Silicon"
  homepage "https://github.com/druide67/asiai"
  url "https://files.pythonhosted.org/packages/e6/d2/45f803578bcc2ba2d4ca6312041a9d0c3090732746f8589562db2a68c44a/asiai-1.4.1.tar.gz"
  sha256 "956d67fcbda18531f937bfec644aa678112ff6492dbea095798e8546314e8ea5"
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
