class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.34/tokf-v0.2.34-aarch64-apple-darwin.tar.gz"
      sha256 "8c5ca173073305021469012fca947316c3886878647faf41cd23dac917f9c0fb"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.34/tokf-v0.2.34-x86_64-apple-darwin.tar.gz"
      sha256 "f8101e95c1fa5194b791d58df70fdc51840fa2f7c14044b3d0b7fe51163fe320"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.34/tokf-v0.2.34-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27eeaef4fb6c156629d493445c0b65463233f9aa338e5fef6660b5a0f4943b48"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
