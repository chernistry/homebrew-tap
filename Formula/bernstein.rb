class Bernstein < Formula
  include Language::Python::Virtualenv

  desc "Declarative agent orchestration for engineering teams"
  homepage "https://github.com/sipyourdrink-ltd/bernstein"
  url "https://files.pythonhosted.org/packages/source/b/bernstein/bernstein-2.16.1.tar.gz"
  sha256 "4f53737561e1aac32767cc7b1c94559f06c3eb3a28349a25150b2f481efb6506"
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
