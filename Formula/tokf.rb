class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "86ac459f45993e113d9891c038188d40288bb4074c4e7fe2fa3c0cf39f2b76b8"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-x86_64-apple-darwin.tar.gz"
      sha256 "f1a93da3272c93bbbe4cdda6f2f54e7d2e68f588e8ea3bb14ddd892012eb9a32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.13/tokf-v0.2.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f5ccfeaab89ad941152229002bbbb369967d5933ed06b1dd1f998dc54492bb8"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
