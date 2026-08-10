class Bernstein < Formula
  include Language::Python::Virtualenv

  desc "Deterministic orchestrator for CLI coding agents"
  homepage "https://github.com/sipyourdrink-ltd/bernstein"
  url "https://files.pythonhosted.org/packages/source/b/bernstein/bernstein-3.14.159.tar.gz"
  sha256 "bf2bf1b59b800f1bebae95c48e036843b648ad134147887cf8716abebcbaf709"
  license "Apache-2.0"
  head "https://github.com/sipyourdrink-ltd/bernstein.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "bernstein", shell_output("#{bin}/bernstein --version")
  end
end
