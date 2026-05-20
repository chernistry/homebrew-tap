class Bernstein < Formula
  include Language::Python::Virtualenv

  desc "Declarative agent orchestration for engineering teams"
  homepage "https://github.com/sipyourdrink-ltd/bernstein"
  url "https://files.pythonhosted.org/packages/source/b/bernstein/bernstein-2.4.0.tar.gz"
  sha256 ""
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
