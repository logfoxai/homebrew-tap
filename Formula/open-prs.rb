class OpenPrs < Formula
  desc "TUI + CLI dashboard for all open PRs across a GitHub org"
  homepage "https://github.com/logfoxai/open-prs"
  url "https://github.com/logfoxai/open-prs/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "c79fe9e3d8f4a8ca2395f7614ec4a202d91aadd8c1b81c654be0d392fa45152b"
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
