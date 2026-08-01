class Bernstein < Formula
  include Language::Python::Virtualenv

  desc "Deterministic orchestrator for CLI coding agents"
  homepage "https://github.com/sipyourdrink-ltd/bernstein"
  url "https://files.pythonhosted.org/packages/source/b/bernstein/bernstein-3.12.0.tar.gz"
  sha256 "c445436a5ef299f9bc90bf7b7149d358cc0979c1dba84f9d32250851e8f9fa34"
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
