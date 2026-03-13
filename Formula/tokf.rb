class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.32/tokf-v0.2.32-aarch64-apple-darwin.tar.gz"
      sha256 "6ff40deaa307a1a85cf8079dbf30c0a3776f01ed2e19e4857292c72a1e990154"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.32/tokf-v0.2.32-x86_64-apple-darwin.tar.gz"
      sha256 "85100731e0cbe6a9d0aeb45d3da1e8123eb51cbe53189113049fe509e8443a02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.32/tokf-v0.2.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e912c92ea8514288774ac318d0156fd64b57f01b4bec6fbb9f205faf4c6b6224"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
