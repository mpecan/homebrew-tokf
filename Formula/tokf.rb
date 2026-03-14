class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.36/tokf-v0.2.36-aarch64-apple-darwin.tar.gz"
      sha256 "5dcd4c211e4c774b672f6ff7c814a46724c68b3c155f77a984b0fdb110b5d33e"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.36/tokf-v0.2.36-x86_64-apple-darwin.tar.gz"
      sha256 "9aa9649cc746cfd91c1d1ca5008d59e3de1e67c490457efe4c307cd2d5ad426a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.36/tokf-v0.2.36-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "103aa259d3e78e1f3518ea7196bfd4865930c785d3f4210239759b7aade17d35"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
