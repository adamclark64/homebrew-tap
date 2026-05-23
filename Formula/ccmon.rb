class Ccmon < Formula
  desc "List running Claude Code agents & subagents, open a viewer in a new terminal tab"
  homepage "https://github.com/adamclark64/ccmon"
  version "0.1.1"
  license "MIT"

  depends_on "jq"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/adamclark64/ccmon/releases/download/v0.1.1/ccmon-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "cf92a8fbb53b8e07b90f0eac17b4c908f1ea886aa2b437260632186a4ea92da4"
    end
    on_intel do
      url "https://github.com/adamclark64/ccmon/releases/download/v0.1.1/ccmon-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "15cb467258747d4319d2ade45735cb7f5646a1d09f10c8a72e7234580460c8eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamclark64/ccmon/releases/download/v0.1.1/ccmon-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd6e6be731bc48c7664418bf56288261666e5831ce5789bb0df1e4e36436eb2e"
    end
    on_intel do
      url "https://github.com/adamclark64/ccmon/releases/download/v0.1.1/ccmon-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7007383959eac78bc6ce8bd08389c5878a2f5c821e07aa097acedb052b24656"
    end
  end

  def install
    bin.install "ccmon"
  end

  test do
    system bin/"ccmon", "--list"
  end
end
