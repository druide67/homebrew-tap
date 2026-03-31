class Asiai < Formula
  include Language::Python::Virtualenv

  desc "Multi-engine LLM benchmark & monitoring CLI for Apple Silicon"
  homepage "https://github.com/druide67/asiai"
  url "https://files.pythonhosted.org/packages/10/72/56aa58e9bb04989c07c0db6f42f456ca5ac12163c691aadc500881247876/asiai-1.5.0.tar.gz"
  sha256 "7f939670234e2edb79936861c90fcb71de4df08a922fe0f858b2f0a7eca6a4b2"
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
