class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.23/tokf-v0.2.23-aarch64-apple-darwin.tar.gz"
      sha256 "1af6e5bb1a2b587e425b16f818ec02b9292e4af03076c1546c3393c322824526"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.23/tokf-v0.2.23-x86_64-apple-darwin.tar.gz"
      sha256 "edd2ea9358b93539481f00d8aea4749cd0c0f0ea5eabd1b98a3767a71a25fd7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.23/tokf-v0.2.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6813737f2780b16c873f136a6d84dc88ebe1ec65f2357a0e30abb9e308fc8a8c"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
