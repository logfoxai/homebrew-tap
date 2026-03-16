class OpenPrs < Formula
  desc "TUI + CLI dashboard for all open PRs across a GitHub org"
  homepage "https://github.com/logfoxai/open-prs"
  url "https://github.com/logfoxai/open-prs/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "2baa26f7682849d3a2bb81f0208a695412c942066cd27b8280a903190773a3a1"
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
