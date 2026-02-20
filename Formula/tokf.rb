class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.8/tokf-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "9fb6a7ab446a9dc542209d4fa2e90c4fe293c2fdcc6f3aa77de8ca9a5dc29053"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.8/tokf-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "468aeadb8636d0ac15637c4bd59c71f931067dad6a31224f3d58a13a51b78dc4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.8/tokf-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0795f78ad55a305517b359e39f6f70248549d3f896ba7d93a28b7a1dc94ec8db"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
