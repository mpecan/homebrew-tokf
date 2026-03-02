class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.14/tokf-v0.2.14-aarch64-apple-darwin.tar.gz"
      sha256 "2e33ae2be331a1e6d078336ae59324d14b6c108bb3b082c386b5d1fdaa554ecd"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.14/tokf-v0.2.14-x86_64-apple-darwin.tar.gz"
      sha256 "2f081c9cda283dc53deb8059dcd502506061f2d9dca8799a8c2fa9a1c0301ec4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.14/tokf-v0.2.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78bb8d03ad5a2a56db334893934d480e429b368c9a28aca95bc25b9d7937c698"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
