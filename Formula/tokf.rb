class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.7/tokf-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "ac6b7df6fc204474bc3fa4a30fe6f3f3b7d98eaa07171fad685e1cf8c0513671"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.7/tokf-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "2377799593c4952f5d5921d739adf3a147997fc3e4fb6488ef7941d5b2c05ba6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.7/tokf-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6231d8cd19ef38565b13a5ca79896e34ace5668c228e7837168b9787850f8a49"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
