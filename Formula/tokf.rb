class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.6/tokf-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "6737c0a154c3b1ab18ad4061204cf988e7a00884edf4c0b5170366417c516422"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.6/tokf-v0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "10130d1dbc40f84fa3d5a16ead06881fc0d774bcc6447087c9ffb88aea04f977"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.6/tokf-v0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0500f0596393ff37e4b3230ccd33efd42455b967ce5f639cf51acdbeaefc607c"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
