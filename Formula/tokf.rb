class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "c9bcc2248c8cfb9bed87f15dedefa5b2b6a69f2a19b7c3f4225747303b092c74"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-x86_64-apple-darwin.tar.gz"
      sha256 "8914707be21ebf37df1c79808d52b8176872408ebd971a9c218799bb67549bb8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b93f2bff43d9a9452d66b4cfefac44329473d6c0e1b40bc72f80ecf26edc3cc0"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
