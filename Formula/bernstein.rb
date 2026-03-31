class Bernstein < Formula
  include Language::Python::Virtualenv

  desc "Declarative agent orchestration for engineering teams"
  homepage "https://github.com/chernistry/bernstein"
  url "https://files.pythonhosted.org/packages/source/b/bernstein/bernstein-1.4.1.tar.gz"
  sha256 "0c680e4a139dd06f213da7333e99a4294e172b380a6b23163f2e9035b912da81"
  license "Apache-2.0"
  head "https://github.com/chernistry/bernstein.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bernstein --version")
  end
end
