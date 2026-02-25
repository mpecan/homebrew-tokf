class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.10/tokf-v0.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "c87e11cbb34b586ea62678a679e23e1a628f90ad078ba14b0a41ef74caeca15c"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.10/tokf-v0.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "db2e6880f2cc528a47d845ce3fbffa0831c95a11d9814aff792663af4f4a191a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.10/tokf-v0.2.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21b0651ec9a051a2ff015eee39e029c0406fa5c4a789007ea55be5b9bf5c1ad3"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
