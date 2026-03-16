class OpenPrs < Formula
  desc "TUI + CLI dashboard for all open PRs across a GitHub org"
  homepage "https://github.com/logfoxai/open-prs"
  url "https://github.com/logfoxai/open-prs/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "195bf7fa2df685c390035645026ad39a55559a891bee9fe506a3a7831d1d56f8"
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
