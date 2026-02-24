class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.8/tokf-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "568d5a73303b53bd54314484b5b78d08e7ee38d76e5ed8f7df88483ae4c9a985"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.8/tokf-v0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "989874d3d9f1728a0e895a0386c92b7ea2528155335d13ce6ee0505b7a746d62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.8/tokf-v0.2.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc00989a960f9fdc18b8757981d2f750ab475776b33fc66cb9d16d1d3980589f"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
