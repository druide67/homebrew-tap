class Asiai < Formula
  include Language::Python::Virtualenv

  desc "Multi-engine LLM benchmark & monitoring CLI for Apple Silicon"
  homepage "https://github.com/druide67/asiai"
  url "https://files.pythonhosted.org/packages/source/a/asiai/asiai-0.7.0.tar.gz"
  sha256 "5216f82ac7dd576b6cc3928f686ba976c10d7b9084e8e2e8c73136230bde5051"
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
