class Asm < Formula
  desc "TUI for browsing, previewing, and resuming Claude Code & Codex sessions"
  homepage "https://github.com/NamhaeSusan/ai-session-manager"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-aarch64-apple-darwin.tar.gz"
      sha256 "096c2c79eeb3a0b1f5c97f04e1f047ff387fe75b413b6cca7b79b4f904148291"
    end

    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-apple-darwin.tar.gz"
      sha256 "818043ba8d14945f4a84dca42f3c0a4382368fca35d266f4538330664b73fbe2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ad7fb6da16cf725ebcc3abb9ebf60e6b92b399e8a24007ba76a5560131d3918"
    end
  end

  def install
    bin.install "asm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asm --version")
  end
end
