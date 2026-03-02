class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "6e285a4406d5f1920596bd938cde86ddb12f5a8438b70ed1b937aa97a141a2f5"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-x86_64-apple-darwin.tar.gz"
      sha256 "c21b7b948d3b9f49d5b7b035f0938e435a2f7204ad7884bbbbcfd73561fde55b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12b66be3ae1a4b9e55c4ae5c0c1ce4309a3f1b050dd91e66ea41f47c17a066c1"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
