class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.2/tokf-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "8d65c6348836d592208b5f431b3f29df4fafb1625ba09387db090397368996e4"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.2/tokf-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "ab055a03942d7ce30fc08cc7b16ac6269d5fc957926e4b5dbb73afaa0e0c36d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.2/tokf-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79389f767f284e77e369936e237d325d5a764114a0640cf5c2feedcdb2d6d39f"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
