class Ccmon < Formula
  desc "List running Claude Code agents & subagents, open a viewer in a new terminal tab"
  homepage "https://github.com/adamclark64/ccmon"
  version "0.1.2"
  license "MIT"

  depends_on "jq"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/adamclark64/ccmon/releases/download/v0.1.2/ccmon-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "964129c335ba35640f4fb99d9e2a91720984c7e6e95669e9e051c77b94f10f45"
    end
    on_intel do
      url "https://github.com/adamclark64/ccmon/releases/download/v0.1.2/ccmon-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "99a69bb0b42fdb705a3e867e2d51b8b44096145b395d4d6876679879f61f2c62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamclark64/ccmon/releases/download/v0.1.2/ccmon-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cedd8dc0e81e05e703d63ac5c947096dc9fc33b16816a744d16f247575e7d65f"
    end
    on_intel do
      url "https://github.com/adamclark64/ccmon/releases/download/v0.1.2/ccmon-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7880f277980c842601aa4348519fb7ed2663a1a6b8e23d7e353aee7e0278d308"
    end
  end

  def install
    bin.install "ccmon"
  end

  test do
    system bin/"ccmon", "--list"
  end
end
