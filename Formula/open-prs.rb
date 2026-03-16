class OpenPrs < Formula
  desc "TUI + CLI dashboard for all open PRs across a GitHub org"
  homepage "https://github.com/logfoxai/open-prs"
  url "https://github.com/logfoxai/open-prs/archive/refs/tags/v0.4.8.tar.gz"
  sha256 "23a852f1ae1de3ae914e4e8a0670d5db025ce2daecca55bdb848215265b595e6"
  license "MIT"

  depends_on "python@3.11"
  depends_on "gh"

  def install
    bin.install "open-prs"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/open-prs --help 2>&1", 0)
  end
end
