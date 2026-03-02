class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.18/tokf-v0.2.18-aarch64-apple-darwin.tar.gz"
      sha256 "e40a2c76f5374ad2e5d7bbfb955259d159c231e153267ed993f842a4ee21e225"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.18/tokf-v0.2.18-x86_64-apple-darwin.tar.gz"
      sha256 "7cf28dd148b7ea09da8bd7a8f46fe006e481fca5f356b8cd8ecaab41c3aa333c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.18/tokf-v0.2.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dc61a1b994ab17f1751882560d04786a2b292703d4fdd53b51294412928a0d5"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
