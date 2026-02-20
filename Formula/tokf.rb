class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.6/tokf-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "48f0940031303476aca39a1286a49f6f94df682f34075276607cd73c277f2ae5"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.6/tokf-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "c0bbce141d9694a9552c32e1bdde5673d23a518fa886afe9ec9d093d68df515c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.6/tokf-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "591964a5a0bf4dc957361589d5eccef0fe35a659533021d7a8827ebddb46aba1"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
