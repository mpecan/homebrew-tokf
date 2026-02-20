class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.0/tokf-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "dc9b44b89c82e75eb2a18d4480e58a7b22ba360f38eda59fc324f7a738a23262"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.0/tokf-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "de6c36da3f70bec9a620dad4c23431feb1e6021a41da12d71bfdcba756b191af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.0/tokf-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23bc0f0c62ee1fe29d3c0517cf6e4e5514e55b77ddc75b8a902a05803a181ec9"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
