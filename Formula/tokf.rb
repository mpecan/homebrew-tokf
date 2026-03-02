class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "e19c05f4b6507894e64b76b58fed768e2e1c95406392b036ad439c75029a7b46"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-x86_64-apple-darwin.tar.gz"
      sha256 "bebb270ce95cd3b177fa3422f201d5d757790cdd5383b29c5a8454173ba467e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "944ed0c9b0f3c19ca939ac07efc248b8478a643f44a8dce4ade2ba1ce0d15d2f"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
