class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.21/tokf-v0.2.21-aarch64-apple-darwin.tar.gz"
      sha256 "0ce4616bbb56030128959b63bcb67c58740b654143422d803ebbe462e26dbfe8"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.21/tokf-v0.2.21-x86_64-apple-darwin.tar.gz"
      sha256 "8578e7b74bce87185912ce1b16ab49567587358540bf1560f4c15fb4c4272ad9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.21/tokf-v0.2.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "316ca03b51596210d91eaeada59c71fed98636364869fa01b1ed30108df1426a"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
