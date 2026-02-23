class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.5/tokf-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "07475190ef26501cf5e2f0e6aac5beb5c7ce9152dbec5fec8d4f2a18b2595807"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.5/tokf-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "26699257e2dadf4975d3cb74e72a99bfd6d12af3517d57edb3de56f4198b40cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.5/tokf-v0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "224b08c21f8d08995a8228f8d7846211237b21fd3c6834ef9ad4edd3d9defd87"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
