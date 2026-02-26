class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.12/tokf-v0.2.12-aarch64-apple-darwin.tar.gz"
      sha256 "cbd3fc7588b5018a961ace0348e16141d3d7e8a72946732236cb30e4b74a7a59"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.12/tokf-v0.2.12-x86_64-apple-darwin.tar.gz"
      sha256 "a0e2ed547d0d7bbb404a90e5899df35a5efb2064d4db1e5bc27763d3fb58a873"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.12/tokf-v0.2.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b55671e7f21ef1948b2166402202b2ba66d07b40f94640f4e826f6061d4168f1"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
