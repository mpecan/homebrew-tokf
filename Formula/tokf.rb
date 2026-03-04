class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.25/tokf-v0.2.25-aarch64-apple-darwin.tar.gz"
      sha256 "f0dc997ca4004233a0e61837bd004f97a12dadb2e36b66b01caedca5f57fa5c9"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.25/tokf-v0.2.25-x86_64-apple-darwin.tar.gz"
      sha256 "f4f0a54e7fef051cb2def73d6d0cfc43a60b7d5395c1f9be4651f03e3861cb29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.25/tokf-v0.2.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa93f1a7845b8176a2ca4587fb3d90f2d00c8de44688be3c59f8bc7f858d81c4"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
