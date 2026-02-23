class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.3/tokf-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "c3b5d1727b5880d046376d8a1ac91a4269a6f07e1c41acbad79a9981ea42aa8a"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.3/tokf-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "a46b553cc63d19e5b201dd9b0ed76bae4771964442ea2b4cfe13722fc21703a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.3/tokf-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ba66530bb2da083a7b9338c4f4b216baf423483514a2f998dc57c7a275f7e8a"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
