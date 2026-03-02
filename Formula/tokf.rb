class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.16/tokf-v0.2.16-aarch64-apple-darwin.tar.gz"
      sha256 "4bb6aca9fd47bfc26d729c40c1f4d6bdb0a07af89326214dd44ec2dfb79da7b5"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.16/tokf-v0.2.16-x86_64-apple-darwin.tar.gz"
      sha256 "a7f674d1f3c8af359757c898e2e22c4ae84642d94635754d1f5d98052a405801"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.16/tokf-v0.2.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7138222abe4c6486899e693013cfe0e7b2169131da752d108a08d165e8f0cb4a"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
