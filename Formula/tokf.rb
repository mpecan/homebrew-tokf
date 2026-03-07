class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.28/tokf-v0.2.28-aarch64-apple-darwin.tar.gz"
      sha256 "e5dc00b5136589c6aaeaa39c2e6093a26a7e2e46c86712c0c54b9d783d834d23"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.28/tokf-v0.2.28-x86_64-apple-darwin.tar.gz"
      sha256 "3639a21cce35ae6ae6a55c1adfcd691eacc7a3970086c0b435bdf80471e90ed4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.28/tokf-v0.2.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7109a4380b276b30cfbfd23d0a4bffbab9392c99724511c37f45af25a09aa11"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
