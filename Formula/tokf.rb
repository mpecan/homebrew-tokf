class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.33/tokf-v0.2.33-aarch64-apple-darwin.tar.gz"
      sha256 "3a6951452cac22185e25c401758098ade7d8298d2e8cbed40949c1c7bd329739"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.33/tokf-v0.2.33-x86_64-apple-darwin.tar.gz"
      sha256 "9d5b0744c10498f3977442f1e87bf5576b8b6b1642192a3149309fbecbc3d768"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.33/tokf-v0.2.33-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e59a97601707d4af96a9b76b0364373fa49c03e0d4bc72ecccca959067b2b58e"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
