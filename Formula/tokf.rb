class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.27/tokf-v0.2.27-aarch64-apple-darwin.tar.gz"
      sha256 "b05e27499d86cb92ab46c6f32146efb2576ed702ab8dff8c830c2bc9b9f940c8"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.27/tokf-v0.2.27-x86_64-apple-darwin.tar.gz"
      sha256 "4a515b6f60349be750d5afef54032f9f61b2da12e21db89d3c7808e10c4c8681"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.27/tokf-v0.2.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "284d1b3ec6802ffaafe2cf7fc44ebacba9e487a3b83e13d48e73e3f1ff782637"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
