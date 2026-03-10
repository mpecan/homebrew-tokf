class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.30/tokf-v0.2.30-aarch64-apple-darwin.tar.gz"
      sha256 "f1fcad9ddd7fedfb723d955533001bb24d561f465b4700474a24e741a240b6f1"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.30/tokf-v0.2.30-x86_64-apple-darwin.tar.gz"
      sha256 "3a4ea905e3e91399c551c934b8ea2f09e733de3335845ec6dbdabb8e6bdde24b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.30/tokf-v0.2.30-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4942ea34bebfe2dcbd28be98b94ff59dc9cbc137e0e8d3281426a61a3ed3964"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
