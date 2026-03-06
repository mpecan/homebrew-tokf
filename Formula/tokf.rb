class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.26/tokf-v0.2.26-aarch64-apple-darwin.tar.gz"
      sha256 "6364eacd3b2792125dc999eae40175475ed8db0f52881d16501dbdd2b3f6c3c4"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.26/tokf-v0.2.26-x86_64-apple-darwin.tar.gz"
      sha256 "0d55f3401583eab5b1fda9fce65a268dbf04e67e77c5087dc3cd49302d5a0268"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.26/tokf-v0.2.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e295db3dd652848207724613ee0518125a7336902ae5e387d81516a2e2d9452e"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
