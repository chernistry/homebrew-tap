class Bernstein < Formula
  include Language::Python::Virtualenv

  desc "Deterministic orchestrator for CLI coding agents"
  homepage "https://github.com/sipyourdrink-ltd/bernstein"
  url "https://files.pythonhosted.org/packages/source/b/bernstein/bernstein-3.13.0.tar.gz"
  sha256 "da57afdb18d97740484adc39c2eeaab27874d6e3076ef18849265bc42633a35d"
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
