class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.22/tokf-v0.2.22-aarch64-apple-darwin.tar.gz"
      sha256 "211b6175e143ccbc0aa34f4488e232a9ebafcb1bf4d58ae34e9b7042e762f66c"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.22/tokf-v0.2.22-x86_64-apple-darwin.tar.gz"
      sha256 "a5584300bdd6c9291b621a66e06436485d3be982154fd536db7f3e25c669f9bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.22/tokf-v0.2.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df542cede38da6838ca4ed7be679db9c2f2266d275fe53e09d63e10e346ae059"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
