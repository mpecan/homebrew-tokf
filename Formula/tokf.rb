class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.35/tokf-v0.2.35-aarch64-apple-darwin.tar.gz"
      sha256 "2df024b21a12fd13cda4584a4ca824f9d621657d93f210a64921e84671bb21e7"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.35/tokf-v0.2.35-x86_64-apple-darwin.tar.gz"
      sha256 "7d8a39806b5a25d42f223a027d422c5949289344d60cee535f5987064aa92489"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.35/tokf-v0.2.35-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7af113c7eac0996506662bba959ce75f36224d27af1ed10c46b32d4117964380"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
