class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.17/tokf-v0.2.17-aarch64-apple-darwin.tar.gz"
      sha256 "375a7b48a297d031d05fc57abfa3076fff468720fece7367fbfa558757791cae"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.17/tokf-v0.2.17-x86_64-apple-darwin.tar.gz"
      sha256 "6bcc07d02abffb6f65355937548811e918ffec8c93088a256159895a6afc1978"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.17/tokf-v0.2.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c859cc42eb78a556cddc8f356a34dd37be2f6f7a544fa2041fc50a037fa7b550"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
