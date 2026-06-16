class OpenPrs < Formula
  desc "TUI + CLI dashboard for all open PRs across a GitHub org"
  homepage "https://github.com/logfoxai/open-prs"
  url "https://github.com/logfoxai/open-prs/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "bcb25855edc0b210b74501143c03814ab67e1775e1618c267d1005a1276c253f"
  license "MIT"

  depends_on "python@3.11"
  depends_on "gh"

  def install
    inreplace "open-prs", /^__version__ = "dev"/, "__version__ = \"#{version}\""
    bin.install "open-prs"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/open-prs --help 2>&1", 0)
    assert_match version.to_s, shell_output("#{bin}/open-prs --version")
  end
end
