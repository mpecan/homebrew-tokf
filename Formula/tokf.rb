class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.9/tokf-v0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "6fdc64d0e67e22b2a93f5446a23b114456491c7a40e4b823b4607afa612aa4bd"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.9/tokf-v0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "8145bf23d015f4f5d8632920e26fd9e7aa98bd924e97136da799d126461f5bd9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.9/tokf-v0.2.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ba5ce73f63f147bd989cf365a745d102110a2e5d860288a0f38b6019ce54d4d"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
