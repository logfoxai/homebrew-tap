class OpenPrs < Formula
  desc "TUI + CLI dashboard for all open PRs across a GitHub org"
  homepage "https://github.com/logfoxai/open-prs"
  url "https://github.com/logfoxai/open-prs/archive/refs/tags/v0.4.5.tar.gz"
  sha256 "03a536de859813d0e91bf7f70f1044bd88c4bcf1835bac23092c0560c5d8f38f"
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
