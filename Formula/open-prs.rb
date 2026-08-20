class OpenPrs < Formula
  desc "TUI + CLI dashboard for all open PRs across a GitHub org"
  homepage "https://github.com/logfoxai/open-prs"
  url "https://github.com/logfoxai/open-prs/archive/refs/tags/v0.10.3.tar.gz"
  sha256 "606ec84bbdb6d0bb7b0ccaa0411cba3a0f18d7e48145bbedca088fc4c4b84eaa"
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
