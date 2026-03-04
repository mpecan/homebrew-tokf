class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.24/tokf-v0.2.24-aarch64-apple-darwin.tar.gz"
      sha256 "e492c5d4d8436dabd2af1694bd000f7e3b9fe705b9dab1a6aa7fce7d7a8c5922"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.24/tokf-v0.2.24-x86_64-apple-darwin.tar.gz"
      sha256 "cf2fab94f731c0b6b88c699c7375e4352b12e918a704a156890767a45a44cae2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.24/tokf-v0.2.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5d98487f402ec3686a1d6a76557228dc1d45a5e73393c35b348fcf1b0215ab3"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
