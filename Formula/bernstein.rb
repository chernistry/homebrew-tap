class Bernstein < Formula
  include Language::Python::Virtualenv

  desc "The open-source governance layer for AI agents"
  homepage "https://github.com/sipyourdrink-ltd/bernstein"
  # URL and sha256 are auto-updated by CI on each release
  url "https://files.pythonhosted.org/packages/source/b/bernstein/bernstein-3.23.0.tar.gz"
  sha256 "5e00c072f9e0d539555b9a8b97b5930ffdce39479ce99bf34c797b1b9a0f8019"
  license "Apache-2.0"
  head "https://github.com/sipyourdrink-ltd/bernstein.git", branch: "main"

  depends_on "python@3.12"

  # Install strategy: create the venv, then let pip resolve the runtime
  # dependencies at install time (--prefer-binary, so wheels are used). They are
  # not pinned as resources, so transitive versions can differ between installs.
  # bernstein itself is pinned by the sha256 above.
  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/python", "-m", "pip", "install", "--prefer-binary", buildpath
    bin.install_symlink libexec/"bin/bernstein"
  end

  test do
    assert_match "bernstein", shell_output("#{bin}/bernstein --version")
  end
end
