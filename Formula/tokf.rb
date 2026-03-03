class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.20/tokf-v0.2.20-aarch64-apple-darwin.tar.gz"
      sha256 "587fbd29db1a3fd760555212f3190df54857b96d21a55cf90f5c37160031a380"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.20/tokf-v0.2.20-x86_64-apple-darwin.tar.gz"
      sha256 "9da6fc2f96c7a97ab981b0a5b43b128a05e209c9f768d9be1fa64ff81749e5c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.20/tokf-v0.2.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be9ead3e2520473d25bf7caaa69ccef9e1b27881266156c047f1284b9da6e811"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
