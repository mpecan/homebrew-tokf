class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.15/tokf-v0.2.15-aarch64-apple-darwin.tar.gz"
      sha256 "b9ecbf278c95608aa9dd06ebf419123a84f810e4ab3fc67592728637a9325345"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.15/tokf-v0.2.15-x86_64-apple-darwin.tar.gz"
      sha256 "99ff8daf360be19f2fc68ed39d90393fac130ce4120c1a02f5d5833bdcc5b900"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.15/tokf-v0.2.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a6a0772750974e5c9430c16c9f66315784be5fc70085a5964173e286b4d6cbe"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
