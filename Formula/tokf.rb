class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.1/tokf-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "9966ddb531d2b21bc3eb82f485f3ba0608593957199bd77883ddfe111ecd25f8"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.1/tokf-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "201cf7b9e8ba706206357279c087b39db2fe37f5a03ff1be607a15a02a7e9d08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.1/tokf-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3fe0e02d715443a858dec3f84922d925cbb449f9065797e5acf5d31f1f48b7b4"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
