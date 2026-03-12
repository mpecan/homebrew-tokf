class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.31/tokf-v0.2.31-aarch64-apple-darwin.tar.gz"
      sha256 "b78ef66ac5f072ca364d7a668e4e99b03935500fac763b1db264a98301c3c07f"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.31/tokf-v0.2.31-x86_64-apple-darwin.tar.gz"
      sha256 "be04c2ce1af9887a1b75b7e58d9627d0b70622786a4dba52ab6218974528373f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.31/tokf-v0.2.31-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c51f2f2553f6b5f15e7854108a9fe7c33a0172a7964d406044bf9f999721e2a1"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
